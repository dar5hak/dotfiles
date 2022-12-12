# apt
alias aptin="sudo apt install"
alias aptiny="sudo apt install -y"
alias aptup="sudo apt update"
alias aptug="sudo apt upgrade"
alias aptrm="sudo apt remove"
alias aptar="sudo apt autoremove"

# npm
alias ni="npm i"
alias nid="npm i -D"
alias nig="npm i -g"

alias nr="npm rm"
alias nrs="npm rm -S"
alias nrd="npm rm -D"
alias nrg="npm rm -g"

alias nu="npm update"
alias nug="npm update -g"

alias nlg="npm ls -g --depth=0"
alias nog="npm outdated -g"

alias nt="npm test"
alias nit="npm it"

alias ns="npm start"
alias nb="npm run build"

alias na="npm audit"
alias naf="npm audit fix"

alias nk="npm link"
alias nf="rm -rf node_modules && npm install"


# yarn
alias ya="yarn add"
alias yad="yarn add --dev"
alias yga="yarn global add"

alias yr="yarn remove"
alias yrd="yarn remove --dev"
alias ygr="yarn global remove"

# zellij
alias zj="zellij"
alias za="zellij attach"
alias zs="zellij --layout compact --session"
alias zls="zellij list-sessions"

# hexo
alias hex="hexo generate && hexo serve"

# Taskfile
# Quick start with the default Taskfile template
alias run-init="curl -so Taskfile https://raw.githubusercontent.com/adriancooney/Taskfile/master/Taskfile.template && chmod +x Taskfile"

# Run your tasks like: run <task>
alias run="./Taskfile"

# misc
alias vsc="codium"

function clone() {
	git clone https://github.com/dar5hak/$1.git && cd $1
}

function syncup() {
	git fetch upstream
	git checkout master
	git merge upstream/master
}
