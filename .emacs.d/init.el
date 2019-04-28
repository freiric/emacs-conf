;; (require 'server)
;; (unless (server-running-p)
;;   (server-start))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;; Code:
(package-initialize)


(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
(tabbar-mode t)
(require 'ox-confluence)

(load-file "~/.emacs.d/ob-xml.el")
(require 'ob-xml)
(setq auto-save-default nil)

;; (setq org-plantuml-jar-path
;;       (expand-file-name "/home/fb019397/local/plantuml.jar"))


;; (global-set-key "\C-cu" 'my/org-babel-untangle)

;; (defun my/org-babel-untangle (path)
;;   (interactive "fFile to include: ")
;;   (message "Untangling '%s'..." path)
;;   (save-current-buffer
;;     (let ((lang (save-current-buffer
;;                   (set-buffer (find-file-noselect path))
;;                   (my/mode->language major-mode))))
;;       (insert (format "\n** %s\n\n#+BEGIN_SRC %s :tangle %s\n"
;;                       (capitalize (replace-regexp-in-string "\\[_-\\]" " " (file-name-base path)))
;;                       lang
;;                       (file-relative-name path)))
;;       (forward-char (cadr (insert-file-contents path)))
;;       (insert "\n#+" "END_SRC\n"))))

;; (defun my/mode->language (mode)
;;   "Return the language for the given mode"
;;   (intern (replace-regexp-in-string "\\-mode$" "" (my/->string mode))))

;; (defun my/org-babel-untangle-tree (path)
;;   (interactive "Droot directory to untangle: ")
;;   (mapc 'my/org-babel-untangle
;;         (cl-remove-if 'file-directory-p
;;                       (f-files path (lambda (p) t) t))))
;; (defun my/->string (str)
;;   (cond
;;    ((stringp str) str)
;;    ((symbolp str) (symbol-name str))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#002b36" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(completion-styles (quote (basic emacs22)))
 '(confluence-url "https://wiki.ucern.com")
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(ecb-excluded-directories-regexps (quote ("^\\(CVS\\)$" "^\\.$" "^\\.\\.$" "^\\.git$")))
 '(ecb-layout-name "left15")
 '(ecb-options-version "2.40")
 '(ecb-other-window-behavior (quote only-edit))
 '(ecb-source-path (quote (("/" "/"))))
 '(ede-project-directories
   (quote
    ("/home/fb019397/Documents/Prod/haskell/shakespeare/shakespeare")))
 '(fci-rule-color "#073642")
 '(flycheck-highlighting-mode (quote sexps))
 '(flymake-log-level 3)
 '(font-use-system-font t)
 '(haskell-process-args-ghci (quote ("ghci -ferror-spans")))
 '(haskell-process-path-ghci "stack-ghci")
 '(haskell-process-type (quote stack-ghci))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(inhibit-startup-screen t)
 '(js3-boring-indentation t)
 '(js3-consistent-level-indent-inner-bracket t)
 '(js3-enter-indents-newline t)
 '(js3-expr-indent-offset 4)
 '(js3-indent-dots t)
 '(js3-indent-level 4)
 '(magit-diff-use-overlays nil)
 '(org-agenda-files (quote ("~/Documents/org/todo.org")))
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (java . t)
     (plantuml . t)
     (dot . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-directory "~/Documents/org")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-export-backends (quote (ascii html icalendar latex odt confluence s5)))
 '(org-export-with-sub-superscripts (quote {}))
 '(org-goto-interface (quote outline-path-completion))
 '(org-html-htmlize-output-type (quote css))
 '(org-image-actual-width nil)
 '(org-plantuml-jar-path "/home/fb019397/local/plantuml.jar")
 '(org-refile-active-region-within-subtree t)
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets
   (quote
    ((org-agenda-files :tag . "")
     ("todoProcess.org" :maxlevel . 9)
     ("todoPersonal.org" :maxlevel . 9))))
 '(org-refile-use-outline-path (quote file))
 '(org-src-fontify-natively t)
 '(org-startup-indented t)
 '(org-startup-with-inline-images t)
 '(org-structure-template-alist
   (quote
    (("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse"))))
 '(org-tag-faces (quote (("" . "grey"))))
 '(org-tag-persistent-alist
   (quote
    (("Stephane" . 83)
     ("Zeljka" . 90)
     ("Acher" . 65)
     ("Freiric" . 70)
     ("1.3.0" . 0)
     ("1.2.2" . 0))))
 '(org-todo-keywords (quote ((sequence "DOING" "TODO" "|" "DONE" "CANCELLED"))))
 '(package-archives
   (quote
    (("gelpy" . "https://jorgenschaefer.github.io/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("org" . "https://orgmode.org/elpa/")
     ("melpa-stable" . "http://stable.melpa.org/packages/"))))
 '(package-hidden-regexps (quote ("\\`org-mode")))
 '(package-selected-packages
   (quote
    (org-re-reveal yaml-mode groovy-mode nsis-mode org-plus-contrib ox-reveal plantuml-mode flymd markdown-preview-eww confluence org org-preview-html jdee jar-manifest-mode tabbar wrap-region web-mode w3m visual-regexp use-package typescript-mode solarized-theme smex smartparens smart-tabs-mode smart-mode-line projectile prodigy popwin pallet nyan-mode multiple-cursors markdown-mode magit js3-mode intero idle-highlight-mode htmlize flycheck-hdevtools flycheck-haskell flycheck-color-mode-line flycheck-cask expand-region exec-path-from-shell elpy ecb drag-stuff color-theme auctex)))
 '(safe-local-variable-values
   (quote
    ((TeX-master . "cvger")
     (header-auto-update-enabled))))
 '(show-paren-mode t)
 '(sql-oracle-program "sqlplus64")
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#2aa198" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#dc322f" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#859900"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#268bd2" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#b58900"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#d33682"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#cb4b16" :weight bold))))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#b58900")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#859900")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#2aa198")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal))))
 '(ecb-tag-header-face ((t (:background "gray15"))) t)
 '(flycheck-color-mode-line-error-face ((t (:inherit nil :background "red4" :foreground "black" :weight extra-bold))))
 '(flycheck-color-mode-line-warning-face ((t (:inherit nil :background "navy" :foreground "black" :weight normal))))
 '(flycheck-error ((t (:inherit error :background "red" :underline t))))
 '(flycheck-warning ((t (:inherit nil :background "dim gray"))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "white" :font "Verdana" :height 1.5 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :foreground "white" :font "Verdana" :height 1.75))))
 '(org-level-2 ((t (:inherit default :weight bold :foreground "white" :font "Verdana" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight bold :foreground "white" :font "Verdana" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "white" :font "Verdana" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "white" :font "Verdana"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "white" :font "Verdana"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "white" :font "Verdana"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "white" :font "Verdana"))))
 '(shm-quarantine-face ((t (:background "dark slate gray"))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "dark red"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default))))
 '(tabbar-default ((t (:inherit variable-pitch :background "#959A79" :foreground "black" :weight bold))))
 '(tabbar-highlight ((t (:underline t))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#95CA59"))))
 '(tabbar-separator ((t (:inherit tabbar-default :background "#95CA59"))))
 '(tabbar-unselected ((t (:inherit tabbar-default)))))


