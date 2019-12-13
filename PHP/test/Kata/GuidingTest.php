<?php
namespace Test\Kata;

use \Kata\BankOcr;
use \Test\Kata\Input;

class GuidingTest extends \PHPUnit_Framework_TestCase
{

    /** @test */
    public function shouldParseOcrLine()
    {
        // TODO failing test, start here
        // guiding test from outside in as starting point->
        // a) ignore this test
        // b) or stub everything in the BankOcr constructor
        // c) or let it be red until the end
        $bankOcr = new BankOcr();

        $accountNumbers = $bankOcr->parse(Input::allDigits());

        $this->assertEquals(1, count($accountNumbers));
        $this->assertEquals(new AccountNumber("123456789"), $accountNumbers[0]);
    }

}
