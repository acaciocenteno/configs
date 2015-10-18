(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
	("1916bdf62a4b177b7b026a1106f2fd8a897b5383dc91f249b36d8793697283ee" "8395b16f3c412293c22e9591f0d66dadc216e676ad081fb67f8cc8d795a6c085" "9c8b27c7876573af21f2ae76e97218229848fd6eb1bcc3dae70b276d61a4c5ff" default)))
 '(ergoemacs-ctl-c-or-ctl-x-delay 0.2)
 '(ergoemacs-handle-ctl-c-or-ctl-x (quote both))
 '(ergoemacs-ini-mode t)
 '(ergoemacs-keyboard-layout "us")
 '(ergoemacs-mode nil)
 '(ergoemacs-smart-paste nil)
 '(ergoemacs-theme "standard")
 '(ergoemacs-theme-options nil)
 '(ergoemacs-use-menus t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(initial-scratch-message "")
 '(menu-bar-mode nil)
 '(org-CUA-compatible nil)
 '(org-special-ctrl-a/e nil)
 '(org-support-shift-select nil)
 '(scroll-error-top-bottom nil)
 '(set-mark-command-repeat-pop nil)
 '(shift-select-mode t)
 '(tool-bar-mode nil))

;; Configs gerais
(setq ring-bell-function #'ignore)

;; Remove a tela de startup
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;; Remove espacos ao final da linhas
(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

;; Usa espacos no lugar de tabs
(setq indent-tabs-mode nil)

;; Usa 4 espacos para tab (PEP8)
(setq default-tab-width 4)

;; Ignora a caixa nas buscas
(setq case-fold-search t)

;; Adiciona uma linha ao final dos arquivos
(setq require-final-newline t)

;; Pacotes
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
						 ("marmalade" . "http://marmalade-repo.org/packages/")
						 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Ido
(require 'ido)
(ido-mode t)

;; Salvas backups em um só lugar
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Replace somente na area marcada
(setq transient-mark-mode t)

;; Suporte a UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Coisas dependentes do sistema
(cond
 ((eq system-type 'berkeley-unix) (load-file "~/.emacs.d/keys_bsd.lisp"))
 ((eq system-type 'gnu/linux)     (load-file "~/.emacs.d/keys_bsd.lisp"))
 ((eq system-type 'darwin)        (load-file "~/.emacs.d/keys_osx.lisp"))
 )

;; Corrige o backspace
(if (getenv "SSH_CLIENT")
	(normal-erase-is-backspace-mode 0)
    (normal-erase-is-backspace-mode 1)
)

(add-to-list 'load-path "~/.emacs.d/themes")

(add-hook 'after-init-hook
   (lambda ()
	 (if (display-graphic-p)
		 (progn
		   (winner-mode 1)
		   (global-unset-key (kbd "ESC ESC ESC"))))))


;; Tema
(add-hook 'after-init-hook
		  (lambda ()
			(if (display-graphic-p)
				(load-theme 'acacio)
			    (load-theme 'wombat))))

(add-hook 'after-make-frame-functions
		  (lambda ()
			(if (display-graphic-p)
				(load-theme 'acacio)
			    (load-theme 'wombat))))

;; Autocomplete (Instalado a partir do packages)
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20150626.711")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; Coisas de C
(add-hook 'c-mode-common-hook 'electric-pair-mode)
(setq-default c-basic-offset 4)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; OrgMode
(load-file "~/.emacs.d/org.lisp")
