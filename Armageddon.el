;; User defined settings for user: Armageddon

(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

;; Snippets

(add-to-list 'load-path (concat dotfiles-dir "/vendor/yasnippet.el"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/vendor/yasnippet.el/snippets"))


;; Color Themes
(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)
;; (color-theme-charcoal-black)
(load-file "~/.emacs.d/elpa-to-submit/blackboard.el")
(color-theme-blackboard)

;; Highlighting mode functionality - also related to deleting regions
;; of text
;; easier... http://www.emacswiki.org/cgi-bin/wiki?TransientMarkMode
;; without it, you can't highlight text then hit 'del' to remove it.
(transient-mark-mode 1)
(delete-selection-mode 1)


;; major modes
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
 
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
 
(add-to-list 'auto-mode-alist '("\\.sake\\'" . ruby-mode))


;; functions

;; Full screen toggle
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                         'fullboth)))
(global-set-key (kbd "M-RET") 'toggle-fullscreen)
 
;; Keyboard
 
;; Split Windows
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

;; Other
 
(prefer-coding-system 'utf-8)