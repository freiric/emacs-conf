#see https://cask.readthedocs.io/en/latest/guide/installation.html
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
export PATH="$HOME/.cask/bin:$PATH"
echo ${PWD}
ln -fs ${PWD}/.emacs.d/init.el ~/.emacs.d/init.el
ln -fs ${PWD}/.emacs.d/haskell-conf.el ~/.emacs.d/haskell-conf.el
ln -fs ${PWD}/.emacs.d/ob-xml.el ~/.emacs.d/ob-xml.el
ln -fs ${PWD}/.emacs.d/Cask ~/.emacs.d/Cask
cd ~/.emacs.d
cask install