(show-paren-mode 1)
(require 'color-theme)
;(require 'markdown-preview-eww)


(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
;     (color-theme-hober)))
(color-theme-dark-laptop)))

(setq indent-tabs-mode 't)



;Deutsche Umlaute aktivieren
;; (setq locale-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (prefer-coding-system 'utf-8)
;aspell und flyspell
(setq-default ispell-program-name "aspell")
;; (setq ispell-dictionary "de_DE")
(setq ispell-dictionary "en")
(setq flyspell-issue-welcome-flag nil) ;; fix flyspell problem



;; enable copy paste to play well with other app
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
;; delete highlighted text by paste or keypressed
(delete-selection-mode 1)
;; arg >= 1 enable the menu bar. Menu bar is the File, Edit, Options,
;; Buffers, Tools, Emacs-Lisp, Help
;(menu-bar-mode 0)
;; With numeric ARG, display the tool bar if and only if ARG is
;; positive.  Tool bar has icons document (read file), folder (read
;; directory), X (discard buffer), disk (save), disk+pen (save-as),
;; back arrow (undo), scissors (cut), etc.
(tool-bar-mode 0)


;; headers
;; trouver comment faire marcher ça avec latex...
					;(load-file "~/.emacs.d/header2/header2.el")
;(load-file "~/.emacs.d/header2/header2-conf.el")
;; To have Emacs update file headers automatically whenever you save a
;; file, put this in your init file (~/.emacs):
;;
; (autoload 'auto-update-file-header "header2")
; (add-hook 'write-file-hooks 'auto-update-file-header)


;; To have Emacs add a file header whenever you create a new file in
;; some mode, put this in your init file (~/.emacs):

; (autoload 'auto-make-header "header2")
; (add-hook 'emacs-lisp-mode-hook 'auto-make-header)
; (add-hook 'shell-mode-hook 'auto-make-header)
;;
;; To have Emacs add a file header whenever you create a new file in
;; some mode, put this in your init file (~/.emacs):
;;
;(add-hook 'TeX-PDF-mode 'auto-make-header)
(column-number-mode t)
;(setq latex-run-command "xelatex")
;(setq-default TeX-engine 'xetex)
;(setq-default TeX-PDF-mode t)

(delete-selection-mode 1)
;;(setq frame-title-format (list "%f - " (getenv "USER") "@" (getenv "HOSTNAME")))
(setq frame-title-format '("" invocation-name "@" system-name "     "
      global-mode-string "     %f" ))
    ;; See also:  `display-time-format' and `mode-line-format'


;(require 'pc-select)
(global-set-key (kbd "C-S-<prior>") 'tabbar-backward-group)
(global-set-key (kbd "C-S-<next>") 'tabbar-forward-group)
(global-set-key (kbd "C-<prior>") 'tabbar-backward)
(global-set-key (kbd "C-<next>") 'tabbar-forward)
 ;; tabbar.el, put all the buffers on the tabs.

;; do not create backup files
(setq make-backup-files nil)


;(require 'smart-mode-line)

(if after-init-time (sml/setup)
  (add-hook 'after-init-hook 'sml/setup))

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-cask-setup))

(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
;; if you use multiple-cursors, this is for you:
(define-key global-map (kbd "C-c m") 'vr/mc-mark)

(add-hook 'js3-mode-hook 'smart-tabs-mode-enable)
;(smart-tabs-advice js3-indent-line js3-indent-level)

;(icy-mode 1)
(icomplete-mode 99)
(require 'iso-transl)


;; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; HASKELL
;; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

(load "~/.emacs.d/haskell-conf.el")
;(add-hook 'haskell-mode-hook 'intero-mode)


;;;; ORG MODE
;; Org-mode settings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-font-lock-mode 1)
(setq org-log-done t)
(require 'org)
;; org-directory=/home/fb019397/Documents/org
; uncommenting the following line try to open link within this file with tramp and scp and unsurprisingly fails doing it
;(setq org-agenda-files (concat org-directory  "/todo.org"))
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(global-visual-line-mode t)


(require 'org)
(require 'ox)
(require 'ox-html)

;; Path for pygments or command name
;z(defvar pygments-path "pygmentize")
(defvar pygments-path  "/home/fb019397/anaconda2/bin/pygmentize")

(defun pygments-org-html-code (code contents info)
  ;; Generating tmp file path.
  ;; Current date and time hash will ideally pass our needs.
  (setq temp-source-file (format "/tmp/pygmentize-%s.txt"(md5 (current-time-string))))
  ;; Writing block contents to the file.
  (with-temp-file temp-source-file (insert (org-element-property :value code)))
  ;; Exectuing the shell-command an reading an output
  (shell-command-to-string (format "%s -l \"%s\" -f html %s"
				   pygments-path
				   (or (org-element-property :language code)
				       "")
				   temp-source-file)))

(org-export-define-derived-backend 'pelican-html 'html
  :translate-alist '((src-block .  pygments-org-html-code)
		     (example-block . pygments-org-html-code)))


(require 'ox-publish)
(setq org-publish-project-alist
      '(
	("org-notes"
	 :base-directory "~/org/"
	 :base-extension "org"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble t
	 )

	("org-static"
	 :base-directory "~/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )

	("org" :components ("org-notes" "org-static"))
      ))

;; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; SCALA (sbt)
;; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

(define-derived-mode sbt-scala-mode scala-mode "Scala Mode for sbt"
  "A mode for my sbt files.")
(add-to-list 'auto-mode-alist '("\\.sbt\\'" . sbt-scala-mode))

;; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; fontification beautifier for org-mode babel template
;; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

(with-eval-after-load 'org
  (defvar-local rasmus/org-at-src-begin -1
    "Variable that holds whether last position was a ")

  (defvar rasmus/ob-header-symbol ?☰
    "Symbol used for babel headers")

  (defun rasmus/org-prettify-src--update ()
    (let ((case-fold-search t)
          (re "^[ \t]*#\\+begin_src[ \t]+[^ \f\t\n\r\v]+[ \t]*")
          found)
      (save-excursion
        (goto-char (point-min))
        (while (re-search-forward re nil t)
          (goto-char (match-end 0))
          (let ((args (org-trim
                       (buffer-substring-no-properties (point)
                                                       (line-end-position)))))
            (when (org-string-nw-p args)
              (let ((new-cell (cons args rasmus/ob-header-symbol)))
                (cl-pushnew new-cell prettify-symbols-alist :test #'equal)
                (cl-pushnew new-cell found :test #'equal)))))
        (setq prettify-symbols-alist
              (cl-set-difference prettify-symbols-alist
                                 (cl-set-difference
                                  (cl-remove-if-not
                                   (lambda (elm)
                                     (eq (cdr elm) rasmus/ob-header-symbol))
                                   prettify-symbols-alist)
                                  found :test #'equal)))
        ;; Clean up old font-lock-keywords.
        (font-lock-remove-keywords nil prettify-symbols--keywords)
        (setq prettify-symbols--keywords (prettify-symbols--make-keywords))
        (font-lock-add-keywords nil prettify-symbols--keywords)
        (while (re-search-forward re nil t)
          (font-lock-flush (line-beginning-position) (line-end-position))))))

  (defun rasmus/org-prettify-src ()
    "Hide src options via `prettify-symbols-mode'.

  `prettify-symbols-mode' is used because it has uncollpasing. It's
  may not be efficient."
    (let* ((case-fold-search t)
           (at-src-block (save-excursion
                           (beginning-of-line)
                           (looking-at "^[ \t]*#\\+begin_src[ \t]+[^ \f\t\n\r\v]+[ \t]*"))))
      ;; Test if we moved out of a block.
      (when (or (and rasmus/org-at-src-begin
                     (not at-src-block))
                ;; File was just opened.
                (eq rasmus/org-at-src-begin -1))
        (rasmus/org-prettify-src--update))
      ;; Remove composition if at line; doesn't work properly.
      ;; (when at-src-block
      ;;   (with-silent-modifications
      ;;     (remove-text-properties (match-end 0)
      ;;                             (1+ (line-end-position))
      ;;                             '(composition))))
      (setq rasmus/org-at-src-begin at-src-block)))

  (defun rasmus/org-prettify-symbols ()
    (mapc (apply-partially 'add-to-list 'prettify-symbols-alist)
          (cl-reduce 'append
                     (mapcar (lambda (x) (list x (cons (upcase (car x)) (cdr x))))
                             `(("#+begin_src" . ?✎) ;; ➤ 🖝 ➟ ➤ ✎
                               ("#+end_src"   . ?□) ;; ⏹
                               ("#+header:" . ,rasmus/ob-header-symbol)
                               ("#+begin_quote" . ?»)
                               ("#+end_quote" . ?«)))))
    (turn-on-prettify-symbols-mode)
    (add-hook 'post-command-hook 'rasmus/org-prettify-src t t))
    (add-hook 'org-mode-hook #'rasmus/org-prettify-symbols))

(defun shk-fix-inline-images ()
  (when org-inline-image-overlays
    (org-redisplay-inline-images)))

(with-eval-after-load 'org
	       (add-hook 'org-babel-after-execute-hook 'shk-fix-inline-images))

(let* ((variable-tuple (cond ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
                             ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
                             ((x-list-fonts "Verdana")         '(:font "Verdana"))
                             ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
                             (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color     (face-foreground 'default nil 'default))
       (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

  (custom-theme-set-faces 'user
                          `(org-level-8 ((t (,@headline ,@variable-tuple))))
                          `(org-level-7 ((t (,@headline ,@variable-tuple))))
                          `(org-level-6 ((t (,@headline ,@variable-tuple))))
                          `(org-level-5 ((t (,@headline ,@variable-tuple))))
                          `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
                          `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
                          `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
                          `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
                          `(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))
(require 'ox-reveal)

(add-to-list 'org-export-filter-timestamp-functions
             #'endless/filter-timestamp)
(defun endless/filter-timestamp (trans back _comm)
  "Remove <> around time-stamps."
  (pcase back
    ((or `jekyll `html)
     (replace-regexp-in-string "&[lg]t;" "" trans))
    (`latex
     (replace-regexp-in-string "[<>]" "" trans))))
(setq-default org-display-custom-times t)
;;; Before you ask: No, removing the <> here doesn't work.
;; (setq org-time-stamp-custom-formats
;;       '("<%d %b %Y>" . "<%d/%m/%y %a %H:%M>"))
(setq org-time-stamp-custom-formats '("<%a %d-%B '%y>" . "<%-l:%M %p, %a %d-%B '%y>"))

;; System locale to use for formatting time values.
(setq system-time-locale "C")         ; Make sure that the weekdays in the
                                      ; time stamps of your Org mode files and
                                      ; in the agenda appear in English.

(put 'upcase-region 'disabled nil)
(require 'org-tempo)
