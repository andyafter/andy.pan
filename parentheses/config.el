;;; private/parentheses/config.el -*- lexical-binding: t; -*-

;;; configurations for smarter parenthesis operation and navigation

(require 'smartparens-config)
(require 'paredit-everywhere)

(add-hook 'prog-mode-hook 'paredit-everywhere-mode)

;;; seems that smartparens is already required for paredit
(add-hook 'prog-mode-hook 'smartparens-mode)

(map!
 (:leader
   (:desc "Paredit functions" :prefix "d"
     :desc "Paredit forward down"      :nv "d"  #'paredit-forward-down
     :desc "Paredit forward up"        :nv "s"  #'paredit-forward-up
     ))
 )
