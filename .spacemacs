;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     javascript
     go
     clojure
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     git
     auto-completion
     ocaml
     semantic
     syntax-checking
     search-engine
     markdown
     yaml
     ruby-on-rails
     c-c++
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(bind-map
                                      smex
                                      ibuffer
                                      ido
                                      highlight-current-line
                                      zenburn-theme ag yaml-mode
                                      flymake-ruby
                                      tuareg
                                      quickrun
                                      merlin
                                      helm-anything
                                      slim-mode
                                      coffee-mode
                                      highlight-symbol
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   ;;dotspacemacs-themes '(spacemacs-dark
   ;; spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-elpa-https nil

   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (setq powerline-default-separator nil)
  ;;(golden-ratio-mode 1)
  (global-evil-search-highlight-persist -1)
  (ido-vertical-mode -1)

  (require 'ido)
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (global-set-key (kbd "C-x b") 'ido-switch-buffer)

  (require 'anything-complete)
  (global-set-key (kbd "C-x C-f") 'ido-find-file)
  (global-set-key (kbd "C-x f") 'ido-find-file)
  (global-set-key (kbd "C-<return>") 'other-window)

  (require 'highlight-symbol)

  (setq highlight-symbol-idle-delay 0.3)
  (highlight-symbol-mode)

  (defun highlight-symbol-mode-on ()
    "Turn on function `highlight-symbol-mode'."
    (highlight-symbol-mode 1))
  (defun highlight-symbol-mode-off ()
    "Turn off function `highlight-symbol-mode'."
    (highlight-symbol-mode -1))

  (add-hook 'find-file-hook 'highlight-symbol-mode-on)

  (require 'smex)
  (smex-initialize)
  (global-set-key (kbd "C-j") 'helm-projectile)
  (global-set-key (kbd "C-l") 'smex)
  (global-set-key (kbd "C-=") 'dabbrev-expand)

  (defalias 'idw 'ido-select-window)
  (defalias 'qrr 'query-replace)
  (defalias 'hi 'helm-imenu)
  (defalias 'hf 'helm-projectile)
  (defalias 'hr 'helm-recentf)
  (defalias 'h 'helm-mini)
  (defalias 'cp 'copy-region-as-kill)
  (defalias 'bk 'helm-bookmarks)
  (defalias 'kr 'kill-region)
  (defalias 'gp 'grep)
  (defalias 'aj 'ace-jump-mode)
  (defalias 'al 'ace-jump-line-mode)
  (defalias 'cm 'comment-region)
  (defalias 'uc 'uncomment-region)
  (defalias 'gf 'grep-find)
  (defalias 'pg 'projectile-ag)
  (defalias 'fd 'find-dired)
  (defalias 'e 'eshell)
  (defalias 'f 'projectile-find-file)
  (defalias 'r 'recentf-open-files)
  (defalias 'ha 'helm-ag)
  (defalias 'hat 'helm-ag-this-file)
  (defalias 'i 'iy-go-to-char)
  (defalias 'ib 'iy-go-to-char-backward)
  (defalias 'w 'windmove-up)
  (defalias 's 'windmove-down)
  (defalias 'd 'windmove-right)
  (defalias 'a 'windmove-left)
  (defalias 'ep 'er/expand-region)
  (defalias 'mh 'my-helm-multi-all)
  (defalias 'f 'helm-buffers-list)
  (defalias 'g 'god-mode-all)
  (defalias 'wc 'whitespace-cleanup)
  (defalias 'hs 'helm-swoop)

  (defun get-continue-string ()
    (interactive)
    (skip-chars-backward "^ \t\n\"\'\(\)\<\>\!\&\;\\\[\]")
    (setq low (point))
    (skip-chars-forward "^ \t\n\"\'\(\)\<\>\!\&\;\\\[\]")
    (setq high (point))
    (copy-region-as-kill low high)
    (message (buffer-substring low high)))

  (global-set-key (kbd "C-x y") 'get-continue-string)

  (global-set-key (kbd "C-c l") 'set-mark-command)
  (global-set-key (kbd "C-x c") 'copy-region-as-kill)
  (global-set-key (kbd "C-c u") 'uncomment-region)
  (global-set-key (kbd "C-c c") 'comment-region)
  (global-set-key (kbd "C-c k") 'kill-region)
  (global-set-key (kbd "C-c -") 'beginning-of-buffer)
  (global-set-key (kbd "C-c =") 'end-of-buffer)
  (global-set-key (kbd "C-c t") 'undo-tree-visualize)
  (global-set-key (kbd "C-c j") 'ido-switch-buffer)
  (global-set-key (kbd "C-c o") 'execute-extended-command)
  (global-set-key (kbd "C-c g") 'goto-line)

  (global-auto-revert-mode t)
  (setq column-number-mode t)
  (setq line-number-mode t)
  (setq display-time-24hr-format t)
  (display-time)


  (require 'ibuffer)
  (global-set-key (kbd "C-x C-b") 'ibuffer)

  (require 'highlight-current-line)
  (highlight-current-line)
  (highlight-current-line-on t)
  ;; To customize the background color
  (set-face-background 'highlight-current-line-face "gray29")

  (setq-default cursor-type '(hbar . 3))

  (setq default-frame-alist
        '((cursor-color . "SteelBlue1")))

  (require 'flymake-ruby)
  (add-hook 'ruby-mode-hook 'flymake-ruby-load)

  (autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
  (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
  (add-hook 'ruby-mode-hook 'auto-indent-minor-mode)

  (require 'tuareg)
  (require 'merlin)
  (setq auto-mode-alist
        (append '(("\\.ml[ily]?$" . tuareg-mode)
                  ("\\.ml[ily]?$" . company-mode)
                  ("\\.topml$" . tuareg-mode))
                auto-mode-alist))


  (autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
  (autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
  (add-hook 'tuareg-mode-hook 'utop-minor-mode)

  (setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
  ;; Start merlin on ocaml files
  (add-hook 'tuareg-mode-hook 'merlin-mode t)
  (add-hook 'caml-mode-hook 'merlin-mode t)
  (add-to-list 'load-path "~/.opam/4.02.1/share/emacs/site-lisp")
  (require 'ocp-indent)
  (add-hook 'after-save-hook
            (lambda () (interactive)
              (let ((name (file-name-extension (buffer-file-name))))
                (if (or (string-equal name "ml") (string-equal name "mli"))
                    (shell-command-to-string "cd ~/Users/kang/code/rubytt/src; make"))))
            )

  ;; Enable auto-complete
  ;; (setq merlin-use-auto-complete-mode 'easy)
  ;; Use opam switch to lookup ocamlmerlin binary
  (setq merlin-command 'opam)

  (add-hook 'dired-mode-hook
            (lambda ()
              ;;(define-key dired-mode-map (kbd "<return>")
              ;;'dired-find-alternate-file) ; was dired-advertised-find-file
              (define-key dired-mode-map (kbd "^")
                (lambda () (interactive) (find-alternate-file "..")))
              (define-key dired-mode-map (kbd "r")
                (lambda () (interactive) (find-alternate-file "..")))
              ))

  (global-set-key (kbd "C-;") 'helm-projectile)
  (search-engine/init-engine-mode)

  (set-fringe-mode '(0 . 0))
  (blink-cursor-mode)

  (setq ruby-insert-encoding-magic-comment nil)

  (require 'company)
  (global-company-mode)
  (add-hook 'cider-repl-mode-hook #'company-mode)
  (add-hook 'cider-mode-hook #'company-mode)
  (add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
  (add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
  (setq cider-annotate-completion-function t)

  (add-to-list 'load-path
               "~/.emacs.d/packages/yasnippet")
  (require 'yasnippet)
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  (yas-global-mode 1)

  (eval-after-load 'company
    '(progn
       (define-key company-active-map (kbd "C-n") 'company-select-next)
       (define-key company-active-map (kbd "C-p") 'company-select-previous)))
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'eshell-mode-hook (lambda () (company-mode -1)))

  (require 'zenburn-theme)

  (defun open-eshell-now ()
    "Open eshell"
    (interactive)
    (delete-other-windows)
    (split-window-horizontally)
    (other-window 1)
    (eshell))
  (global-set-key (kbd "C-c e") 'open-eshell-now)

  (defun open-eshell()
    (interactive)
    (progn
      (eshell)
      (let* ((directory-name
              (file-name-directory (directory-file-name default-directory)))
             (buffer-name
              (replace-regexp-in-string
               "/" ""
               (replace-regexp-in-string directory-name "" default-directory))))
        (rename-buffer
         (generate-new-buffer-name
          (concat "sh-" buffer-name))))))

  (defalias 'os 'open-eshell)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-auto-complete-chars (quote (32 41 46 34 47 124 33)))
 '(company-completion-started-hook (quote (ignore)))
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 1)
 '(company-occurrence-weight-function (quote company-occurrence-prefer-any-closest))
 '(company-show-numbers nil)
 '(company-transformers (quote (company-sort-by-occurrence)))
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "3f630e9f343200ce27cfeb44f01c9046a4b2687a4751ba2b30e503da307cd27b" "99fce0c01e01cb934f373a3e8c3224f80be568c6d9a548975a5cb0a0910f0a60" "19352d62ea0395879be564fc36bc0b4780d9768a964d26dfae8aad218062858d" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-foreground-color "light green")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(package-selected-packages
   (quote
    (pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic fuzzy dash-functional tern clojure-snippets auto-complete livid-mode skewer-mode simple-httpd json-snatcher json-reformat js2-mode go-guru go-mode clj-refactor volatile-highlights goto-chg powerline smartparens request projectile spinner hydra bind-map popup anzu highlight f s dash evil async avy toc-org macrostep evil-ediff elisp-slime-nav dumb-jump auto-compile packed zenburn-theme youdao-dictionary yaml-mode ws-butler window-numbering which-key web-mode web-beautify vi-tilde-fringe uuidgen utop use-package tuareg tagedit stickyfunc-enhance srefactor spacemacs-theme spaceline smex smeargle slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restart-emacs rbenv rainbow-mode rainbow-identifiers rainbow-delimiters quelpa pug-mode projectile-rails popwin persp-mode pcre2el paradox pangu-spacing orgit org-plus-contrib org-bullets open-junk-file ocp-indent neotree move-text mmm-mode minitest merlin markdown-toc magit-gitflow magit-gh-pulls lorem-ipsum linum-relative link-hint less-css-mode json-mode js2-refactor js-doc info+ indent-guide ido-vertical-mode ibuffer-projectile hungry-delete hl-todo highlight-symbol highlight-parentheses highlight-numbers highlight-indentation highlight-current-line hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-anything helm-ag google-translate golden-ratio go-eldoc github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist gh-md flymake-ruby flycheck-pos-tip flx-ido find-by-pinyin-dired fill-column-indicator feature-mode fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu engine-mode emmet-mode disaster define-word company-web company-tern company-statistics company-go company-c-headers column-enforce-mode color-identifiers-mode coffee-mode cmake-mode clean-aindent-mode clang-format chruby chinese-pyim bundler auto-yasnippet auto-highlight-symbol aggressive-indent ag adaptive-wrap ace-window ace-pinyin ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
