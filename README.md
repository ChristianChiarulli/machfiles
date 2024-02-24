# Machfiles

![machfiles image](./machfiles.png)

## Installing

You will need `git` and GNU `stow`

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/ChristianChiarulli/machfiles.git ~/.machfiles
```

Run `stow` to symlink everything or just select what you want

```bash
stow */ # Everything (the '/' ignores the README)
```

```bash
stow zsh # Just my zsh config
```

MacOS

All of my packages for MacOS can be found in `brew/.Brewfile`

- Install

```
stow ~/.machfiles/brew

brew bundle --global
```

## Linux

An updated list of all the programs I use can be found in the `programs` directory
