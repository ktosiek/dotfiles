#! make
#!nix-shell -p gnumake git

.PHONY: emacs all install

all:
	echo "Use 'make install' to install the dotfiles"
	exit 1

install: emacs

emacs: ${HOME}/.emacs.d/init.el ${HOME}/.spacemacs

${HOME}/.emacs.d/init.el:
	git clone --recursive https://github.com/syl20bnr/spacemacs $(basename $@)

${HOME}/.spacemacs:
	ln -r -s -f _spacemacs $@
