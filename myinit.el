(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(package-install 'use-package)

(package-install 'all-the-icons)

(use-package elpy
:config
;; Hook to start elpy when in python mode (visiting a python file or buffer)
(add-hook 'python-mode-hook (lambda ()
(elpy-enable)))
;; Set Ipython's envoirment
;; (setq python-shell-interpreter "jupyter"
;; python-shell-interpreter-args "console --simple-prompt"
;; python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
"jupyter")
(elpy-enable))

(use-package dashboard
:config
(setq dashboard-banner-logo-title "Welcome back, Nicolò")
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-footer nil)
(dashboard-setup-startup-hook))

(use-package magit
:config
(global-set-key (kbd "C-g") 'magit))

(package-install 'counsel)

(use-package swiper
:config
(global-set-key (kbd "C-s") 'swiper))

(use-package ivy
:config
;; This allows minibuffer commands while inside the minibuffer. I believe my Ivy settings use it quite a bit.
(setq enable-recursive-minibuffers t)
;; This adds bookmarks and recent files to 'ivy-switch-buffer'. This adds a bit of initial load time but is pretty useful in my opinion.
(setq ivy-use-virtual-buffers t)
;; Counsel-minibuffer-history will show the minibuffer commands history. The keybinding only works when inside the minibuffer.
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
;; Consel-M-x is Ivy's version of 'execute-extended-command'. 
(global-set-key (kbd "M-x") 'counsel-M-x)
;; Counsel-find-file add Ivy completion to find-file.
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; Consel-find-library opens the minibuffer listing all available libraries (often associated with packages) and lets you search and select one opening it's source code.
(global-set-key (kbd "<f1> l") 'counsel-find-library)
;; Consel-describe-function opens the minibuffer listing all available functions and opens the documentation page for the one you select.
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; Consel-describe-variable opens the minibuffer listing all available variables and opens the documentation page for the one you select.
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; Consel-describe-symbol opens the minibuffer listing all available symbols and opens the documentation page for the one you select.
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
;; Ivy-resume allows you to get back where you left the last ivy completion.
(global-set-key (kbd "<f6>") 'ivy-resume)
:init
;; This activates Ivy
(ivy-mode 1))

(use-package writeroom-mode
:config
(global-set-key (kbd "C-x C-w") 'writeroom-mode))

(use-package pdf-tools
:config
(add-hook 'PDFView-mode-hook (lambda ()
                                (pdf-view-midnight-minor-mode)))
(pdf-tools-install))

(package-install 'emms)

(use-package emms
:config 
;;Midnight mode actively changes the colors of PDFs to be homougenous with the theme you have loaded. I added a hook to activate it automatically since I use pdf-tools mainly to read books or documents. If you need to see the original colors just disable it manually with < /C-c C-r m/ >.
(global-set-key (kbd "C-c C-x C-e") 'emms)
;; I have binded /add directory/ to < /C-c C-+/ >. This function opens the minubuffer prompting for a directory and add to emms all music files contained in it.
(global-set-key (kbd "C-c C-+") 'emms-add-directory)
;; Player config
(setq exec-path (append exec-path '("/usr/local/bin")))
(add-to-list 'load-path "~/.emacs.d/site-lisp/emms/lisp")
(require 'emms-setup)
(require 'emms-player-mplayer)
(emms-standard)
(emms-default-players)
(define-emms-simple-player mplayer '(file url)
      (regexp-opt '(".ogg" ".mp3" ".wav" ".mpg" ".mpeg" ".wmv" ".wma"
                    ".mov" ".avi" ".divx" ".ogm" ".asf" ".mkv" "http://" "mms://"
                    ".rm" ".rmvb" ".mp4" ".flac" ".vob" ".m4a" ".flv" ".ogv" ".pls"))
      "mplayer" "-slave" "-quiet" "-really-quiet" "-fullscreen"))

(use-package flycheck
:config
(add-hook 'after-init-hook #'global-flycheck-mode))

(global-set-key (kbd "C-x C-e") 'eshell)

(menu-bar-mode 0)

(tool-bar-mode 0)

(global-set-key (kbd "C-x C-l") 'global-display-line-numbers-mode)

(global-visual-line-mode 1)

(load-theme 'minimal-black t)

(setq org-agenda-files (list "~/Documents/org/"))

(global-set-key (kbd "C-x C-a") 'org-agenda)

(global-set-key (kbd "M-5") "~")

(global-set-key (kbd "M-à") "#")

(global-set-key (kbd "M-è") "[")
(global-set-key (kbd "M-+") "]")

(global-set-key (kbd "M-é") "{")
(global-set-key (kbd "M-*") "}")

; (load-file "~/.emacs.d/elegant-emacs/elegant.el")
