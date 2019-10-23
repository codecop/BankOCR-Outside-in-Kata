<?php
namespace Kata;

/**
 * Test the PHPUnit infrastructure.
 */
class PHPTest extends \PHPUnit_Framework_TestCase {

    /** @test */
    function shouldAssertPlain() {
        $this->assertEquals(2, 1 + 1);
    }

}
