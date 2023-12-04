# docker 镜像使用说明

目前镜像位于 [docker hub](https://hub.docker.com/r/marcantoine153/texlive-full)

本镜像一共有两个版本：

* `base`：完全基于 [thomasWeise](https://github.com/thomasWeise/docker-texlive-full) 的 dockerfile 构建，原镜像最新更新时间为两年前，因此重新构建了一次
* `ssh`：在`base`镜像的基础上添加了 `ssh`、`python`、`git`

## 拉取镜像

执行以下命令：

```bash
# 拉取 ssh 镜像
docker pull marcantoine153/texlive-full:ssh
```

## 添加必要文件

1. 转到到本项目的的 `docker` 目录中：`cd docker`
2. 填写 [git user.sh](./git%20user.sh) 中 git 用户名和邮箱
3. 添加 sh 文件的可执行权限（Linux系统下需要）：`chmod u+x "./git user.sh"`
4. 根据需要可修改 [.env](./.env) 中的环境变量值
5. 添加 `volume` `.ssh` `workspace` 文件夹：

    ```bash
    mkdir volume cd volume
    mkdir -m 700 .ssh
    mkdir workspace
    cd .ssh
    ```

6. 生成ssh密钥: `ssh-keygen -t rsa -b 2096`，第一个选项填 `texlive`，后面选项直接回车
7. 密钥重命名并修改权限：

    ```bash
    mv texlive authorized_keys
    chmod 600 authorized_keys
    ```

## 运行容器

```bash
docker compose up -d
```
