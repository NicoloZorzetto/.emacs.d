;; Open agenda as initial buffer
(setq inhibit-splash-screen t)
(org-agenda-list)
(delete-other-windows)(add-hook 'after-init-hook 'org-agenda-list)

;; Hide the tool bar
(tool-bar-mode 0)

;; Hide the menu bar
(setq ns-auto-hide-menu-bar t)

;; Load Monospace font
(set-frame-font "Monospace-12" nil t)

;; Set the theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'zenburn t)
;; (load-theme 'nofrils-acme-theme)

;; Set the initial buffer to something else
;; (setq initial-buffer-choice "~/.emacs.d/initial_buffer.org")

;; Set visual line mode by default
(global-visual-line-mode 1)

;; TRANSPARENCY
;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(85 . 50) '(100 . 100)))))
'toggle-transparency

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
