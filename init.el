(require 'package)
(setq package-enable-at-startup nil)

;; Set up some package respositories.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "lib/"))

;; Test use-package to be installed, otherwise installs it.
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(org-babel-load-file
 (expand-file-name
  (concat user-emacs-directory "/conf/conf.org")))

(eval-when-compile
  (require 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(custom-safe-themes
     (quote
       ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
  '(package-selected-packages
     (quote
       (ox-twbs linum-relative evil-leader gruvbox-theme beacon diminish hydra cider slime company-c-headers ggtags tomatinho which-key magit color-theme-sanityinc-tomorrow organic-green-theme django-theme rainbow-delimiters hydra-posframe ivy-posframe paredit notmuch all-the-icons spaceline-config fancy-battery info+ spaceline-all-the-icons spaceline emmet-mode git-gutter-fringe counsel-projectile yasnippet-snippets yasnippet web-mode projectile 0blayout org-bullets editorconfig company markdown-mode cargo htmlize use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
