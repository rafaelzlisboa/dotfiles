;; recommended packages:
;; - expand-region
;; - zenburn-theme
;; and:
;; - fortune command

(package-initialize)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)
;; (load-theme 'zenburn t)


(defun shell-command-to-string-no-newline(command)
  (substring (shell-command-to-string command) 0 -1))

(when (executable-find fortune)
  (setq initial-scratch-message
    (concat (replace-regexp-in-string "^" ";; "
                                      (shell-command-to-string-no-newline
                                        "/usr/local/bin/fortune wisdom"))
            "\n\n")))

(icomplete-mode t)
(ido-mode t)
(global-hl-line-mode 1)
(when window-system
  (scroll-bar-mode -1)
  (menu-bar-showhide-tool-bar-menu-customize-disable))

(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(defun turn-on-eldoc-mode ()
  (eldoc-mode t))
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)


(when (require 'expand-region nil 'noerror)
  (global-set-key (kbd "C-@") 'er/expand-region))


(custom-set-variables
  '(speedbar-show-unknown-files t)
  '(speedbar-smart-directory-expand-flag nil)
  '(speedbar-update-flag nil)
  '(sr-speedbar-auto-refresh nil))
