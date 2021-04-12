(include "assert-r5rs.scm")
(include "../bank-ocr.scm")

(test-case "drop"
    (assert-number-list= (drop (list 1 2 3) 2) (list 3)))
(test-case "take"
    (assert-number-list= (take (list 1 2 3) 2) (list 1 2)))

; how to represent an account number? object or string?

(define all-digits
    (list
        "    _  _     _  _  _  _  _ "
        "  | _| _||_||_ |_   ||_||_|"
        "  ||_  _|  | _||_|  ||_| _|"
        "                           "
    )
)

; original API was
; List<AccountNumber> parse(List<String> rawLines)
;
; guiding test against bank-ocr
(test-case "guiding test"
    (assert-string-list=
        (list "123456789")
        (bank-ocr all-digits)))

;
;
; unit tests against parse-digit

(define ocr-digit-one
    (list
        "   "
        "  |"
        "  |"
    )
)

(test-case "should parse 1"
    (assert-string= "1" (parse-digit ocr-digit-one)))

(define ocr-digit-two
    (list
        " _ "
        " _|"
        "|_ "
    )
)

(test-case "should parse 2"
    (assert-string= "2" (parse-digit ocr-digit-two)))

;
;
; unit tests against parse-digits

(test-case "should be empty for empty digits"
    (assert-string= "" (parse-digits (list))))

; stub
(define (parse-digit ocr-digit)
    "1"
)

(test-case "should parse digit into number for each digit"
    (assert-string= "111" (parse-digits (list ocr-digit-one ocr-digit-one ocr-digit-one))))

;
;
; unit tests against split-digits

(test-case "should split first digit"
    (assert-string-list=
        (list ocr-digit-one)
        (split-digits ocr-digit-one)))

(define two-ocr-digit-one
    (list
        "      "
        "  |  |"
        "  |  |"
    )
)

(test-case "should split second digit"
    (assert-string-list=
        (list ocr-digit-one ocr-digit-one)
        (split-digits two-ocr-digit-one)))

;
;
; unit tests against parse-line

; stub
(define (split-digits ocr-line)
    ocr-digit-one
)

; stub
(define (parse-digits ocr-digits)
    "1"
)

(test-case "should split and parse first digit"
    (assert-string= "1" (parse-line ocr-digit-one)))

;
;
; unit tests against bank-ocr
(test-case "should return empty list on empty input"
    (assert-string-list=
        (list)
        (bank-ocr (list))))

; stub
(define (parse-line ocr-line)
    "123456789"
)

(test-case "should call parse-line for single group of lines"
    (assert-string-list=
        (list "123456789")
        (bank-ocr all-digits)))

(test-case "should call parse-line for each group of lines"
    (assert-string-list=
        (list "123456789" "123456789")
        (bank-ocr (append all-digits all-digits))))