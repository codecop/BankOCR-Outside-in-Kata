(include "assert-r5rs.scm")

;; Test the unit test infrastructure.
(test-case "sample unit test"
    (assert= 2 (+ 1 1)))
