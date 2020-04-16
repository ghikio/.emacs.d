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

;; Test use-package to be installed, otherwise installs it.
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(org-babel-load-file
 (expand-file-name
  (concat user-emacs-directory "/main.org")))

(eval-when-compile
  (require 'use-package))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(avy-timeout-seconds 0.3)
 '(beacon-color "#ff9da4")
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("2f945b8cbfdd750aeb82c8afb3753ebf76a1c30c2b368d9d1f13ca3cc674c7bc" "34dc2267328600f3065630e161a8ae59939700684c232073cdd5afbf78456670" "0f1733ad53138ddd381267b4033bcb07f5e75cd7f22089c7e650f1bb28fc67f4" "fa477d10f10aa808a2d8165a4f7e6cee1ab7f902b6853fbee911a9e27cf346bc" "7d4340a89c1f576d1b5dec57635ab93cdc006524bda486b66d01a6f70cffb08e" "a9d67f7c030b3fa6e58e4580438759942185951e9438dd45f2c668c8d7ab2caf" "e62b66040cb90a4171aa7368aced4ab9d8663956a62a5590252b0bc19adde6bd" "ef07cb337554ffebfccff8052827c4a9d55dc2d0bc7f08804470451385d41c5c" "ff829b1ac22bbb7cee5274391bc5c9b3ddb478e0ca0b94d97e23e8ae1a3f0c3e" "11e0bc5e71825b88527e973b80a84483a2cfa1568592230a32aedac2a32426c1" "51043b04c31d7a62ae10466da95a37725638310a38c471cc2e9772891146ee52" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "427fa665823299f8258d8e27c80a1481edbb8f5463a6fb2665261e9076626710" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "ed85d92735406d8b9dc96b1b7f1e1c19a908bcb550e6dcaccdbe62e43d6efbeb" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "1cfc3c062790a8d6f9ce677c50cf671609f45c32695778873b4a7619f1e749b5" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "ab9456aaeab81ba46a815c00930345ada223e1e7c7ab839659b382b52437b9ea" "9954ed41d89d2dcf601c8e7499b6bb2778180bfcaeb7cdfc648078b8e05348c6" "e3c87e869f94af65d358aa279945a3daf46f8185f1a5756ca1c90759024593dd" "e838d6375a73fda607820c65eb3ea1f9336be7bd9a5528c9161e10c4aa663b5b" "256bd513a9875cd855077162cdfee8d75b0ad7e18fe8b8cbc10412561fbef892" "4e10cdf7d030fb41061cf57c74f6ddfc19db8d4af6c8e0723dc77f9922543a3d" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "af4dc574b2f96f5345d55b98af024e2db9b9bbf1872b3132bc66dffbf5e1ba1d" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "34c99997eaa73d64b1aaa95caca9f0d64229871c200c5254526d0062f8074693" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "955426466aa729d7d32483d3b2408cf474a1332550ad364848d1dfe9eecc8a16" "95d17369f041df4d642bee73b7d57cffeba240877d73d22688f1a84ed317e96b" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "ffa6fbce4ffcec1f970f3430c927604c34bc1de2eb8e1454837a7f9d9f9b1bc5" default)))
 '(doom-modeline-height 4)
 '(evil-leader/no-prefix-mode-rx (quote ("magit-.*-mode" "gnus-.*-mode")))
 '(fci-rule-color "#003f8e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(git-gutter-fr:side (quote right-fringe))
 '(jdee-db-active-breakpoint-face-colors (cons "#1c1f24" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1c1f24" "#7bc275"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1c1f24" "#484854"))
 '(linum-relative-backend (quote display-line-numbers-mode))
 '(linum-relative-current-symbol "")
 '(objed-cursor-color "#ff665c")
 '(package-selected-packages
   (quote
    (lsp-mode rustic flycheck-irony company-irony irony counsel-gtags flycheck-haskell flycheck-clojure intero htmlize org-pomodoro kaolin-themes doom-themes doom-modeline yasnippet-snippets which-key web-mode use-package tomatinho spaceline-all-the-icons slime rainbow-delimiters racer paredit ox-twbs organic-green-theme org-bullets notmuch neotree magit linum-relative ivy-posframe hydra gruvbox-theme git-gutter-fringe flycheck-rust evil-leader emmet-mode editorconfig django-theme diminish counsel-projectile company-c-headers color-theme-sanityinc-tomorrow cider cargo beacon)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#1d2021")))
 '(right-fringe-width 6 t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
