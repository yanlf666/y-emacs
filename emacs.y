

;;需要PACK安装：
;;1:sr-speedbar
;;2:auto-complete
;;3:rainbow-delimiters


;;elpa插件包安装地址
;;(require 'package)
;;(add-to-list 'package-archives
;;	     '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
;;(package-initialize)


(add-to-list 'load-path "~/y-emacs/package/")
(load "elpa.el")

(add-to-list 'load-path "~/y-emacs/init/")
(load "init-local.el")

(add-to-list 'load-path "~/y-emacs/theme/")

(add-to-list 'load-path "~/y-emacs/org-mode/")
(load "org-mode-init.el")


(load "labburn-theme-source-code.el")
