(package-initialize)

(package-install 'use-package)

(package-install 'all-the-icons)

(package-install 'elpy)
(require 'elpy)

(package-install 'dashboard)

(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome back Nicolò")
;(setq dashboard-startup-banner [VALUE])
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-footer nil)

(package-install 'modus-vivendi-theme)
(load-theme 'modus-vivendi t)

(global-set-key (kbd "M-5") "~")
