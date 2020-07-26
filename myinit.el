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
;(setq dashboard-startup-banner [VALUE])
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-footer nil)

(package-install 'magit)

;(package-install 'consuel)

(package-install 'swiper)

(package-install 'ivy)
(ivy-mode 1)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(package-install 'gnuplot)
(require 'gnuplot-mode)

(tool-bar-mode 0)

(global-display-line-numbers-mode)

(global-visual-line-mode 1)

(package-install 'modus-vivendi-theme)
(load-theme 'modus-vivendi t)

(load-file "~/.emacs.d/galileo-themes/galileo-seamen-theme.el")

(setq org-agenda-files (list "~/Documents/org/agenda.org"))

(global-set-key (kbd "C-x C-a") 'org-agenda)

(global-set-key (kbd "M-5") "~")

(global-set-key (kbd "M-à") "#")

(global-set-key (kbd "M-è") "[")
(global-set-key (kbd "M-+") "]")

(global-set-key (kbd "M-é") "{")
(global-set-key (kbd "M-*") "}")
