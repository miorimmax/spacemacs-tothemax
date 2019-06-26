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

(setq clojure-toplevel-inside-comment-form t)

(setq cider-prompt-for-symbol nil
      cider-save-file-on-load t
      cider-font-lock-dynamically t
      cider-eldoc-display-context-dependent-info t
      cider-eldoc-display-for-symbol-at-point #'truncate-sym-name-if-fit
      cider-repl-pop-to-buffer-on-connect nil
      cider-repl-use-clojure-font-lock t
      cider-overlays-use-font-lock t
      cider-jdk-src-paths '("~/dev/src/java-8" "~/dev/src/clojure-1.9" "~/dev/src/clojure-1.10")
      cider-print-fn #'zprint
      cider-stacktrace-fill-column t
      cider-stacktrace-default-filters '(project))

(with-eval-after-load 'cider-mode
  (add-hook 'clojure-mode-hook
            (progn
              (add-to-list 'cider-jack-in-dependencies '("zprint" "0.4.15")))))

(with-eval-after-load 'clojure-mode
  (add-hook 'clojure-mode-hook
            (progn
              (define-clojure-indent
                (against-backgroud 0)
                (against-background 0)
                (as-admin 1)
                (as-customer 1)
                (as-customer-with-lift 1)
                (as-delegate 2)
                (as-delegate-with-lift 2)
                (as-of 1)
                (assoc 1)
                (assoc-if 1)
                (assoc-in-if 1)
                (constraint-fn 2)
                (consume! 0)
                (data-fn 1)
                (defhandler 2)
                (defint 0)
                (defuf 1)
                (embeds 0)
                (expand-routes 0)
                (fact 1)
                (facts 1)
                (flow 1)
                (flow-as-of 1)
                (flow-without-validation 1)
                (for-all 1)
                (future-fact 1)
                (future-facts 1)
                (idempotent-start 1)
                (idempotent-stop 1)
                (ignore-conflict 0)
                (let-entities 2)
                (let-flow 1)
                (log-messages 0)
                (logged-call 1)
                (non-test-action 0)
                (profile 2)
                (profiled 1)
                (provided 0)
                (quick-check 1)
                (rethrow 1)
                (run-recipe 0)
                (some-with-open 1)
                (system-map 0)
                (tabular 0)
                (try-type 0)
                (with-cid 1)
                (with-fn-validation 0)
                (with-responses 0)
                (with-scopes 1)))))
