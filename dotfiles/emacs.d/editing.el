;; Set default encoding to utf-8
(prefer-coding-system 'utf-8)

;; Electric indentation
(electric-indent-mode 1)

;; Indent with spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Enable transient mark mode
(transient-mark-mode 1)

;; Indent style and tab-width for C-mode
(setq c-default-style "k&r" c-basic-offset 4)

;; Markdown mode
(autoload 'markdown-mode "markdown-mode" "Markdown mode" t)
(setq auto-mode-alist (cons '("\\.md\\'" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown\\'" . markdown-mode) auto-mode-alist))

;; Org-mode hacks
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

