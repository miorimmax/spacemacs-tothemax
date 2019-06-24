;;; layers.el --- tothemax layer file for Spacemacs.
;;
;; Copyright (c) 2019 Max Miorim
;;
;; Author: Max Miorim <max@miorim.com>
;; URL: https://github.com/miorimmax/spacemacs-tothemax
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(configuration-layer/declare-layers
 '(csv
   osx
   helm
   (better-defaults :variables better-defaults-move-to-beginning-of-code-first t)
   themes-megapack
   spell-checking
   syntax-checking
   (auto-completion :variables
                    auto-completion-enable-help-tooltip t
                    auto-completion-enable-snippets-in-popup t
                    auto-completion-enable-sort-by-usage t)
   (version-control :variables
                    version-control-diff-tool 'diff-hl
                    version-control-global-margin t)
   (git :variables
        git-magit-status-fullscreen t
        git-enable-github-support t)
   java
   scala
   (clojure :variables clojure-enable-clj-refactor t)
   (dart :variables
         dart-sdk-path "/usr/local/flutter/bin/cache/dart-sdk/"
         dart-enable-analysis-server t)
   javascript
   typescript
   react
   swift
   kotlin
   (ruby :variables ruby-enable-enh-ruby-mode t)
   emacs-lisp
   markdown
   org
   json
   yaml
   (shell :variables
          shell-default-height 30
          shell-default-position 'bottom)))
