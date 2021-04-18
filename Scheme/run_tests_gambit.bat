@set r5rs="C:\Program Files\Gambit\v4.8.1\bin\gsi.exe" -:s
@rem -standard

@color 02
call %r5rs% test\scheme-unit-test.scm
@if ERRORLEVEL 1 goto :fail

call %r5rs% test\account-number-test.scm
@if ERRORLEVEL 1 goto :fail

call %r5rs% test\guiding_test.scm
@if ERRORLEVEL 1 goto :fail

@echo test suite OK
@goto :stop

:fail
@color 04
@echo FAILED: !errorlevel!

:stop
