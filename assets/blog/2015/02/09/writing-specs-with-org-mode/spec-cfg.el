
(require 'package)

;; Install requisite packages
;;
;;

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(mapcar #'(lambda (package) (unless (package-installed-p package) (package-install package)))
        '(org-plus-contrib plantuml-mode))

;; Set up plantuml.
;;
;;

(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t)))

(setq org-plantuml-jar-path
      (setq plantuml-jar-path (expand-file-name "./plantuml.jar")))

;; Setup latex exporting
;;
;;

(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))

(add-to-list 'org-latex-classes
             '("my-style" 
               "\\documentclass{./my-style} 
                 [DEFAULT-PACKAGES]
                 [PACKAGES]
                 [EXTRA]"
               ("\\section{%s}" . "\\section{%s}")
               ("\\subsection{%s}" . "\\subsection{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection{%s}")
               ("\\paragraph{%s}" . "\\paragraph{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

;; Switch into CUA mode for those not familar with emacs keybindings.
;;
;;

(cua-mode)
