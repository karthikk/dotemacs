(setq visible-bell t)

(setq load-path (append (list (expand-file-name "/home/karthikk/.emacs.d/js2")) load-path))
(setq load-path (append (list (expand-file-name "/home/karthikk/.emacs.d/ecb") (expand-file-name "/home/karthikk/.emacs.d/jdee-2.4.0/lisp")) load-path))

(require 'color-theme)
(color-theme-initialize)
;;(load-file "/home/karthikk/.emacs.d/themes/zenburn.el")
;;(color-theme-zenburn)
;;(load-file "/home/karthikk/.emacs.d/themes/color-theme-tango.el")
;;(color-theme-tango)
;;(color-theme-tty-dark)
(color-theme-clarity)
;;(color-theme-comidia)
;;(color-theme-hober)

;;(prin1-to-string (x-list-fonts "*"))
(set-default-font "Inconsolata-14:antialias=none")
;;(set-default-font "DejaVu Sans Mono:Book:antialias=none")

(cd "~/")

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
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq auto-mode-alist
  (append
   '(("\\.eear\\'" . archive-mode))
   '(("\\.ear\\'" . archive-mode))
   '(("\\.sar\\'" . archive-mode))
	auto-mode-alist)) 

(setq c-default-style "bsd")


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("/home/karthikk/server/" "/home/karthikk/repository/")))
 '(ecb-tree-navigation-by-arrow t)
 '(inferior-lisp-program "java -cp /home/karthikk/clojure/clojure-1.1.0/clojure.jar:/home/karthikk/clojure/clojure-contrib-1.1.0/clojure-contrib.jar clojure.main"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )



;(require 'ecb)
;(load "jde")

 '(jde-jdk-doc-url "http://training-server/javastuff/jdk-1_5_0_doc/docs/api/index.html")

(setq password-cache-expiry nil)

(global-linum-mode t)