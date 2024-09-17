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
alias zs="zellij --session"
alias zls="zellij list-sessions"
alias zide="zellij --layout=ide"

# misc
alias python="python3"
alias pip="pip3"
alias lg="lazygit"

function clone() {
	git clone https://github.com/dar5hak/$1.git && cd $1 && git config user.email "darshak@proton.me"
}

function syncup() {
	git fetch upstream
	git checkout master
	git merge upstream/master
}
