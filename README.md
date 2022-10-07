# PauloRSF's config files

Files to config & setup my stuff

## Symlinking dotfiles

I'm using [Stow](https://www.gnu.org/software/stow) to place the dotfiles where they belong. The files are structured as they should be in my home directory. So, to restore them, you should install Stow:

```shell
$ apt install stow
```

Then, in this directory, run:

```shell
$ stow -t $HOME -R dotfiles/
```

