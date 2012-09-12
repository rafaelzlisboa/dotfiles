(package-initialize)

(setq make-backup-files nil)
(menu-bar-showhide-tool-bar-menu-customize-disable)
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)
(load-theme 'tango-dark t)

(icomplete-mode t)
(ido-mode t)
(scroll-bar-mode -1)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(defun turn-on-eldoc-mode ()
  (eldoc-mode t))
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

(setq twittering-use-master-password t)

(require 'sr-speedbar)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(custom-set-variables
 '(speedbar-show-unknown-files t)
)