(tool-bar-mode 0)

(scroll-bar-mode 0)

;(defun mode-line-render (left right)
;  (let* ((available-width (- (window-width) (length left) )))
;    (format (format "%%s %%%ds" available-width) left right)))

; trying

(setq mode-line-format
(list
;; value of `mode-name'
"%m: "
;; value of current buffer name
"buffer %b, "
;; value of current line number
"line %l "
"-- user: "
;; value of user
(getenv "USER")))

(show-paren-mode t)

(global-display-line-numbers-mode 1)
