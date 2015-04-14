(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))



(el-get-bundle pallet)
(el-get-bundle ruby-mode)
(el-get-bundle dash)
(el-get-bundle magit)

;カーソル移動
(global-set-key "\C-h" 'delete-backward-char)



(show-paren-mode t)
