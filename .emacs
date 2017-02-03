;; Removing the tool bar
(tool-bar-mode -1)
;; Removing scroll bar
(scroll-bar-mode -1)

;; Hide startup screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq package-archive-enable-alist '(("melpa" deft magit)))

;; Size
(set-face-attribute 'default nil :height 160)

;; Start Emacs in a fullscreen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4c7a1f0559674bf6d5dd06ec52c8badc5ba6e091f954ea364a020ed702665aa1" "f7eb64b27901812bbdbb91654c2a2e98555fa8d5b256144199925d6c7c0bd3bd" "c924950f6b5b92a064c5ad7063bb34fd3facead47cd0d761a31e7e76252996f7" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(load "package")
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)


(evil-mode t)
;; Mappings
(evil-add-hjkl-bindings occur-mode-map 'emacs
  (kbd "/")       'evil-search-forward
  (kbd "n")       'evil-search-next
  (kbd "N")       'evil-search-previous
  (kbd "C-d")     'evil-scroll-down
  (kbd "C-u")     'evil-scroll-up
  (kbd "C-w C-w") 'other-window)

(require 'evil)

;; Add themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Load the theme at startup
(load-theme 'espresso t)
