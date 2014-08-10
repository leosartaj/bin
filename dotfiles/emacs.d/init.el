(load "~/.emacs.d/settings.el")
(load "~/.emacs.d/load_packages.el")
(load "~/.emacs.d/interface.el")
(load "~/.emacs.d/editing.el")
(load "~/.emacs.d/elisp_functions.el")
(load "~/.emacs.d/keybindings.el")
(load "~/.emacs.d/misc.el")

;; ;; Import structured-haskell-mode
;; (add-to-list 'load-path "/home/alanoth/.emacs.d/lisp/structured-haskell-mode/elisp")
;; (setq shm-program-name "/home/alanoth/.cabal/bin/structured-haskell-mode")
;; (require 'shm)

;; ;; Add shm hook to haskell-mode
;; (add-hook 'haskell-mode-hook 'structured-haskell-mode)

;; ;; Fix "RET" help popup problem
;; (define-key shm-map (kbd "RET") (kbd "C-j"))

;; Adjustments for solarized light
;; (set-face-background 'shm-current-face "#eee8d5")
;; (set-face-background 'shm-quarantine-face "lemonchiffon")

;; Haskell mode indentation styles
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; Markdown mode
;; (autoload 'markdown-mode "markdown-mode" "Markdown mode" t)
;; (setq auto-mode-alist (cons '("\\.md\\'" . markdown-mode) auto-mode-alist))
;; (setq auto-mode-alist (cons '("\\.markdown\\'" . markdown-mode) auto-mode-alist))

;; ;; Automatic pairing of brackets, braces e.t.c
;; (require 'autopair)
;; (autopair-global-mode 1)
;; (setq autopair-autowrap t)

;; ;; Activate ECB
;; (require 'ecb)
;; (require 'ecb-autoloads)

;; ;; Disable ECB tip of the day
;; (setq ecb-tip-of-the-day nil)

;; ;; ECB layout
;; (setq ecb-layout-name "right1")

;; ;; Increase compile window height
;; (setq ecb-compile-window-height 12)

;; ;; Activate And Deactivate ECB
;; (global-set-key (kbd "C-x C-;") 'ecb-activate)
;; (global-set-key (kbd "C-x C-'") 'ecb-deactivate)

;; ;; Show/Hide ECB Window
;; (global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
;; (global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)

;; ;; Quick Navigation Between ECB Windows
;; (global-set-key (kbd "C-)") 'ecb-goto-window-edit1)
;; (global-set-key (kbd "C-!") 'ecb-goto-window-directories)
;; (global-set-key (kbd "C-@") 'ecb-goto-window-sources)
;; (global-set-key (kbd "C-#") 'ecb-goto-window-methods)
;; (global-set-key (kbd "C-$") 'ecb-goto-window-compilation)

;; (require 'linum)
;; (global-linum-mode 1)
;; ;; optional formatting to make line numbers prettier
;; (setq linum-format "%d: ")

;; global-auto-revert-mode
;; expand-region
;; ido-mode
;; ibuffer
;; uniquify
;; show-paren-mode
;; magit
