(setq gc-cons-threshold (* 5 1000 1000))
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
