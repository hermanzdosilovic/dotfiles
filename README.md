# dotfiles
Herman's configuration files for zsh, git, sublime, and more.

## Install

    $ git clone https://github.com/hermanzdosilovic/dotfiles.git ~/.dotfiles
    $ sudo ln -s ~/.dotfiles/dot.sh /usr/local/bin/dot

## Usage

`dot {install|remove} [module ...]`

* `dot {install|remove}` will install/remove all modules
* `dot {install|remove} module1 module2 module3` will install/remove modules: *module1*, *module2*, *module3*

## Modules and Their Dependencies

* [git](https://github.com/hermanzdosilovic/dotfiles/tree/master/git)
* [sublime](https://github.com/hermanzdosilovic/dotfiles/tree/master/sublime)
  * [Sublime Text 3](http://www.sublimetext.com/3)
* [zsh](https://github.com/hermanzdosilovic/dotfiles/tree/master/zsh)
  * [Zsh](http://www.zsh.org/)
  * [Prezto](https://github.com/sorin-ionescu/prezto)

## Update

    $ cd ~/.dotfiles
    $ git pull

## Remove

    $ dot remove
    $ sudo rm /usr/local/bin/dot
    $ rm -rf ~/.dotfiles
