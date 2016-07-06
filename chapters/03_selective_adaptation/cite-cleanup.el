;; regex to find multiple citeNPs in a single parenthetical
;; run this first, fix them manually, then replace the others automagically
(defvar multi-citenp-regex "([^)]*\\\\citeNP{[^}]*}[^)]*\\\\cite[^)]*)")
multi-citenp-regex
(defun find-multi-citenp ()
  (interactive)
  (search-forward-regexp multi-citenp-regex)
  )


(defvar citenp-regex "(\\([^)]*\\)\\\\citeNP{\\(.*?\\)}\\([^(]*\\))")

(defun replace-citenp ()
  (interactive)
  (replace-regexp citenp-regex "\\\\autocite[\\1][\\3]{\\2}")
  )


;; deal with \cite<> nonsense from apacite
(defvar angleregex "\\\\cite<\\([^>]*\\)>")

(defun find-anglecite ()
  (interactive)
  (search-forward-regexp angleregex)
  )

(defun replace-anglecite()
  (interactive)
  (replace-regexp angleregex "\\\\autocite[\\1][]")
  )

;; \citeA -> \textcite
(defun replace-citea ()
  (interactive)
  (replace-string "\\citeA" "\\textcite")
  )
