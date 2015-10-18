;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings
;; Para descobrir qual comando está associado a uma tecla, fazer:
;; C-h k
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-unset-key (kbd "C-x o")) ; Era 'other-window
(global-set-key (kbd "s-\\") 'other-window)

(global-unset-key (kbd "C-x C-f")) ; Era 'ido-find-file
(global-set-key (kbd "s-o") 'ido-find-file)
(global-set-key (kbd "M-s-b") 'ido-display-buffer)
(global-unset-key (kbd "C-x C-b")) ; Era 'ibuffer
(global-set-key (kbd "s-b") 'ibuffer)

;; Substitui os comandos de movimentação (C-v M-v M-b e M-f)
(global-unset-key (kbd "C-v"))
(global-unset-key (kbd "M-v"))
(global-unset-key (kbd "M-b"))
(global-unset-key (kbd "M-f"))

(global-set-key (kbd "s-<right>") 'forward-word)
(global-set-key (kbd "s-<left>")  'backward-word)
(global-set-key (kbd "s-<up>")    'scroll-down-command)
(global-set-key (kbd "s-<down>")  'scroll-up-command)

;; Substitui o início e fim de linha.
(global-unset-key (kbd "C-a"))
(global-unset-key (kbd "C-e"))

(global-set-key (kbd "s-M-<left>")  'move-beginning-of-line)
(global-set-key (kbd "s-M-<right>") 'move-end-of-line)

;; Substitui os comandos de início e fim de página (M-< C->)
(global-unset-key (kbd "M-<"))
(global-unset-key (kbd "C->"))

(global-set-key (kbd "s-M-<up>")   'beginning-of-buffer)
(global-set-key (kbd "s-M-<down>") 'end-of-buffer)

;; Substitui M-<backspace>, M-D e M-m
(global-unset-key (kbd "M-<backspace>"))
(global-unset-key (kbd "M-D"))
(global-unset-key (kbd "M-m"))

(global-set-key (kbd "s-<backspace>") 'backward-kill-word)
(global-set-key (kbd "s-d") 'kill-word)
(global-set-key (kbd "s-m") 'back-to-indentation)

;; Busca no texto
(global-unset-key (kbd "C-s"))
(global-set-key (kbd "M-s-s") 'isearch-forward)

;; Find matching parens
(global-set-key (kbd "s-%") 'match-paren)

;; Substitui o C-g por ESC
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;; Janelas
(global-unset-key (kbd "C-x 0"))
(global-unset-key (kbd "C-x 1"))
(global-unset-key (kbd "C-x 2"))
(global-unset-key (kbd "C-x 3"))
(global-unset-key (kbd "C-x {"))
(global-unset-key (kbd "C-x }"))

(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "s-{") 'shrink-window-horizontally)
(global-set-key (kbd "s-}") 'enlarge-window-horizontally)
(global-set-key (kbd "s-+") 'enlarge-window)
(global-set-key (kbd "s--") 'shrink-window)
(global-set-key (kbd "s-=") 'shrink-window-if-larger-than-buffer)

;; Próx. ocorrência da busca
;; Substitui print-frame
(global-set-key (kbd "s-p") 'isearch-repeat-backward)
;; Substitui make-frame
(global-set-key (kbd "s-n") 'isearch-repeat-forward)

;; Ir para linha
(global-unset-key (kbd "M-g g"))
(global-unset-key (kbd "s-g"))
(global-set-key (kbd "s-l") 'goto-line)

;;; Python
(define-key python-mode-map (kbd "s-M-p") 'python-shell-switch-to-shell)
(define-key python-mode-map (kbd "s-M-c") 'python-check)

;; Identar
(define-key python-mode-map (kbd "s->") 'python-indent-shift-right)
(define-key python-mode-map (kbd "s-<") 'python-indent-shift-left)

;; Magit
(global-set-key (kbd "s-g") 'magit-status)

;; Mover entre os buffers:
(global-set-key (kbd "C-s-<right>") 'next-buffer)
(global-set-key (kbd "C-s-<left>") 'previous-buffer)
(global-set-key (kbd "s-`") 'ns-next-frame)
