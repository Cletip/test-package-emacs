;;; test-package-emacs.el --- a simple package                     -*- lexical-binding: t; -*-

;; Copyright (C) 2014  Nic Ferrier

;; Author: Nic Ferrier <nferrier@ferrier.me.uk>
;; Keywords: lisp
;; Version: 0.0.1
;; Package-Requires: ((chronos "1.2"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Put a description of the package here
;; Chronos est une dépendance : installer automatiquement avec straight
;; normalement !

;;; Code:

;; code goes here

(require 'seq)
(require 'xref)
(require 'dired)

;; (require 'chronos)

(defgroup test-package-emacs ()
  "Test"
  :group 'files
  :link '(info-link "(exemple) En haut"))


(defcustom unevariable (concat user-emacs-directory "test")
  "Directory for storing personal notes.

A safe local value of either `default-directory' or `local' can
be added as a value in a .dir-local.el file.  Do this if you
intend to use multiple directory silos for your notes while still
relying on a global value (which is the value of this variable).
The Denote manual has a sample (search for '.dir-locals.el').
Those silos do not communicate with each other: they remain
separate.

The local value influences where commands such as `denote' will
place the newly created note.  If the command is called from a
directory or file where the local value exists, then that value
take precedence, otherwise the global value is used.

If you intend to reference this variable in Lisp, consider using
the function `denote-directory' instead: it returns the path as a
directory and also checks if a safe local value should be used."
  :group 'test-package-emacs
  :package-version '(test-package-emacs . "0.0.1")
  :type 'directory)


;;;###autoload
(defun test-package-emacs-name-of-function ()
  "DOCSTRING here"
  (interactive)
  (message "%s" unevariable)
  )



;; (dolist (x  '(1 2 5))
  ;; (message "%s" x))

;;;###autoload
(defun test-package-emacs-ask-name (x)
  "Ask name."
  (interactive "sEnter name: ")
  (message "Your Name is %s, that's cool !" x))

;;;###autoload
(defun test-package-emacs-doctor ()
  "Switch to *doctor* buffer and start giving psychotherapy."
  (interactive)
  (switch-to-buffer "*doctor*")
  (doctor-mode))

(message "Test d'affichage")

(defcustom une-autre-variable (concat user-emacs-directory "test")
  "une autre"
  :group 'test-package-emacs
  :package-version '(test-package-emacs . "0.0.1")
  :type 'directory)


(provide 'test-package-emacs)
;;; test-package-emacs.el ends here
