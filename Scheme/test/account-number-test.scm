(include "assert-r5rs.scm")
(include "../account-number.scm")

(define (assert-account-number= expected actual)
    (assert-equal account-number->string account-number=? expected actual))

(test-case "equal"
    (assert-account-number=
        (make-account-number "123456789")
        (make-account-number "123456789")))

(test-case "not equal"
    (assert-false
        (account-number=?
            (make-account-number "123456789")
            (make-account-number "123456788"))))

(test-case "number as string"
    (assert-string=
        "123456789"
        (account-number->string (make-account-number "123456789"))))
