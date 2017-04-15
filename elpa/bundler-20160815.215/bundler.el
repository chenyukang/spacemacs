;;; bundler.el --- Interact with Bundler from Emacs

;; Copyright (c) 2011 Tobias Svensson <tob@tobiassvensson.co.uk>

;; Author: Tobias Svensson <tob@tobiassvensson.co.uk>
;; URL: http://github.com/endofunky/bundler.el
;; Package-Version: 20160815.215
;; Keywords: bundler ruby
;; Created: 31 Dec 2011
;; Version: 1.1.1
;; Package-Requires: ((inf-ruby "2.1") (cl-lib "0.5"))

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; Interact with Bundler from Emacs.
;;
;; 1) bundle-open
;;
;;    Wraps 'bundle open' which, if the given gem is installed and has been
;;    required correctly, will open the gem's source directory with dired.
;;
;; 2) bundle-console
;;
;;    Starts an inferior ruby process in the context of the current bundle
;;    using 'bundle console' (requires inf-ruby to be installed).
;;
;; 3) bundle-install, bundle-update, bundle-check
;;
;;    Runs the corresponding Bundler command with async-shell-command and
;;    *Bundler* as the target buffer. This exists so the output won't mess
;;    with the default buffer used by M-& and async-shell-command.

;;; Install

