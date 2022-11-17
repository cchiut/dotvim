# dotvim
My vim configuration file.

## link files

```
cd repositories/dotvim && mkdir undo && mkdir nvim_undo
cd
ln -s repositories/dotvim .vim
ln -s repositories/dotvim/mac.vim .vimrc
mkdir -p .config/nvim && ln -s repositories/dotvim/mac.vim .config/nvim/init.vim
cd .local/share/nvim && mkdir site && cd site && ln -s repositories/dotvim/autoload .
```
