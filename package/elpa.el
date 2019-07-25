;;elpa插件包安装地址
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
(package-initialize)

;;自动补全C关键字auto-complete
(ac-config-default)



;;彩虹括号
;;(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
