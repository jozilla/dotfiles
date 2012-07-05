;; Color theme
(add-to-list 'load-path "~/.emacs_themes/")
(load-library "vibrantink")
;(color-theme-vibrantink)
(add-to-list 'load-path "~/.emacs_themes/emacs-color-theme-solarized/")
(load-library "color-theme-solarized")
(require 'color-theme-solarized)
(color-theme-solarized-light)

;; Use spaces
(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

;; Start server
(server-start)

;; Custom settings
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 181 :width normal :foundry "unknown" :family "Ubuntu Mono")))))
