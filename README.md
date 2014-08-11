#SGT-ZIM

###Setup

    mkdir .vim
    git clone https://github.com/orlissenberg/sgt-zim .vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    ln -s ~/.vim/moredots/.zshrc ~/.zshrc

### References

[Pathogen](https://github.com/tpope/vim-pathogen)

Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes it super easy to install
plugins and runtime files in their own private directories.

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

[VIM Powerline](https://github.com/Lokaltog/powerline)

Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications,
including zsh, bash, tmux, IPython, Awesome and Qtile.

[VIM Fugitive](https://github.com/tpope/vim-fugitive)

A Git wrapper so awesome, it should be illegal.

[VIM Classes](https://github.com/shawncplus/vim-classes)

[VIM Easymotion 1.3](https://github.com/Lokaltog/vim-easymotion)

[Vim Surround](git://github.com/tpope/vim-surround.git)

[PHP Complete](https://github.com/shawncplus/phpcomplete.vim)

[Easy way pull latest of all submodules](http://stackoverflow.com/questions/1030169/easy-way-pull-latest-of-all-submodules)

    git submodule init
    git submodule update --recursive

Default configuration:

    /usr/share/vim/vim72

### Tutorials

[VIM Casts](http://vimcasts.org/episodes/archive)

[VIM Classes](https://github.com/shawncplus/vim-classes)

## Known Issues

### Error #941

    TypeError: setup() got an unexpected keyword argument 'can_replace_pyeval'

[Error #941](https://github.com/Lokaltog/powerline/issues/941)

    sudo pip uninstall powerline

