;;; package --- private/luladjiev/config.el

;;; Commentary:
;;; Private module to extend Doom

;;; Code:
(when (featurep 'evil)
  (setq evil-escape-key-sequence "fd"))

(when (eq system-type 'windows-nt)
  (setq dumb-jump-prefer-searcher 'rg))

(add-hook! 'js2-mode-hook
  (setq js-switch-indent-offset 2)
  (setq js2-indent-switch-body t))

(set-face-attribute 'default nil :font "Source Code Pro-14" )
;;; config.el ends here
