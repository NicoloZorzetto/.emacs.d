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

(use-package dashboard
:ensure t
:config
(setq dashboard-banner-logo-title "Welcome back Nicolò.")
(setq dashboard-center-content t)
(dashboard-setup-startup-hook)
(setq dashboard-set-footer nil)
(setq dashboard-set-file-icons t)
:init
)

(global-visual-line-mode 1)

(load "~/.emacs.d/zemacs-dark-theme.el")

(setq org-support-shift-select 1)

(setq org-agenda-files (list "~/Documents/org/Agenda/agenda.org"))

(global-set-key (kbd "M-5") "~")
