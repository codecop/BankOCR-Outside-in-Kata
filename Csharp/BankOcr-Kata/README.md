## BankOCR Kata C# Setup ##

This is a .NET Core 2.0 project.
The programming language is C# 7.1 (Visual Studio 2017 version 15.3).
[xUnit](https://xunit.github.io/) and [moq](https://github.com/Moq/moq)
are provided as dependencies.

* Verify your .NET Core installation with `dotnet --version`.
* Download the required dependency with `dotnet restore`.
* Run `dotnet test` to verify your setup and run the tests. You should see a test failure.

### Where to start ###

There is a failing guiding test `GuidingTest.cs`,
which you can use as starting point. It tests the `BankOcr.cs`,
which contains the empty, outside interface of the API you need to create.

There are different example inputs for tests in `BankOcr-Kata.Tests/Resources`.
