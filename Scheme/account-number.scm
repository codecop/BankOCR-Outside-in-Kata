;; Value object for account numbers.

;; (define-type account-number value)
;; define-type is not R5RS

(define (make-account-number value)
    (list "account-number" value))

(define (account-number? number)
    (and (list? number)
         (= 2 (length number))
         (string=? "account-number" (car number))))

(define (account-number-value number)  ; getter
    (if (account-number? number)
        (car (cdr number))
        (error "Argument is not an AccountNumber -- account-number-value")))

(define (account-number=? number other)
    (and (account-number? number)
         (account-number? other)
         (string=? (account-number-value number)
                   (account-number-value other))))

(define (account-number->string number)
    (if (account-number? number)
        (account-number-value number)
        (error "Argument is not an AccountNumber -- account-number->string")))
