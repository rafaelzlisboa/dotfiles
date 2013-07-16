(package-initialize)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)
(load-theme 'zenburn t)


(defun shell-command-to-string-no-newline(command)
  (substring (shell-command-to-string command) 0 -1))

(setq random-word-oneliner "python -c \"import os, random; wordsfile = '/usr/share/dict/words'; words = open(wordsfile, 'r')\; wordsfile_size = os.stat(wordsfile)[6]; words.seek((random.randint(0, wordsfile_size - 1)) % wordsfile_size); words.readline(); print words.readline(),\"")
(defun startup-echo-area-message() 
  (message (concat "Before you go, take a random word: " (shell-command-to-string-no-newline random-word-oneliner))))

(setq initial-scratch-message
  (concat (replace-regexp-in-string "^" "; " (shell-command-to-string-no-newline "/usr/local/bin/fortune wisdom")) "\n\n"))



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

(require 'expand-region)
(global-set-key (kbd "C-@") 'er/expand-region)


(custom-set-variables
  '(speedbar-show-unknown-files t)
  '(speedbar-smart-directory-expand-flag nil)
  '(speedbar-update-flag nil)
  '(sr-speedbar-auto-refresh nil)
)
