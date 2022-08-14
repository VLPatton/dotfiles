.PHONY: all alacritty nvim

all: alacritty nvim

alacritty:
	cp -R alacritty $(HOME)/.config

nvim:
	cp -R nvim $(HOME)/.config

