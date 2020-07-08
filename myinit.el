(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/site-lisp/")


; list the packages you want
(setq package-list
    '(auto-indent-mode use-package gruvbox-theme))

; install Elpy (Python IDE)
(use-package elpy
:ensure t
:init
)


(use-package treemacs
:ensure t
:init
)
(global-set-key (kbd "C-x C-g") 'treemacs)
(global-set-key (kbd "C-x <C-tab>") 'treemacs-edit-workspaces)
(treemacs-git-mode 'deferred)
(treemacs-tag-follow-mode)


(use-package dracula-theme
:ensure t
:init
)


(use-package auto-indent-mode
:ensure t
:init
)


; activate all the packages
(package-initialize)
(elpy-enable)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Open agenda as initial buffer
(setq inhibit-splash-screen t)
(org-agenda-list)
(delete-other-windows)(add-hook 'after-init-hook 'org-agenda-list)

;; Hide the tool bar
(tool-bar-mode 0)

;; Hide the menu bar
(setq ns-auto-hide-menu-bar t)

;; Load Monospace font
(set-frame-font "Monospace-8" nil t)

;; Set visual line mode by default
(global-visual-line-mode 1)

;; Show numbered lines
(global-display-line-numbers-mode)

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; Export settings
(require 'ox-md)

;; View inline images in org-mode
(setq org-startup-with-inline-images t)

;; Add shift selection to org mode
(setq org-support-shift-select t)

;; SETS FOR AGENDA
(require 'org)
;; Use Ctrl-a to open AGENDA
(global-set-key (kbd "\C-a") 'org-agenda)
(global-set-key (kbd "\C-k") 'org-capture)
(global-set-key (kbd "\C-d") 'org-todo)
(setq org-log-done t)
;; Load org files for agenda
(setq org-agenda-files '("~/Documents/org/Agenda"))

;; Paste things from clipboard (other programs/apps)
(setq select-enable-primary nil)
(setq select-enable-clipboard t)


;; Set interactive search
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; (global-set-key (kbd "C-c") 'kill-ring-save)

;; Use C-C and C-v like modern editors/applications
(cua-mode 1)

;; Save all backup files in a specific directory
(setq backup-directory-alist `(("~/.emacs.d/backups")))

;; Use alt-5 to insert tilde
(global-set-key (kbd "M-5") "~")


;; Use tabs instead of spaces
(setq-default indent-tabs-mode t)
(setq-default tab-width 4) ; Assuming you want your tabs to be four spaces wide
(defvaralias 'c-basic-offset 'tab-width)
