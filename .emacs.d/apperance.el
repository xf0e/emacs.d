;;load dotshare theme
;(load-file "~/.emacs.d/colors/alect-themes.el")
;(load-file "~/.emacs.d/colors/alect-dark-theme.el")
(load-file "~/.emacs.d/site-lisp/highlight-tail.el")


(require 'highlight-tail)
(setq highlight-tail-colors '(("#49467F" . 0)
                              ("#323057" . 25)
                              ("#1C1B32" . 100)))
(highlight-tail-reload)

(setq font-lock-maximum-decoration t
      color-theme-is-global t)

;get rid of clutter
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; make fringe smaller
(if (fboundp 'fringe-mode)
    (fringe-mode 4))

(set-face-attribute 'default nil
                    :family "Anka/Coder"
                    :height 130
                    :weight 'normal
                    :width 'normal)

(when (functionp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'unicode
                    (font-spec :family "Anka/Coder"
                               :width 'normal
                               :size 12.4
                               :weight 'normal)))


;;initial frames Setup
;;set the left window size to 80 and activate the right
(split-window-horizontally 80)
(windmove-right)
(provide 'apperance.el)
