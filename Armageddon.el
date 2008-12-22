;; User defined settings for user: Armageddon

(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

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