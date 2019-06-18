;;; atbash-cipher.el --- Atbash-Cipher (exercism)

;;; Commentary:




;;; Code:

(require 'seq)
(require 'subr-x)

(defun encode-atbash-char (c)
  (if (and (<= c ?z) (>= c ?a))
      (+ (- ?a 1) (+ (/ (+ 1 (- ?z ?a)) 2)
                     (/ (- (+ 1 (- ?z ?a))
                           (* 2
                              (- c ?a))) 2 )))
    c))

(defun format-plaintext (plaintext)
  (replace-regexp-in-string "," ""
                            (replace-regexp-in-string "[.]$" ""
                                                      (replace-regexp-in-string " " "" (downcase plaintext)))))

(defun make-space (txt)
  (string-trim (replace-regexp-in-string "\\([a-z0-9]\\{5\\}\\)" "\\1 " txt)))

(defun interpole-spaces (encoded_text)
  (seq-reduce (lambda (a) (car a) )
              (seq-map-indexed (lambda (elt idx) (list idx elt)) encoded_text)  "")
  )

(defun encode (plaintext)
  (make-space (mapconcat 'string (mapcar
                                  'encode-atbash-char
                                  (format-plaintext plaintext)) "")))


  (provide 'atbash-cipher)
;;; atbash-cipher.el ends here
