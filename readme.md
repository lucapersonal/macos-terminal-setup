# Terminal Setup MacOS

This is my custom terminal setup for MacOS. There are a number of options to choose from, which are documented below.

## Step 1: Base Installs
You need to install this for all options, so these are the first steps:

1. Install zsh - `brew install zsh`.
2. Install oh-my-zsh - `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`.
3. Install zsh pure prompt - `brew install pure`.
4. Install zsh-autosuggestions plugin - `brew install zsh-autosuggestions`
5. Install zsh-completions plugin - `brew install zsh-completions`.
6. Install zsh-syntax-highlighting plugin - `brew install zsh-syntax-highlighting`.
7. Display hidden files in this repo by pressing the `Cmd (⌘) + Shift (⇧) + .` keyboard shortcut in a Finder window.
8. Setup .zsh profile by copying `./zsh-profile/.zshrc` to `~/`
9. Copy `./.hushlogin` to `~/`. This will prevent the "last login" prompt that terminal shows from appearing.
10. Install the appropriate Terminal Profile found in `./terminal-profiles/`.
11. Setup default git configuration by copying `./git/.gitconfig` and `./git/.gitignore` to `~/`.


## Step 2: Select Option
Choose one of the following options to install:

1. **Original** - which is my original setup where I built my own script to collect all the details and using ASCII art via `lolcat` and `artii`.
2. **FastFetch** - which is collects all the details for me and I just configure it via a `config.jsonc` file.
<br /><br />

> **Recommendation:** Use option 2 as it is newer and better and easier.

### 2.1 - Setup Option 1 (Original)
To setup option 1, follow these steps:

1. Install lolcat - `brew install lolcat`.
2. Install artii - `sudo gem install artii`.
3. Setup .motd.sh script by copying the `./options/original/motd.sh` file to `/etc/motd.sh`.
4. Remove any existing `motd` files that exist in this directory.
5. Run `chmod +x /etc/motd.sh` to make the file executable.


## 2.2 Setup Option 2 (FastFetch)
To setup option 2, follow these steps:

1. Install fastfetch - `brew install fastfetch`.
2. Setup fastfetch config by copying `./options/fastfetch/config.jsonc` to `~/.local/fastfetch/`.
3. Setup .motd.sh script by copying `./options/fastfetch/motd.sh` to `/etc/motd.sh`.
4. Remove any existing `motd` files that exist in this directory.
5. Run `chmod +x /etc/motd.sh` to make the file executable.
