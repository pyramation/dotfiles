root_dir := $(shell pwd)
vim_bundle_dir = $(HOME)/.vim/bundle
vundle = $(HOME)/.vim/bundle/vundle
dotfiles = $(HOME)/.dotfiles
vimrc = $(HOME)/.vimrc

def:
	rm -rf $(vim_bundle_dir)
	$(root_dir)/scripts/symlink_dotfiles
	mkdir -p $(vim_bundle_dir)
	git clone http://github.com/gmarik/vundle.git $(vundle)
	vim +BundleInstall! +BundleClean +qall