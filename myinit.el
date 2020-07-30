(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(package-install 'all-the-icons)

(package-install 'elpy)
;(require 'elpy)
(elpy-enable)

(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

(package-install 'dashboard)

(dashboard-setup-startup-hook)

(setq dashboard-banner-logo-title "Welcome back Nicolò")

(setq dashboard-center-content t)

(setq dashboard-set-heading-icons t)

(setq dashboard-set-file-icons t)

(setq dashboard-set-footer nil)

(package-install 'magit)

(global-set-key (kbd "C-g") 'magit)

(package-install 'counsel)

(package-install 'swiper)

(global-set-key "\C-c C-s" 'swiper)

(package-install 'ivy)

(ivy-mode 1)

(setq enable-recursive-minibuffers t)

(setq ivy-use-virtual-buffers t)

(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(global-set-key (kbd "M-x") 'counsel-M-x)

(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(global-set-key (kbd "<f1> l") 'counsel-find-library)

(global-set-key (kbd "<f1> f") 'counsel-describe-function)

(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)

(global-set-key (kbd "<f6>") 'ivy-resume)

(package-install 'gnuplot)

(package-install 'writeroom-mode)

(global-set-key (kbd "C-x C-w") 'writeroom-mode)

(tool-bar-mode 0)

(global-set-key (kbd "\C-x C-l") 'global-display-line-numbers-mode)

(global-visual-line-mode 1)

(package-install 'modus-vivendi-theme)
(load-theme 'modus-vivendi t)

(load-file "~/.emacs.d/galileo-themes/galileo-seamen-theme.el")

(package-install 'material-theme)
(load-theme 'material t)

(setq org-agenda-files (list "~/Documents/org/agenda.org"))

(global-set-key "\C-c C-a" 'org-agenda)

(global-set-key (kbd "M-5") "~")

(global-set-key (kbd "M-à") "#")

(global-set-key (kbd "M-è") "[")
(global-set-key (kbd "M-+") "]")

(global-set-key (kbd "M-é") "{")
(global-set-key (kbd "M-*") "}")
