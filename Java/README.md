## BankOCR Kata Java Setup ##

This is an [Apache Maven](https://maven.apache.org/) project.
The programming language is Java 8.
[JUnit](http://junit.org/) and [Mockito](http://mockito.org/)
are provided as dependencies.

* Verify your Java installation with `java -version` and `mvn -v`.
* Run `mvn test` to verify your setup and run the tests. You should see a test failure.

### Where to start ###

There is a failing guiding test `src/test/java/kata/GuidingTest.java`,
which you can use as starting point. It tests the `src/main/java/kata/BankOcr.java`,
which contains the empty, outside interface of the API you need to create.

There are different example inputs for tests in `src/test/resources`.
