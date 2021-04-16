@set r5rs="C:\Program Files (x86)\ChickenScheme\bin\csi.exe" -r5rs-syntax -q -b -I test
@rem -standard -quiet -batch -include "test"

@color 02
call %r5rs% test\scheme-unit-test.scm
@if ERRORLEVEL 1 goto :fail

call %r5rs% test\account-number-test.scm
@if ERRORLEVEL 1 goto :fail

call %r5rs% test\guiding_test.scm
@if ERRORLEVEL 1 goto :fail

call %r5rs% test\bank-ocr-test.scm
@if ERRORLEVEL 1 goto :fail

@echo test suite OK
@goto :stop

:fail
@color 04
@echo FAILED: !errorlevel!

:stop
