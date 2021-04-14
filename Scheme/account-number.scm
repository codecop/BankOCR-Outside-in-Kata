;; Value object for account numbers.
(define-type account-number value)

(define (account-number=? number other)
    (string=? (account-number-value number)
              (account-number-value other)))

(define (account-number->string number)
    (account-number-value number))
