# dotfiles
My dot files

To set up a new personal box, enable iCloud and it will sync the following directories:
- `~/Desktop`
- `~/Documents`

Create the following symbolic link:
- `ln -s ~/Documents/bin ~/bin`

Note that `~/Downloads` is not synced, therefore, if there is something important, back it up!

Also:
- grab anything out of `~/.ssh` like pem files or key pairs
- grab anything out of `~/.aws` like config and keys

Then install:

- iTerm2
  - set colour scheme to Solarized (Dark|Light) in Preferences -> Profiles (Default) -> Colors -> Color Presets (Solarized should be built in)
- zsh
- oh-my-zsh
- powerline
  - `pip3 install --user git+git://github.com/powerline/powerline`
  - ensure that the install location matches the following line in `.vimrc`: `set rtp+=~/Library/Python/3.8/lib/python/site-packages/powerline/bindings/vim/`
  - if not, find location via `python3 -m site --user-site` or without the `--user-site`
- Source Code Pro for Powerline fonts
  - Download OTF fonts from https://github.com/powerline/fonts
  - install using Font Book app
  - set font to Soure Code Pro for Powerline Black in iTerm2 -> Preferences -> Profiles (Default) -> Text
  - note that size looks best as 14 for 16" MacBook Pro and 16 for 13" MacBook Pro
- Solarized theme (this is built into iTerm2 and pulled in via vundle in vim so ... nothing to do)
- VIM for Mac OS (mvim)
- intall Vundle:
  - `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- brew
- do a `git clone git@github.com:rootsmith/dotfiles.git` this repo into home directory and then:
  - `ln -s ~/dotfiles/.zshrc ~/.zshrc`
  - `ln -s ~/dotfiles/.vimrc ~/.vimrc`
  - `ln -s ~/dotfiles/.gitconfig ~/.gitconfig`
