(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-install 'use-package)

(use-package elpy
:ensure t
:init
)

(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

(use-package magit
:ensure t
:init
)

(global-set-key (kbd "C-x g") 'magit-status)

; (use-package modus-operandi-theme
; :ensure t
; :init
; )

(global-visual-line-mode 1)

(tool-bar-mode 0)

(load '~/.emacs.d/elegant-emacs/elegance')
; (load 'elegant-emacs/sanity.el')

(setq org-support-shift-select t)

(global-set-key (kbd "M-5") "~")
