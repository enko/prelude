;; Here are some examples of how to override the defaults for the
;; various prelude-emacs settings.  To *append* to any of the
;; configurations attached to prelude-*-hooks, you can attach a
;; function to the appropriate hook:

;; disable whitespace-mode and whitespace-cleanup
;; (add-hook 'prelude-prog-mode-hook
;;           (lambda ()
;;             (prelude-turn-off-whitespace)
;;             (remove-hook 'before-save-hook 'whitespace-cleanup)) t)

;; For other global settings, just run the appropriate function; all
;; personal/*.el files will be evaluate after prelude-emacs is loaded.

;; disable line highlight
(global-hl-line-mode -1)

;; make the cursor blinking
;; (blink-cursor-mode t)

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

(setq ssl-certificate-verification-policy 1)

(custom-set-variables
 '(haskell-mode-hook '(turn-on-haskell-simple-indent)))

(setq show-paren-style 'expression)

(provide 'personal)
