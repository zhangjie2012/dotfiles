常用工具配置文件：Vim, tmux, eslint, bash

`ln -s dotfiles/_golangci.yaml .golangci.yaml`

via: https://zinglix.xyz/2020/04/18/wsl2-proxy/

WSL 设置 HTTP(s) 代理脚本 `wsl_proxy.sh`

在 `.zshrc` 中添加：

```sh
alias proxy_set="sh /home/zhangjie/dotfiles/wsl_proxy.sh set"
alias proxy_unset="sh /home/zhangjie/dotfiles/wsl_proxy.sh unset"
alias proxy_test="sh /home/zhangjie/dotfiles/wsl_proxy.sh test"
```
