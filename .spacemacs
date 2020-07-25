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
     csv
     python
     graphviz
     javascript
     html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     rust
     ruby
     org
     shell-scripts
     lua
     ocaml
     c-c++
     osx
     git
     ;;markdown
     ;;spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(bind-map
                                       smex
                                       ibuffer
                                       company
                                       helm
                                       helm-swoop
                                       ido
                                       zenburn-theme ag yaml-mode
                                       flymake-ruby
                                       tuareg
                                       quickrun
                                       merlin
                                       helm
                                       helm-projectile
                                       unicode-escape
                                       helm-ag
                                       slim-mode
                                       coffee-mode
                                       nginx-mode lua-mode
                                       cargo
                                       flycheck-rust
                                       racer
                                       pangu-spacing
                                       highlight-symbol
                                       xml-rpc
                                       metaweblog
                                       writegood-mode
                                       dired-narrow
                                       dired-subtree
                                       shell-pop
                                       )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(org-projectile)
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
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Source Code Pro"
   ;;                             :size 13
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
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
   dotspacemacs-helm-resize 1
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header 1
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

  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (package-initialize)


  (setq powerline-default-separator nil)
  (ido-vertical-mode -1)
  (setq-default fill-column 90)

  (require 'helm)
  (require 'helm-swoop)
  (require 'helm-bookmark)
  (require 'helm-projectile)

  (require 'ido)
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (global-set-key (kbd "C-x b") 'ido-switch-buffer)

  ;;(require 'anything-complete)
  ;;(global-set-key (kbd "C-x C-f") 'ido-find-file)
  ;;(global-set-key (kbd "C-x f") 'ido-find-file)
  ;;(global-set-key (kbd "C-<return>") 'other-window)

  (require 'highlight-symbol)
  (highlight-symbol-mode)

  (defun highlight-symbol-mode-on ()
    "Turn on function `highlight-symbol-mode'."
    (highlight-symbol-mode 1))
  (defun highlight-symbol-mode-off ()
    "Turn off function `highlight-symbol-mode'."
    (highlight-symbol-mode -1))
  (add-hook 'find-file-hook 'highlight-symbol-mode-on)
  (defalias 'hn 'highlight-symbol-next)

  (require 'smex)
  (smex-initialize)
  (global-set-key (kbd "C-j") 'helm-projectile)
  (global-set-key (kbd "C-l") 'smex)
  (global-set-key (kbd "C-c l") 'smex)
  (global-set-key (kbd "C-=") 'dabbrev-expand)
  (global-set-key (kbd "C-s") 'isearch-forward)

  (defalias 'idw 'ido-select-window)
  (defalias 'qrr 'query-replace)
  (defalias 'hi 'helm-imenu)
  (defalias 'hf 'helm-projectile-find-file)
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
  (defalias 'pg 'helm-projectile-ag)
  (defalias 'hg 'projectile-grep)
  (defalias 'p  'helm-resume)
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
  (defalias 'hs 'swiper)
  (defalias 'ms 'magit-status)

  (defun gen-temp-file ()
    "Create an org file in ~/notes/snippets."
    (interactive)
    (let ((name (concat (format-time-string "%d_%m_%Y_%s_")
                        (read-string "file-name: "))))
      (find-file (expand-file-name name "~/Dropbox/backup/"))))

  (defalias 'gt 'gen-temp-file)

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

  ;;(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
  ;; Start merlin on ocaml files
  (add-hook 'tuareg-mode-hook 'merlin-mode t)
  (add-hook 'caml-mode-hook 'merlin-mode t)
  (add-to-list 'load-path "~/.opam/4.06.1/share/emacs/site-lisp")
  ;; (require 'ocp-indent)
  ;; (add-hook 'after-save-hook
  ;;           (lambda () (interactive)
  ;;             (let ((name (file-name-extension (buffer-file-name))))
  ;;               (if (or (string-equal name "ml") (string-equal name "mli"))
  ;;                   (shell-command-to-string "cd ~/Users/kang/code/rubytt/src; make"))))
  ;;           )

  ;; Enable auto-complete
  ;; (setq merlin-use-auto-complete-mode 'easy)
  ;; Use opam switch to lookup ocamlmerlin binary
  (setq merlin-command 'opam)

  (global-set-key (kbd "C-;") 'helm-projectile)

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


  ;; (add-to-list 'load-path "~/.emacs.d/elpa/company-tabnine")
  ;; (require 'company-tabnine)
  ;; (add-to-list 'company-backends #'company-tabnine)

  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  (company-tng-configure-default)
  (setq company-frontends
        '(company-tng-frontend
          company-pseudo-tooltip-frontend
          company-echo-metadata-frontend))

  (eval-after-load 'company
    '(progn
       (define-key company-active-map (kbd "C-n") 'company-select-next)
       (define-key company-active-map (kbd "C-p") 'company-select-previous)))
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'eshell-mode-hook (lambda () (company-mode -1)))


  (defun ora-company-number ()
    "Forward to `company-complete-number'.

Unless the number is potentially part of the candidate.
In that case, insert the number."
    (interactive)
    (let* ((k (this-command-keys))
           (re (concat "^" company-prefix k)))
      (if (cl-find-if (lambda (s) (string-match re s))
                      company-candidates)
          (self-insert-command 1)
        (company-complete-number (string-to-number k)))))

  (setq company-idle-delay 0.3)
  (setq company-minimum-prefix-length 2)
  (setq company-selection-wrap-around t)

  (let ((map company-active-map))
    (mapc
     (lambda (x)
       (define-key map (format "%d" x) 'ora-company-number))
     (number-sequence 0 9))
    (define-key map " " (lambda ()
                          (interactive)
                          (company-abort)
                          (self-insert-command 1)))
    (define-key map (kbd "<return>") nil))
  (define-key company-active-map (kbd "C-SPC") #'company-complete-selection)
  (define-key company-active-map (kbd "<return>") #'company-complete-selection)

  (require 'zenburn-theme)

  (defun open-eshell-now ()
    "Open eshell"
    (interactive)
    (delete-other-windows)
    (split-window-horizontally)
    (other-window 1)
    (eshell))
  (global-set-key (kbd "C-c e") 'open-eshell-now)

  (use-package shell-pop
    :bind (("C-t" . shell-pop))
    :config
    (setq shell-pop-shell-type (quote ("ansi-term" "*ansi-term*" (lambda nil (ansi-term shell-pop-term-shell)))))
    (setq shell-pop-term-shell "/bin/zsh")
    ;; need to do this manually or not picked up by `shell-pop'
    (shell-pop--set-shell-type 'shell-pop-shell-type shell-pop-shell-type))

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
  (define-key evil-normal-state-map (kbd "C-f") 'forward-char)
  (define-key evil-normal-state-map (kbd "C-b") 'backward-char)
  (define-key evil-normal-state-map (kbd "C-a") 'beginning-of-line)
  (define-key evil-normal-state-map (kbd "C-e") 'end-of-line)
  (define-key evil-normal-state-map (kbd "C-n") 'next-line)
  (define-key evil-normal-state-map (kbd "C-p") 'previous-line)
  (define-key evil-normal-state-map (kbd "C-v") 'scroll-up-command)

  (define-key evil-motion-state-map (kbd "C-f") 'forward-char)
  (define-key evil-motion-state-map (kbd "C-b") 'backward-char)
  (define-key evil-motion-state-map (kbd "C-a") 'beginning-of-line)
  (define-key evil-motion-state-map (kbd "C-e") 'end-of-line)
  (define-key evil-motion-state-map (kbd "C-n") 'next-line)
  (define-key evil-motion-state-map (kbd "C-p") 'previous-line)
  (define-key evil-motion-state-map (kbd "C-v") 'scroll-up-command)
  (global-set-key (kbd "C-,") 'scroll-down-command)

  (defun backto-evil-normal-state()
    (interactive)
    (progn
      (save-buffer)
      (evil-normal-state)))
  (global-set-key (kbd "C-i") 'backto-evil-normal-state)
  (defalias 'n 'backto-evil-normal-state)
  (global-set-key (kbd "TAB") 'indent-for-tab-command)


  (add-hook 'rust-mode-hook  #'racer-mode)
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (add-hook 'rust-mode-hook
            (lambda ()
              (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))
  (add-hook 'rust-mode-hook #'rustfmt-enable-on-save)
  (add-hook 'rust-mode-hook #'rust-enable-format-on-save)

  (require 'org)
  (defalias 'ga 'org-agenda)
  (defalias 'gc 'org-capture)
  (defalias 'oa 'org-agenda-list)
  (defalias 'ot 'org-todo-list)
  (defalias 'of 'org-fill-paragraph)
  (defalias 'ol 'org-insert-link)

  (define-key global-map "\C-cl" 'smex)
  (define-key global-map "\C-ca" 'org-agenda)
  (setq org-log-done t)

  (defun org-summary-todo (n-done n-not-done)
    "Switch entry to DONE when all subentries are done, to TODO otherwise."
    (let (org-log-done org-log-states)   ; turn off logging
      (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

  (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)
  (setq org-agenda-custom-commands
        '(("x" agenda)
          ("y" agenda*)
          ("p" "List Non-done projects" tags "+TODO=\"TODO\"")
          ("d" todo "DONE")))

  ;; 打开 org-indent mode
  (setq org-startup-indented t)
  ;; 设置 bullet list
  (setq org-bullets-bullet-list '("☰" "☷" "☯" "☭"))
  ;; 设置 todo keywords

  (setq org-todo-keywords
        '((sequence "TODO(t)" "HAND(h)" "VERIFY(v)" "|" "DONE(d)")
          (sequence "|" "CANCELED(c)")))

  (setq org-image-actual-width nil)
  (setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
                                 ("HAND" . (:foreground "white" :background "#2E8B57"  :weight bold))
                                 ("VERIFY" . (:foreground "orange" :background "#2F0B57"  :weight bold))
                                 ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))

  (require 'org-bullets)
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (setq org-agenda-files (list "~/Dropbox/org/work.org"
                               "~/Dropbox/org/life.org"
                               "~/Dropbox/org/habit.org"
                               "~/Dropbox/org/learn.org"))

  (setq org-agenda-skip-deadline-if-done t)
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-startup-with-inline-images nil)
  (defalias 'post-buffer 'org2blog/wp-post-buffer)
  (defalias 'publish-buffer 'org2blog/wp-post-buffer-and-publish)


  (defun create-org-file-with-dir (dir)
    (lexical-let ((dir dir))
    (lambda ()
      (interactive)
      (let ((name (concat (format-time-string "%Y_%m_%d_")
                          (read-string "file-name: "))))
        (expand-file-name (format "%s.org" name) dir)))))

  (defun create-meeting-file ()
    (funcall (create-org-file-with-dir "~/Dropbox/org/meeting/")))

  (defun create-note-file()
    (funcall (create-org-file-with-dir "~/Dropbox/org/notes/")))

  (defun create-code-file ()
    (funcall (create-org-file-with-dir "~/Dropbox/org/snippets/")))

  (defun create-blog-file ()
    (funcall (create-org-file-with-dir "~/Dropbox/org/blog/")))

  (defun create-company-file ()
    (funcall (create-org-file-with-dir "~/Dropbox/org/company/")))

  (defun gen-date-file ()
    "Create an org file in ~/notes/snippets."
    (format-time-string "~/Dropbox/org/journals/%Y_%m_%d.org"))

  (setq org-capture-templates
        '(
          ("t" "Todo" entry (file+datetree "~/Dropbox/org/work.org")
           "** TODO %?\n  %i\n " :empty-lines 1)

          ("x" "Todo with priority, for work" entry (file+datetree "~/Dropbox/org/work.org")
           "** TODO %^{priority|[#A]|[#B]|[#C]} %?\n")

          ("l" "Todo for myself" entry (file+datetree "~/Dropbox/org/learn.org")
           "** TODO %?\nEntered on %U\n  %i\n" :empty-lines 1)

          ("M" "Meeting notes" entry (file create-meeting-file)
           "** %^{desc}\n " :empty-lines 1)

          ("N" "Notes file" entry (file create-note-file)
           "** %^{desc}\n " :empty-lines 1)

          ("c" "Company related files" entry (file create-company-file)
           "** %^{desc}\n " :empty-lines 1)

          ("b" "Blog file" entry (file create-blog-file)
           "** New Post\n#+BLOG: coderscat.com\n#+CATEGORY:\n#+TAGS:\n#+DESCRIPTION:\n#+ATTR_WP: :syntaxhl light=true\n#+TITLE: %^{desc}\n " :empty-lines 1)

          ("L" "Blog(LeetCode) file" entry (file create-blog-file)
           "** New Post\n#+CATEGORY: LeetCode\n#+TAGS: Algorithms, LeetCode\n#+DESCRIPTION:\n#+ATTR_WP: :syntaxhl light=true\n#+TITLE: LeetCode: %^{desc}\n " :empty-lines 1)

          ("j" "Journal" entry (file+datetree "~/Dropbox/org/_journal.org" )
           "** %?\nEntered on %U\n  %i\n" :empty-lines 1)

          ("J" "Journal file" entry (file gen-date-file)
           "** %?\nEntered on %U\n  %i\n" :empty-lines 1)

          ("s" "Code snippet" entry (file+headline "~/Dropbox/org/_code.org" "Code")
           "** %^{desc}\n#+BEGIN_SRC %^{language|ruby|shell|c|rust|emacs-lisp}\n%?\n#+END_SRC" :empty-lines 2)

          ("S" "Code snippet file" entry (file create-code-file)
           "** %^{desc}\n#+BEGIN_SRC %^{language|ruby|shell|c|rust|emacs-lisp}\n%?\n#+END_SRC" :empty-lines 1)
          ))

  (add-hook 'org-agenda-mode-hook
            (lambda ()
              (local-set-key (kbd "C-l") 'smex)))

  ;; find aspell and hunspell automatically
  (setq ispell-program-name "aspell")
    ;; Please note ispell-extra-args contains ACTUAL parameters passed to aspell
  (setq ispell-extra-args '("--sug-mode=ultra" "--lang=en_US"))

  (defun org-insert-image ()
    (interactive)
    (let* ((path (concat default-directory "img/"))
           (image-file (concat
                        path
                        (buffer-name)
                        (format-time-string "_%Y%m%d_%H%M%S.png"))))
      (if (not (file-exists-p path))
          (mkdir path))
      (shell-command (concat "pngpaste " image-file))
      (org-insert-link nil (concat "file:" image-file) ""))
    ;; (org-display-inline-images) ;; inline 显示图片
    )

  (defun org-insert-file (file-path)
    "insert a file in org"
    (interactive (list (read-buffer (format "path: " ) (current-kill 0) t)))
    (let* ((path (concat default-directory "file/"))
           (new-file (concat
                      path
                      (buffer-name)
                      (format-time-string "_%Y%m%d_%H%M%S_")
                      (file-name-nondirectory file-path))))
      (if (not (file-exists-p path))
          (mkdir path))
      (shell-command (concat "cp " file-path " " new-file))
      (org-insert-link nil (concat "file:" new-file) "")
      (message new-file))
    )
  (defalias 'ois 'org-insert-structure-template)
  
  (add-to-load-path "~/.emacs.d/private/local/org-reveal/")
  (require 'ox-reveal)
  (setq org-reveal-root "file:///Users/kang/code/reveal.js")
  (setq org-reveal-title-slide nil)

  ;; (add-to-load-path "~/.emacs.d/elpa/dired-hacks")
  ;; (require 'dired-subtree)

  (use-package dired-subtree
    :config
    (bind-keys :map dired-mode-map
               ("i" . dired-subtree-insert)
               (";" . dired-subtree-remove)))

  (defun auto-indent-minor-mode())
  (setq org-html-htmlize-output-type nil)


  (load-file "~/.emacs.d/private/local/emacs-grammarly/emacs-grammarly.el")

  (add-hook 'org-mode-hook
            (lambda ()
              ;; Enable fill column indicator
              ;;(fci-mode t)
              (linum-mode -1)
              ;; Set fill column to 79
              (setq fill-column 90)
              ;;(org-indent-mode)
              ;;(visual-line-mode)
              ;; Enable automatic line wrapping at fill column
              (auto-fill-mode t)))

  (setq org-startup-folded "showall")

  (defun org-show-three-levels ()
    (interactive)
    (org-content 3))

  (add-hook 'org-mode-hook
            (lambda ()
              (define-key org-mode-map "\C-cm" 'org-show-three-levels)))

  (require 'pangu-spacing)
  (global-pangu-spacing-mode 1)
  ;;(setq pangu-spacing-real-insert-separtor t)

  (defun org-publish-to-hexo ()
    (interactive)
    (shell-command (concat
                    "org-ruby " "--translate " "markdown " "-a "
                    (buffer-name)
                    " 2>/dev/null "
                    )))
  (defalias 'op 'org-publish-to-hexo)

  ;; (use-package org-roam
  ;;   :ensure t
  ;;   :hook
  ;;   (after-init . org-roam-mode)
  ;;   :custom
  ;;   (org-roam-directory "/Users/yukang/Dropbox/org/notes/")
  ;;   :bind (:map org-roam-mode-map
  ;;               (("C-c n l" . org-roam)
  ;;                ("C-c n f" . org-roam-find-file)
  ;;                ("C-c n g" . org-roam-graph-show))
  ;;               :map org-mode-map
  ;;               (("C-c n i" . org-roam-insert))
  ;;               (("C-c n I" . org-roam-insert-immediate))))


  (setq org-image-actual-width nil)
  (image-type-available-p 'imagemagick)

  (defun buffer-contains-substring (string)
    (save-excursion
      (save-match-data
        (goto-char (point-min))
        (search-forward string nil t))))


  (defun kill-whole-buffer ()
    (interactive)
    (goto-char (point-min))
    (search-forward "#+TITLE")
    (next-line)
    (kill-region (point) (point-max)))

  (defalias 'kb 'kill-whole-buffer)
  (defalias 'ff 'find-file-at-point)

  (defun org-auto-publish-save-hook ()
    (when (and (eq major-mode 'org-mode)
               (buffer-contains-substring "#+MD_TITLE:")
               (buffer-contains-substring "#+MD_PATH:"))
      (message "publishing to Hexo markdown")
      (org-publish-to-hexo)))

  (add-hook 'after-save-hook #'org-auto-publish-save-hook)

  (set 'async-shell-command-display-buffer nil)
  (set 'async-shell-command-buffer 'new-buffer)

  (defun org-sync-to-github ()
    (interactive)
    (let
        ((display-buffer-alist
          (list
           (cons
            "\\*Async Shell Command\\*.*"
            (cons #'display-buffer-no-window nil)))))
      (async-shell-command "~/Dropbox/org/up.sh 1>/dev/null 2>&1")))

  (defun org-auto-sync-up-to-github ()
    (when (eq major-mode 'org-mode)
      (message "Sync to Github")
      (org-sync-to-github)))

  (add-hook 'after-save-hook #'org-auto-sync-up-to-github)

  (setq org-image-actual-width nil)


  (defun org-before-save-hook ()
    (when (eq major-mode 'org-mode)
      (message "saving org-file")
      (pangu-spacing-space-current-buffer)
      ;;(fill-region (point-min) (point-max))
      ))
  (add-hook 'before-save-hook #'org-before-save-hook)

  (defun rust-save-compile-and-run ()
    (interactive)
    (save-buffer)
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "cargo build")
      (compile
       (format "rustc %s && %s"
               (buffer-file-name)
               (file-name-sans-extension (buffer-file-name))))))

  (defalias 'rr 'rust-save-compile-and-run)
  (defalias 'rt 'cargo-process-test)
  (defalias 'hb 'helm-bookmarks)

  (fset 'rust-ignore
        (lambda (&optional arg) "Keyboard macro." (interactive "p")
          (kmacro-exec-ring-item
           (quote ([12 115 101 97 114 99 104 return 35 91 105 103 110 111 114 101 return 1 11 11 14] 0 "%d")) arg)))

  ;; (with-eval-after-load 'helm
  ;;   (setq helm-display-function 'helm-default-display-buffer))
  (add-hook 'dired-mode-hook
            (lambda () (local-set-key (kbd "e") 'dired-up-directory)))


  (add-to-load-path "~/.emacs.d/private/local/org2blog/")

  (require 'org2blog)
  (setq org2blog/wp-blog-alist
        '(("coderscat.com"
           :url "http://coderscat.com/xmlrpc.php"
           :username "yukang")))

  ;;(setq 'org2blog/wp-show-post-in-browser t)
  (defalias 'buffer-post 'org2blog/wp-post-buffer)
  (defalias 'buffer-publish 'org2blog/wp-post-buffer-and-publish)
  (defalias 'page-post 'org2blog/wp-post-buffer-as-page)
  (defalias 'page-publish 'org2blog/wp-post-buffer-as-page-and-publish)

  (add-to-load-path "~/.emacs.d/private/local/google-translate/")
  (require 'google-translate)
  (require 'google-translate-default-ui)
  (global-set-key "\C-ct" 'google-translate-at-point)
  (global-set-key "\C-cT" 'google-translate-query-translate)

  (setq google-translate-translation-directions-alist
        '(("en" . "zh-CN") ("zh-CN" . "en")))

  ;;(load-file "~/.emacs.d/snippets/+google-translate-posframe.el")

  (setq-default tab-width 4)
  (setq indent-tabs-mode nil)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(async-shell-command-buffer (quote new-buffer))
 '(global-hl-line-mode t)
 '(google-translate-default-target-language "zh-CN" t)
 '(highlight-symbol-foreground-color "keyboardFocusIndicatorColor")
 '(highlight-symbol-idle-delay 0.5)
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/work.org" "~/Dropbox/org/habit.org" "~/Dropbox/org/learn.org")))
 '(org2blog/wp-image-upload t)
 '(org2blog/wp-show-post-in-browser t)
 '(org2blog/wp-use-sourcecode-shortcode nil)
 '(org2blog/wp-use-wp-latex nil)
 '(package-selected-packages
   (quote
    (dired-hacks-utils emacsql-sqlite3 org-roam csv-mode dired-subtree shell-pop org-projectile dired-narrow dired-filter writegood-mode org2blog metaweblog xml-rpc pangu-spacing ox-reveal unicode-escape names org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot graphviz-dot-mode powerline hydra avy anzu iedit smartparens highlight evil goto-chg undo-tree projectile async f dash yapfify reveal-in-osx-finder pyvenv pytest pyenv-mode py-isort pip-requirements pbcopy osx-trash osx-dictionary live-py-mode launchctl insert-shebang hy-mode fish-mode cython-mode anaconda-mode pythonic helm-gitignore git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter flyspell-correct-ivy flyspell-correct-helm flyspell-correct diff-hl auto-dictionary helm helm-core zenburn-theme yaml-mode web-mode web-beautify utop tuareg caml toml-mode tagedit stickyfunc-enhance srefactor smeargle slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv racer quickrun pug-mode projectile-rails rake phpunit phpcbf php-extras php-auto-yasnippets orgit ocp-indent nginx-mode mmm-mode minitest merlin markdown-toc magit-gitflow magit-popup lua-mode livid-mode skewer-mode simple-httpd less-css-mode json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc highlight-symbol haml-mode go-guru go-eldoc gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flymake-ruby flymake-easy flycheck-rust flycheck-pos-tip pos-tip flycheck feature-mode evil-magit magit transient git-commit with-editor erlang engine-mode emmet-mode drupal-mode php-mode disaster company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode company-c-headers company coffee-mode cmake-mode clojure-snippets clj-refactor inflections edn multiple-cursors paredit peg clang-format cider-eval-sexp-fu cider sesman queue parseedn clojure-mode parseclj a chruby cargo markdown-mode rust-mode bundler inf-ruby auto-yasnippet yasnippet ag ac-ispell auto-complete wgrep smex ivy-hydra lv counsel-projectile counsel swiper ivy ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:background "disabledControlTextColor")))))

