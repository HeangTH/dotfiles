alias reload!='. ~/.zshrc'

# kube
alias k=kubectl
alias kx=kubectx
alias kn=kubens
alias kt=kubetail

# git
alias gtree="git log --oneline --decorate --all --graph"
alias gdH="git diff HEAD^"
alias gbpurge='git branch --merged | grep -Ev "(\*|master|develop|staging)" | xargs -n 1 git branch -d ${}'
alias gpall='git push && git push --tags'
alias gcz='git-cz'
function gtd() {
  local v=$1
  git tag -d $v
  git push -d origin $v
}
# git ignore
function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}

# vim
alias vihosts="sudo nvim /etc/hosts"

# diff
alias diffboth="diff --changed-group-format='%<%>' --unchanged-group-format='' $@"
alias diffleft="diff --changed-group-format='%<' --unchanged-group-format='' $@"
alias diffright="diff --changed-group-format='%>' --unchanged-group-format='' $@"

