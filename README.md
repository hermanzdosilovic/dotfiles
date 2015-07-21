# dotfiles
Herman's configuration files for zsh, git, sublime, and more.

## Install

    $ git clone https://github.com/hermanzdosilovic/dotfiles.git ~/.dotfiles
    $ sudo ln -s ~/.dotfiles/punkt.sh /usr/local/bin/punkt

## Usage

`usage: punkt { {link|unlink [module ...]} | update }`

* `punkt {link|unlink}` will link/unlink all modules
* `punkt {link|unlink} module1 module2 module3` will link/unlink modules: *module1*, *module2*, *module3*

## Modules and Their Dependencies

* [git](https://github.com/hermanzdosilovic/dotfiles/tree/master/git)
* [sublime](https://github.com/hermanzdosilovic/dotfiles/tree/master/sublime)
  * [Sublime Text 3](http://www.sublimetext.com/3)
* [zsh](https://github.com/hermanzdosilovic/dotfiles/tree/master/zsh)
  * [Zsh](http://www.zsh.org/)
  * [Prezto](https://github.com/sorin-ionescu/prezto)

## Update

    $ punkt update

## Remove

    $ punkt unlink
    $ sudo rm /usr/local/bin/punkt
    $ rm -rf ~/.dotfiles
