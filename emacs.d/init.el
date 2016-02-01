(require 'cask "~/.cask/cask.el")
(cask-initialize)
(defun load-config (file)
  (load-file (expand-file-name file "~/.emacs.d/config")))

(load-config "ui.el")
(load-config "packages.el")
