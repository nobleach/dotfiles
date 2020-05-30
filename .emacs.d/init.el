(when (>= emacs-major-version 24)
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (load-theme 'wombat t)

  (set-frame-parameter (selected-frame) 'alpha '(85 85))

  (add-to-list 'default-frame-alist '(alpha 85 85))

  ; (when (eq system-type 'darwin)
  ;     ;; default Latin font (e.g. Consolas)
  ;     (set-face-attribute 'default nil :family "DejaVu Sans Mono for Powerline")
  ;     ;; default font size (point * 10)
  ;     ;;
  ;     ;; WARNING!  Depending on the default font,
  ;     ;; if the size is not supported very well, the frame will be clipped
  ;     ;; so that the beginning of the buffer may not be visible correctly. 
  ;     (set-face-attribute 'default nil :height 145)
  ;     ;; use specific font for Korean charset.
  ;     ;; if you want to use different font size for specific charset,
  ;     ;; add :size POINT-SIZE in the font-spec.
  ;     (set-fontset-font t 'hangul (font-spec :name "NanumGothicCoding"))
  ;     ;; you may want to add different for other charset in this way.
  ;     )
  (setq inhibit-splash-screen t)
  ;   initial-scratch-message nil)
  (setq python-shell-interpreter "/usr/bin/python") 

  (setq tab-width 4
      indent-tabs-mode nil)

  (setq make-backup-files nil)

  (global-set-key (kbd "RET") 'newline-and-indent)
  (global-set-key (kbd "C-;") 'comment-or-uncomment-region)
  (global-set-key (kbd "M-/") 'hippie-expand)
  (global-set-key (kbd "C-+") 'text-scale-increase)
  (global-set-key (kbd "C--") 'text-scale-decrease)

  (defalias 'yes-or-no-p 'y-or-n-p)

  ; (setq column-number-mode t)
  (global-linum-mode t)

  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
  (load "package")
  (package-initialize)
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t)

  (setq package-archive-enable-alist '(("melpa" deft magit)))

  (defvar elpa '( autopair
                  auto-complete
                  evil
                  popup
                  emmet-mode
                  dropdown-list
                  yasnippet
                  undo-tree)
    "Default Packages")

  ; (require 'autopair)
  (electric-pair-mode)
  (require 'auto-complete-config)
  (ac-config-default)
  (require 'evil)
  (evil-mode 1)
  (require 'key-chord)
  (key-chord-mode 1)
  (key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)
  (require 'evil-leader)
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (require 'evil-tabs)
  (global-evil-tabs-mode t)
  (require 'tree-mode)
  (require 'windata)
  (require 'dirtree)
  (global-set-key "\C-n" 'dirtree-show)
  (autoload 'dirtree "dirtree" "Add directory to tree view" t)

  ;; This must come AFTER anything using elscreen
  (add-to-list 'load-path "~/.emacs.d/powerline")  
  (require 'powerline)
  (powerline-default-theme)
  (setq powerline-color1 "#C1E138")      ;; dark grey; 
  (setq powerline-color2 "#444")      ;; slightly lighter grey

  (require 'emmet-mode)
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'html-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode)
  (require 'less-css-mode)
  (add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))
  (require 'js2-mode)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  ;(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
  ;(add-hook 'js-mode-hook 'js2-minor-mode)
  (add-hook 'js2-mode-hook 'ac-js2-mode)
  (require 'js2-refactor)
  (add-hook 'js-mode-hook (lambda () (tern-mode t)))
  (eval-after-load 'tern
     '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))
  (require 'yasnippet)
  (yas-global-mode 1)
  (require 'dropdown-list)
  (setq yas-prompt-functions '(yas-dropdown-prompt
                               yas-ido-prompt
                               yas-completing-prompt))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6d78a562789b1c1e58d2fd7dcadbc1c88012584ec678f85817a451d4d7b370f0" "e80a0a5e1b304eb92c58d0398464cd30ccbc3622425b6ff01eea80e44ea5130e" default)))
 '(package-selected-packages
   (quote
    (4clojure crystal-mode multi-term restclient fsharp-mode web-beautify tern-auto-complete soothe-theme purple-haze-theme purescript-mode powerline-evil less-css-mode key-chord js2-refactor haskell-mode evil-tabs evil-leader dropdown-list dirtree dash-functional autopair ac-emmet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

