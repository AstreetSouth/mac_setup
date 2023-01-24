reference 
https://github.com/CodingGarden/mac-setup
https://www.stuartellis.name/articles/mac-setup/

--install Xcode
xcode-select --install

--setup homebrew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

note: You need to close all terminal windows for this change to take effect.

--To check that Homebrew is installed correctly, run this command in a terminal window:

brew doctor

--To update the index of available packages, run this command in a terminal window:

brew update


# setup zshrc profile
--To enable auto completion, edit the file .zshrc in your home directory to include this line:

autoload bashcompinit && bashcompinit


# install homebrew formulae
# install homebrew casks
--to run installion on batch of casks, use the following:
	xargs brew install < brew-casks.txt

--check git installed
git --version
--if not 
brew intall git

git config --global user.name "Your Name"
git config --global user.email "you@your-domain.com"

--set up directory structure for projects
repos/
    gitlab.com/
        my-gitlab-username/
            a-project/
            another-project/
    sr.ht/
        my-sourcehut-username/
            a-project/

--creating ssh keys
OpenSSH stores your SSH keys in a .ssh directory. To create this directory, run these commands in a terminal window:

mkdir $HOME/.ssh
chmod 0700 $HOME/.ssh

To create an SSH key, run the ssh-keygen command in a terminal window. For example:

ssh-keygen -t rsa -b 4096 -C "Me MyName (MyDevice) <me@mydomain.com>"


----pyenv setup
https://github.com/pyenv/pyenv  

--install
brew update
brew install pyenv
brew install pyenv-virtualenv

--set up shell env for pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

--restart shell
exec "$SHELL"

--show installed versions
pyenv install --list shows available version for install
pyenv install 3.10
pyenv versions --shows installed version
pyenv global 3.10 --will set this version as the current global version
--use the selected version
pyenv exec python -m venv .venv
  this will create a virtual environment in a folder called .venv


