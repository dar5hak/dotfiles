# apt
alias aptin="sudo apt install"
alias aptiny="sudo apt install -y"
alias aptup="sudo apt update"
alias aptug="sudo apt upgrade"
alias aptrm="sudo apt remove"
alias aptar="sudo apt autoremove"

# zellij
alias zj="zellij"
alias za="zellij attach"
alias zs="zellij --layout compact --session"
alias zls="zellij list-sessions"

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
