(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;;(require 'use-package)

;;(dolist (package '(use-package))
;;  (unless (package-installed-p package)
;;   (package-install package)))


;(use-package auctex :ensure t)
;(use-package yasnippet :ensure t)
;(use-package yasnippet-snippets :ensure t)
;(use-package ivy :ensure t)
;(use-package company :ensure t)
;(use-package magit :ensure t)
;(use-package color-theme-modern :ensure t)

;; yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; ivy
(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

;; company
(add-hook 'after-init-hook 'global-company-mode)

;; display battery
(display-battery-mode 1)

;; show matching parentheses
(show-paren-mode t)

;; no splash screen
(setq inhibit-splash-screen t)

;; visual line mode
(global-visual-line-mode 1)

;; delete selected region
(delete-selection-mode 1)

;; disable toolbar
(tool-bar-mode -1)

;; disable scrollbar
(scroll-bar-mode -1)

;; disable autosave
(setq auto-save-default nil)
(put 'erase-buffer 'disabled nil)

;; disable bell
(setq ring-bell-function 'ignore)

;; edot - Edit .emacs
(defun edot()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; ldot - load .emacs + apply changes
(defun ldot()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

;; set font size
(set-face-attribute 'default nil :height 120)

;; color-theme-modern MELPA
(load-theme 'resolve t t)
(enable-theme 'resolve)
