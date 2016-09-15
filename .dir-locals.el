;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((nil
  (eval . (progn
			(setq op/repository-directory "."
				  op/site-domain "http://katherine.cox-buday.com"
				  op/site-main-title "Katherine Cox-Buday"
				  op/site-sub-title ""
				  op/theme-root-directory "../org-page-themes/"
				  op/theme 'clean
				  op/category-config-alist (cons '("public-works"
												   :label "Public Works"
												   :category-index t
												   :uri-template "/public-works/")
												 op/category-config-alist))))))
