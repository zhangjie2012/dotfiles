# config files

常用工具配置文件：Vim, tmux, eslint, bash, ghostty，除了 [emacs](https://github.com/zhangjie2012/emacs.d)。

## 文件说明

| 本仓库文件 | 目标位置 | 说明 |
| --- | --- | --- |
| `_golangci.yaml` | `~/.golangci.yaml` | golangci-lint 配置 |
| `_flake8` | `~/.flake8` | flake8 配置 |
| `_vimrc` | `~/.vimrc` | Vim 配置 |
| `_tmux.conf` | `~/.tmux.conf` | tmux 配置 |
| `_eslintrc.json` | `~/.eslintrc.json` | ESLint 配置 |
| `_bashrc` | `~/.bashrc` | bash 配置 |
| `Zenburn.itermcolors` 等 | 手动导入 | iTerm2 配色方案 |
| `wsl_proxy.sh` | 仓库内引用 | WSL HTTP(S) 代理脚本 |

## 添加软连接

```sh
cd ~
ln -s dotfiles/_golangci.yaml .golangci.yaml
ln -s dotfiles/_flake8 .flake8
ln -s dotfiles/_vimrc .vimrc
ln -s dotfiles/_tmux.conf .tmux.conf
ln -s dotfiles/_eslintrc.json .eslintrc.json
```

## Ghostty

[Ghostty](https://ghostty.org) 的配置默认读取 `~/.config/ghostty/config`。本仓库用与其他文件相同的方式管理它：真实内容存在仓库内，家目录下建软链指回来。

```sh
mkdir -p ~/.config/ghostty
cd ~
ln -s dotfiles/_ghostty_config .config/ghostty/config
```

修改仓库中的 `_ghostty_config` 后，在 Ghostty 内按 `Cmd+Shift+,` 即可热重载，无需重启终端。

## WSL 设置 HTTP(s) 代理

代理脚本 `wsl_proxy.sh` [^1]

在 `.zshrc` 中添加：

```sh
alias proxy_set="source /home/zhangjie/dotfiles/wsl_proxy.sh set"
alias proxy_unset="source /home/zhangjie/dotfiles/wsl_proxy.sh unset"
alias proxy_test="/home/zhangjie/dotfiles/wsl_proxy.sh test"
```

## zsh

```sh
apt install zsh
https_proxy="http://127.0.0.1:12333"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

`.zshrc` 配置

1. plugins 添加 fzf 和 autojump
2. 文件尾部添加

   ```sh
   export TERM=xterm-256color

   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad

   export NODE_OPTIONS="--max-old-space-size=8192"

   export FZF_DEFAULT_COMMAND="fd --type f --color=always --exclude .git --exclude Library --exclude node_modules --exclude .wax"
   export FZF_DEFAULT_OPTS="--ansi"
   ```

## Footnotes

[^1]: https://zinglix.xyz/2020/04/18/wsl2-proxy/
