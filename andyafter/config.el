;;; private/andyafter/config.el -*- lexical-binding: t; -*-


;;; disabling key bindings related to these keys:
(map! :nv "C-x" nil
      :nv "C-a" nil
      (:leader
        (:desc "Personal Macros" :prefix "r"
          :desc "rebase transmitter" :nv "t" #'rebase-transmitter
          )
        (:desc "Avy Key Bindings" :prefix "a"
          :desc "avy goto char" :nv "1" #'avy-goto-char
          :desc "avy goto char" :nv "2" #'avy-goto-char-2
          )
      )
    )

(defun rebase-transmitter ()
  "Rebasing Transmitter function by running rebasetrans.sh in the home folder."
  (interactive)
  (message "Rebasing transmitter")
  (ansi-term "/bin/bash" "rebase-transmitter")
  )

;;; I like automatic completion
(require 'company)
(setq company-idle-delay 0.0
      company-minimum-prefix-length 3)
