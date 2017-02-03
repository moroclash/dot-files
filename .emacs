;; Removing the tool bar
(tool-bar-mode -1)

(load "package")
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'evil)
(evil-mode t)

(add-to-list 'load-path "~/.emacs.d/emacs-powerline")
(require 'powerline)


 
(setq package-archive-enable-alist '(("melpa" deft magit)))