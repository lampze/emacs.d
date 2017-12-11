(setq auto-save-default nil)
(setq frame-resize-pixelwise t)



(defun shirui/add-pretty-lambda ()
  "Make some word or string show as pretty Unicode symbols."
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955)
          )))

(add-hook 'scheme-mode-hook 'shirui/add-pretty-lambda)
(add-hook 'scheme-mode-hook (lambda () (paredit-mode t)))



(defun shirui/set-normal-chinese-font ()
  "Set chinese' font be normal."
  (interactive)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font
     (frame-parameter nil 'font)
     charset
     (font-spec :name "-WQYF-WenQuanYi Micro Hei Mono-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"
                :weight 'normal
                :slant 'normal
                :size 16.0))))

(defun shirui/set-big-chinese-font ()
  "Set chinese' font be big."
  (interactive)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font
     (frame-parameter nil 'font)
     charset
     (font-spec :name "-WQYF-WenQuanYi Micro Hei Mono-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"
                :weight 'normal
                :slant 'normal
                :size 19.5))))

(global-set-key (kbd "C-M-S-c") 'shirui/set-normal-chinese-font)
(global-set-key (kbd "C-M-c") 'shirui/set-big-chinese-font)



(provide 'init-local)
;;; init-local.el ends here
