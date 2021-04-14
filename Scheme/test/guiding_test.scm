(include "assert-r5rs.scm")
(include "sample-input.scm")

(include "../bank-ocr.scm")

(test-case "parse OCR line"
    ;; TODO failing test, start here
    ;; guiding test from outside in as starting point.
    ;; a) ignore this test with "ignored-..."
    ;; b) or stub everything in the bank-ocr function
    ;; c) or let it be red until the end
    (assert-list= account-number->string
                  account-number=?
                  (list (make-account-number "123456789"))
                  (bank-ocr sample-input-all-digits)))
