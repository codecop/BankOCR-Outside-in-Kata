@color 02
call r5rs test\bank-ocr-test.scm
@if ERRORLEVEL 1 goto :fail


@echo test suite OK
@goto :stop

:fail
@color 04
@echo FAILED: !errorlevel!

:stop