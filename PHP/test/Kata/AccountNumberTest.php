<?php
namespace Test\Kata;

use \Kata\AccountNumber;

class AccountNumberTest extends \PHPUnit_Framework_TestCase
{

    /** @test */
    public function shouldBeEqualInList()
    {
        $accountNumbers = [new AccountNumber("123456789")];

        $this->assertEquals(1, count($accountNumbers));
        $this->assertEquals(new AccountNumber("123456789"), $accountNumbers[0]);
    }

    /** @test */
    public function shouldNotBeEqual()
    {
        $this->assertNotEquals(new AccountNumber("123456789"), new AccountNumber("123456788"));
    }

    /** @test */
    public function shouldListNumberAsString()
    {
        $accountNumber = new AccountNumber("123456789");

        $this->assertEquals("123456789", "" . $accountNumber);
    }

    /**
     * @test
     * @expectedException \InvalidArgumentException
     */
    public function shouldValidateNumberLength()
    {
        // $this->expectException(\InvalidArgumentException::class);
        new AccountNumber("12345678");
    }

    /**
     * @test
     * @expectedException \InvalidArgumentException
     */
    public function shouldValidateNumber()
    {
        // $this->expectException(\InvalidArgumentException::class);
        new AccountNumber("12345678n");
    }

}
