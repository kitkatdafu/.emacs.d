;;; package --- init-ui
;;; Commentary:
;;; Setup user interface, font, etc.
;;; Code:
;; turn off tool bar
(tool-bar-mode -1)
;; turn off scroll bar
(when (display-graphic-p)
    (scroll-bar-mode -1))
;; display line number
(global-linum-mode t)
;; turn off welcome screen
(setq inhibit-splash-screen t)

;; change font
(defvar editor-font "PragmataPro Mono-20")
(set-face-attribute 'default nil :font editor-font)
(set-frame-font editor-font nil t)

;; transparent title bar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

 ;; full screen when start
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; setup nyan-mode cat
(use-package nyan-mode
  :config
  (nyan-mode)
  (nyan-start-animation)
  (setq nyan-wavy-trail t)
  (setq nyan-animate-nyancat t)
  )

;; all the icons
(use-package all-the-icons
  :defer t)

;; setup treemacs
(setq treemacs-width 30)

;; setup doom themes
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-one)
  (doom-themes-neotree-config)
  (doom-themes-treemacs-config)
  (doom-themes-org-config)
  )

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(provide 'init-ui)
;;; init-ui.el ends here
