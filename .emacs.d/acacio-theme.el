(deftheme acacio
  "Tema de baixo contraste e cores pasteis.")

;; Para decobrir qual o face abaixo do cursor, fazer C-u C-x =

;; http://stackoverflow.com/questions/18688387/in-emacs24-python-mode-how-to-customize-each-syntaxs-color
(defvar exit-keywords
  (concat "\\b\\(?:"
    (regexp-opt (list "return" "yield"))
  "\\)\\b"))

(defvar exit-color (make-face 'exit-color))
(set-face-attribute 'exit-color nil
;;  :foreground "#ff7f50" :bold t)
  :foreground "#cd853f" :bold t)

(defvar other-keywords
  (concat "\\b\\(?:"
	(regexp-opt (list "and" "del" "from" "not" "while" "as" "elif" "global" "or" "with" "assert" "else" "if" "pass" "break" "except" "import" "class" "in" "raise" "continue" "finally" "is" "def" "for" "lambda" "try" "print" "exec" "nonlocal" "self"))
  "\\)\\b"))

(defvar other-color (make-face 'other-color))
(set-face-attribute 'other-color nil
  :foreground "#448AA9" :bold t)

(font-lock-add-keywords 'python-mode (list
  (list (concat
    "\\("exit-keywords"\\)") 1 'exit-color t)

  (list (concat
		 "\\("other-keywords"\\)") 1 'other-color t)
))

(setq-default cursor-type 'bar)

(custom-theme-set-faces
 'acacio
 '(default ((t (:inherit nil :stipple nil :background "#1A1A1A" :foreground "#E7F9F1"))))
 ;; '(cursor ((t (:background "#656565"))))
 '(cursor ((t (:background "#ffffff"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:weight bold :foreground "#ddaa6f"))))
 '(minibuffer-prompt ((t (:foreground "#7ca6cd"))))
 '(highlight ((t (:underline (:color foreground-color :style line) :foreground "#ffffff" :background "#454545"))))
 '(region ((t (:foreground "#f6f3e8" :background "#444444"))))
 '(shadow ((t (:foreground "grey70"))))
 '(secondary-selection ((t (:foreground "#f6f3e8" :background "#333366"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((t (:foreground "#448AA9"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
;; '(font-lock-comment-face ((t (:italic t :foreground "#87cefa" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "#848076"))))
;; '(font-lock-constant-face ((t (:foreground "#ff7f50"))))
 '(font-lock-constant-face ((t (:foreground "#bdb76b"))))
;; '(font-lock-doc-face ((t (:foreground "#ffebcd"))))
 '(font-lock-doc-face ((t (:foreground "#848076"))))
;; '(font-lock-function-name-face ((t (:foreground "#cd853f"))))
 '(font-lock-function-name-face ((t (:foreground "#6A807B"))))
;; '(font-lock-keyword-face ((t (:foreground "#7ca6cd"))))
 '(font-lock-keyword-face ((t (:foreground "#448AA9"))))
 '(font-lock-negation-char-face ((t nil)))
;; '(font-lock-preprocessor-face ((t (:foreground "#7ca6cd" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "#448AA9"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#deb887"))))
;; '(font-lock-type-face ((t (:weight bold :foreground "#6ca6cd"))))
;; '(font-lock-type-face ((t (:weight bold :foreground "#7ca6cd"))))
 '(font-lock-type-face ((t (:foreground "#448AA9"))))
;; '(font-lock-variable-name-face ((t (:foreground "#bdb76b"))))
 '(font-lock-variable-name-face ((t (:foreground "#E7F9F1"))))
 '(font-lock-warning-face ((t (:foreground "#ccaa8f" :inherit (error)))))
 '(button ((t (:foreground "#f6f3e8" :background "#333333" :inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#8ac6f2"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#e5786d" :inherit (link)))))
 '(fringe ((t (:background "#202020"))))
 '(linum ((t (:background "#202020" :foreground "#757370"))))
 '(header-line ((t (:box nil :foreground "#e7f6da" :background "#303030" :inherit (mode-line)))))
 '(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
 '(mode-line ((t (:box (:line-width -1 :color nil :style released-button) :foreground "#f6f3e8" :background "#444444"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40"))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color "grey40" :style nil) :foreground "#857b6f" :background "#444444" :inherit (mode-line)))))
 '(isearch ((t (:foreground "#857b6f" :background "#343434"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:foreground "#a0a8b0" :background "#384048"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
;; Latex
 '(font-latex-sectioning-1-face  ((t (:foreground "#bdb76b"))) )
 '(font-latex-sectioning-2-face  ((t (:foreground "#bdb76b"))) )
 '(font-latex-sectioning-3-face  ((t (:foreground "#bdb76b"))) )
 '(font-latex-sectioning-4-face  ((t (:foreground "#bdb76b"))) )
;; Outlines
 '(outline-1 ((t (:foreground "#7ca6cd"))))
 '(outline-2 ((t (:foreground "#838b83"))))
 '(outline-3 ((t (:foreground "#cdcdc1"))))
;; OrgMode
 '(org-todo ((t (:foreground "#cdc9a5" :weight bold))))
 '(org-done ((t (:foreground "#556b2f" :weight bold))))
 '(org-date ((t (:foreground "#cdcdc1"))))
)

(provide-theme 'acacio)
