(package-initialize)

(setq make-backup-files nil)
(menu-bar-showhide-tool-bar-menu-customize-disable)
(setq inhibit-splash-screen t)
(load-theme 'tango-dark t)

(icomplete-mode t)
(ido-mode t)
(scroll-bar-mode -1)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(defun turn-on-eldoc-mode ()
  (eldoc-mode t))
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

(setq twittering-use-master-password t)

(custom-set-variables
 '(speedbar-show-unknown-files t)
)