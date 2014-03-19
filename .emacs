(setq visible-bell t)

(setq load-path (append (list (expand-file-name "~/.emacs.d/js2")) load-path))
(setq load-path (append (list (expand-file-name "~/.emacs.d/")) load-path))
;;(setq load-path (append (list (expand-file-name "/home/karthikk/.emacs.d/ecb") (expand-file-name "/home/karthikk/.emacs.d/jdee-2.4.0/lisp")) load-path))

(require 'color-theme)
(color-theme-initialize)
;;(load-file "~/.emacs.d/zenburn-theme.el")

(load-file "~/.emacs.d/color-theme-tomorrow.el")
;;(load-file "~/.emacs.d/tomorrow-night-blue-theme.el")
(load-file "~/.emacs.d/tomorrow-night-bright-theme.el")
;;(load-file "~/.emacs.d/tomorrow-night-eighties-theme.el")
;;(load-file "~/.emacs.d/tomorrow-night-theme.el")
;;(load-file "~/.emacs.d/tomorrow-theme.el")
;;(load-file "/home/karthikk/.emacs.d/themes/color-theme-tango.el")
;;(color-theme-aalto-light)
;;(color-theme-tty-dark)
;;(color-theme-clarity)
;;(color-theme-comidia)
;;(color-theme-hober)

;;(prin1-to-string (x-list-fonts "*"))
;;(set-default-font "Monaco-14")
;;(set-default-font "Andale Mono-12")
(set-default-font "Inconsolata-g-12")
;;(set-default-font "DejaVu Sans Mono-14:Book:antialias=none")

;;Map ESC-g for goto line
(global-set-key [?\M-g] 'goto-line)

;;Use "electric-buffer-list" instead of "buffer-list"
(global-set-key [?\C-x?\C-b] 'electric-buffer-list)

;;Highlight regions for cutting/copying
(setq transient-mark-mode t)

;;Highlight paren
(setq show-paren-mode t)

;;http://steve.yegge.googlepages.com/effective-emacs
;;Remove menubar File...Edit...etc
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;;Remove tool bar 
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;Remove scroll bar
;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq sql-mysql-options '("-C" "-t" "-f" "-n" "--port=33335" "-A")) 

;;http://code.google.com/p/js2-mode/wiki/InstallationInstructions
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq auto-mode-alist
  (append
   '(("\\.eear\\'" . archive-mode))
   '(("\\.ear\\'" . archive-mode))
   '(("\\.sar\\'" . archive-mode))
	auto-mode-alist)) 

(setq c-default-style "bsd")


;(require 'ecb)
;(load "jde")

(setq password-cache-expiry nil)

(global-linum-mode t)

;;(require 'mercurial)

;;(add-to-list 'load-path "~/.emacs.d/jade-mode")
;;(require 'sws-mode)
;;(require 'jade-mode)    
;;(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
;;(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(setq-default tab-width 8)
(setq-default indent-tabs-mode nil)
(setq c-default-style
      '((java-mode . "java")))
(setq js2-mode-hook
  '(lambda () (progn
    (set-variable 'indent-tabs-mode nil))))

;; go mode
(setq load-path (cons "/usr/local/go/misc/emacs" load-path))
(require 'go-mode-load) 


(defvar org-journal-file "~/log/journal.org"  
  "Path to OrgMode journal file.")  
(defvar org-journal-date-format "%Y-%m-%d"  
  "Date format string for journal headings.")  

(defun org-journal-entry ()  
  "Create a new diary entry for today or append to an existing one."  
  (interactive)  
  (switch-to-buffer (find-file org-journal-file))  
  (widen)  
  (let ((today (format-time-string org-journal-date-format)))  
    (beginning-of-buffer)  
    (unless (org-goto-local-search-forward-headings today nil t)  
          ((lambda ()   
             (org-insert-heading)  
             (insert today)  
             (insert "\n\n  \n"))))  
    (beginning-of-buffer)  
    (org-show-entry)  
    (org-narrow-to-subtree)  
    (end-of-buffer)  
    (backward-char 2)  
    (unless (= (current-column) 2)  
      (insert "\n\n  "))))  


;;(setq default-directory "~/")
(setq command-line-default-directory "~/")

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))

(add-to-list 'load-path "~/.emacs.d/vendor/mustache-mode.el")
(require 'mustache-mode)
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . mustache-mode))

(setq nxml-child-indent 4)

(cd "~/")

