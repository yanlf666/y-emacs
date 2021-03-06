



;;默认缩进
;;(setq org-startup-indented t)

;;org-mode 高亮
(setq org-src-fontify-natively t)

;;Latex pdf 输出颜色高亮
(require 'ox-latex)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)

;;字符统计
(add-hook 'org-mode-hook 'word-like-count-mode)


;; 中文换行问题
(add-hook 'org-mode-hook 
	  (lambda () (setq truncate-lines nil)))

;;不转意下划线
(setq org-export-with-sub-superscripts nil)

;;以下为插入图片lisp
;; iimage mode
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)

;; screenshot in org-mode
;; modified by gift.young@gmail.com
;; based on [http://praktikanten.brueckenschlaeger.org/2010/11/28/screenshots-in-org-mode]
(defun my-screenshot ()
"Take a screenshot into a unique-named file in the current buffer file
directory and insert a link to this file."
(interactive)
(setq filename
(concat (make-temp-name
(concat (file-name-directory (buffer-file-name)) "images/" ) ) ".png"))
(if (file-accessible-directory-p (concat (file-name-directory
(buffer-file-name)) "images/"))
nil
(make-directory "images"))
(call-process-shell-command "scrot" nil nil nil nil "-s" (concat
"\"" filename "\"" ))
(insert (concat "[[" filename "]]"))
(org-display-inline-images)
)

(global-set-key (kbd "s-s") 'my-screenshot)
;;
