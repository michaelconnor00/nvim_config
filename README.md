# NVIM Configuration

The configuration file `init.vim` has all the plugins that I use with NeoVIM. The missing dependencies are:

- [fzf](https://github.com/junegunn/fzf)
- [Syntastic](https://github.com/vim-syntastic/syntastic)
- [jedi](https://github.com/davidhalter/jedi)

## Install Plugins

This config file uses the plugin manager [vim-plug](https://github.com/junegunn/vim-plug).

`vim-plug` needs to be installed first:

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

To Install plugins:

```
:PlugInstall
```
