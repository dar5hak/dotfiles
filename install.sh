echo "============================"
echo "Checking"
echo "============================\n"

if command -v git && command -v zsh && command -v curl; then
  echo "All OK."
else
  echo "Aborting. Ensure git, zsh and curl are installed."
  exit 1
fi

echo "DONE\n"
echo "============================"
echo "Installing Homebrew"
echo "============================\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "DONE\n"
echo "============================"
echo "Installing packages"
echo "============================\n"

if command -v brew; then
  brew install zellij helix ripgrep zoxide lazygit
fi

echo "DONE\n"
echo "============================"
echo "Installing package configs"
echo "============================\n"

mkdir -p $HOME/.config
cp -r helix $HOME/.config
cp -r zellij $HOME/.config

echo "DONE\n"
echo "============================"
echo "Installing Oh My Zsh"
echo "============================\n"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "DONE\n"
echo "============================"
echo "Copying Oh My Zsh files"
echo "============================\n"

mkdir -p $HOME/.oh-my-zsh/custom
cp aliases.zsh init.zsh $HOME/.oh-my-zsh/custom

echo "DONE\n"

exec zsh
