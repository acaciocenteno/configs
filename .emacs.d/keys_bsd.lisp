;; Atalho para abrir configs
(global-set-key (kbd "C-c e") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
;; Reload config
(global-set-key (kbd "C-c C-r") (lambda () (interactive) (load-file "~/.emacs.d/init.el")))

;; Usar setas para mover entre buffers
(global-set-key (kbd "C-<up>") 'previous-buffer)
(global-set-key (kbd "C-<left>") 'previous-buffer)
(global-set-key (kbd "C-<right>") 'next-buffer)
(global-set-key (kbd "C-<down>") 'next-buffer)

;; Atalhos
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-w") 'kill-buffer)
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-S-f") 'isearch-backward)

;; Frame related shortcuts
(global-set-key (kbd "C-0") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-bellow)
(global-set-key (kbd "C-S-<up>") 'other-window)
(global-set-key (kbd "C-S-<down>") 'other-window)
(global-set-key (kbd "C-S-<left>") 'other-window)
(global-set-key (kbd "C-S-<right>") 'other-window)
(global-set-key (kbd "C-b") 'ido-switch-buffer)

;; Incrementa/decrementa a fonte
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Substitui o C-g por ESC
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-z") 'undo)

;; OrgMode
(global-set-key (kbd "C-c a") 'org-agenda)



(global-set-key (kbd "C-c") 'copy-line)
(global-set-key (kbd "M-q") 'kill-region)

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "<ESC> <up>") 'move-line-up)
(global-set-key (kbd "<ESC> <down>") 'move-line-down)


;; duplicate a line
(global-set-key (kbd "C-d") 'djcb-duplicate-line)

;; duplicate a line and comment the first
(global-set-key (kbd "C-u") (lambda()(interactive)(djcb-duplicate-line t)))
