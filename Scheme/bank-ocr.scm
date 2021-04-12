(include "account-number.scm")

; standard function
(define (drop x n)
    (if
        (zero? n) x
        (drop (cdr x) (- n 1))
    )
)

(define (take x n)
    (if
        (zero? n) '() ;'
        (append (list (car x)) (take (cdr x) (- n 1)))
    )
)

(define (bank-ocr ocr-lines)
; what is happening here?
; 1. split input into group of 4 lines
; 5. return list of all digits
    (if
        (null? ocr-lines)
        '() ;'
        (append
            (list (parse-line (take ocr-lines 3)))
            (bank-ocr (drop ocr-lines 4))
        )
    )
)

(define (parse-line ocr-line)
    (make-account-number (parse-digits (split-digits ocr-line))))

(define (split-digits ocr-line)
; what is happening here?
; 2. split group of 4 lines into 9 digits
    (define (take-3-chars s) (substring s 0 3))
    (define (drop-3-chars s) (substring s 3 (string-length s)))
    (if
        (zero? (string-length(car ocr-line)))
        '() ;'
        (append
            (list (map take-3-chars ocr-line))
            (split-digits (map drop-3-chars ocr-line))
        )
    )
)

(define (parse-digits ocr-digits)
; what is happening here?
; 4. collect digits into account number (string)
    (if
        (null? ocr-digits)
        ""
        (string-append
            (parse-digit (car ocr-digits))
            (parse-digits (cdr ocr-digits))
        )
    )
)

(define (parse-digit ocr-digit)
; what is happening here?
; 3. parse each for digit
    (let ((digit (apply string-append ocr-digit)))
        (cond
            ((string=? digit
                (string-append  "   "
                                "  |"
                                "  |")) "1")
            ((string=? digit
                (string-append  " _ "
                                " _|"
                                "|_ ")) "2")
            ((string=? digit
                (string-append  " _ "
                                " _|"
                                " _|")) "3")
            ((string=? digit
                (string-append  "   "
                                "|_|"
                                "  |")) "4")
            ((string=? digit
                (string-append  " _ "
                                "|_ "
                                " _|")) "5")
            ((string=? digit
                (string-append  " _ "
                                "|_ "
                                "|_|")) "6")
            ((string=? digit
                (string-append  " _ "
                                "  |"
                                "  |")) "7")
            ((string=? digit
                (string-append  " _ "
                                "|_|"
                                "|_|")) "8")
            ((string=? digit
                (string-append  " _ "
                                "|_|"
                                " _|")) "9")
            (else
                "?")
        )
    )
)
