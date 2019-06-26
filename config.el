;;; config.el --- tothemax layer config file for Spacemacs.
;;
;; Copyright (c) 2019 Max Miorim
;;
;; Author: Max Miorim <max@miorim.com>
;; URL: https://github.com/miorimmax/spacemacs-tothemax
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(setq magit-repository-directories '("~/dev" "~/dev/nu/" "~/dev/moonshots"))

(setq create-lockfiles nil)
(setq make-backup-files nil)

(setq projectile-project-search-path '("~/dev" "~/dev/nu/" "~/dev/moonshots"))

(setq-default show-trailing-whitespace t)

(setq-default display-line-numbers-grow-only t
              display-line-numbers-widen t
              display-line-numbers-width 4)

(setq-default evil-vsplit-window-right t
              evil-split-window-below t)

(defun set-line-spacing ()
  (setq-local default-text-properties '(line-spacing 0.3 line-height 1.3)))
(add-hook 'text-mode-hook 'set-line-spacing)
(add-hook 'prog-mode-hook 'set-line-spacing)
(setq default-text-properties '(line-spacing 0.3 line-height 1.3))
