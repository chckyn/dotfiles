(require 'xah-fly-keys)
(xah-fly-keys-set-layout 'colemak)
(xah-fly-keys 1)
(add-hook 'after-make-frame-functions
	  #'(lambda (frame)
	      (select-frame frame)
	      (xah-fly-command-mode-activate)))

(require 'git-commit)

(require 'smex)
(smex-initialize)

(require 'which-key)
(which-key-mode 1)

(require 'super-save)

(require 'git-gutter)
(global-git-gutter-mode 1)

;; Plain Emacs Centered Cursor Mode
;;   https://two-wrongs.com/centered-cursor-mode-in-vanilla-emacs.html
(setq scroll-preserve-screen-position t
      scroll-conservatively 0
      maximum-scroll-margin 0.5
      scroll-margin 99999)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages '(magit git-gutter smex which-key super-save xah-fly-keys))
 '(super-save-auto-save-when-idle t)
 '(super-save-idle-duration 1)
 '(super-save-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:weight semi-bold)))))
