;;; package --- private/luladjiev/config.el

;;; Commentary:
;;; Private module to extend Doom

;;; Code:

;;; I'm not a react dev yet
(def-package-hook! rjsx-mode :disable)

;;; Disable highlight-indentation. Eslint is going crazy
(def-package-hook! highlight-indentation :disable)

(add-hook! 'js2-mode-hook
  (setq js-switch-indent-offset 2)
  (setq js2-indent-switch-body t))

(after! company
  (setq company-idle-delay 0.2))

(after! evil-escape
  ;; Change the evil escape sequence to fd instead of jk
  (setq evil-escape-key-sequence "fd"))

;;; config.el ends here
