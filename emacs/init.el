
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)


(package-initialize)

(unless (require 'use-package nil t)
  (defmacro use-package (&rest args)))

(use-package pallet)
(use-package ruby-mode)
(use-package dash)
(use-package magit)

;カーソル移動
(global-set-key "\C-h" 'delete-backward-char)



(show-paren-mode t)
