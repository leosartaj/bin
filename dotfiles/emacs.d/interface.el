;; Inhibit startup message
(setq inhibit-startup-screen 1)

;; Set font
(set-face-attribute 'default nil :family "Inconsolatazi4" :height 160)
;; (set-face-attribute 'default nil :family "Source Code Pro" :height 140)
;; (set-face-attribute 'default nil :family "Droid Sans Mono Dotted" :height 140)

;; More space for windows:
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

;; Row, column display
(column-number-mode)

;; No blinking cursors
(blink-cursor-mode -1)

;; Highlight Matching parantheses
(show-paren-mode 1)

;; Color theme
;; (load-theme 'solarized-dark t)
;; (load-theme 'solarized-light t)
;; (load-theme 'zenburn t)
(load-theme 'monokai t)

;; Higlight tail
(require 'highlight-tail)

;; Highlight tail configurations
(setq highlight-tail-colors '(("#141414" . 0)))
(setq highlight-tail-steps 15 highlight-tail-timer 0.1)

;; Activate highlight tail
(highlight-tail-mode)

;; Smooth Scrolling configuration
(setq smooth-scroll-margin 5)

;; Sublimity
;; (sublimity-global-mode)

;; Highlight current line
;; (require 'highlight-current-line)
;; (highlight-current-line-set-bg-color "gray19")
;; (setq highlight-current-line-ignore-regexp nil)
;; (setq highlight-current-line-globally 1)
