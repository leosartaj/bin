;; Setup load-path
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Proxy Settings
(setq url-proxy-services '(("no_proxy" . "127.0.0.1")
                           ("http" . "127.0.0.1:8118")))

(setq
 backup-by-copying t                    ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.backup"))                 ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)                     ; use versioned backups

;; Reconfigure the scratch buffer
(setq initial-major-mode 'fundamental-mode)
(setq initial-scratch-message nil)

;; Y/N instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)
