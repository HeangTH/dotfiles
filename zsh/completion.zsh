# fzf
source "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh"
source "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh"

# kubectl
source <(kubectl completion zsh)

# eksctl
source <(eksctl completion zsh)

# terraform
complete -o nospace -C /opt/homebrew/bin/terraform terraform
