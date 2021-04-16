(include "assert-r5rs.scm")

(include "../account-number.scm")

(test-case "value"
    (assert-string= "121212121" (account-number-value (make-account-number "121212121"))))

(test-case "equal"
    (assert-equal account-number->string
                  account-number=?
                  (make-account-number "123456789")
                  (make-account-number "123456789")))

(test-case "not equal"
    (assert-false (account-number=? (make-account-number "123456789")
                                    (make-account-number "123456788"))))

(test-case "not equal wrong type"
    (assert-false (account-number=? (make-account-number "123456789")
                                    "123456788")))

(test-case "number as string"
    (assert-string= "121212121" (account-number->string (make-account-number "121212121"))))
