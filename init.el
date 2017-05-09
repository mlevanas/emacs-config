(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
    (smart-mode-line-powerline-theme powerline-evil airline-themes powerline web-mode-edit-element web-mode php-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;
;;pakeitimai
;;
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t
      version-control t
      delete-old-versions t
      kept-new-versions 20
      kept-old-versions 5
)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(global-linum-mode 1)
(global-hl-line-mode 1)				;highlight current line
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://melpa.org/packages/")
	     '("melpa" . "http//melpa.milkbox.net/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)
(use-package auto-complete
  :ensure t)
(use-package helm
  :ensure t)
(use-package evil-leader
  :ensure t)
(use-package magit
  :ensure t)
(use-package powerline
  :ensure t)
(use-package airline-themes
  :ensure t)
(use-package powerline-evil
  :ensure t)
(use-package smart-mode-line-powerline-theme
  :ensure t)
;;helm configuration
(require 'helm-config)

;;evil-mode key bindings
(global-set-key (kbd "C-h") 'evil-window-left)
(global-set-key (kbd "C-j") 'evil-window-down)
(global-set-key (kbd "C-k") 'evil-window-up)
(global-set-key (kbd "C-l") 'evil-window-right)

(global-set-key (kbd "M-x") 'helm-M-x)

(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-key "-" 'evil-window-split)
(evil-leader/set-key "|" 'evil-window-vsplit)

(add-to-list 'load-path "~/.emacs.d/evil") ;line numbers
(require 'evil)
(evil-mode 1)
;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(setq powerline-arrow-shape 'curve)
(setq powerline-default-separator-dir '(right . left))
(setq sml/theme 'powerline)
(sml/setup)
