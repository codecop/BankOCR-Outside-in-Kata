<?php
namespace Test\Kata;

use \Mockery;

/**
 * Test the Mockery infrastructure.
 */
class MockeryTest extends \PHPUnit_Framework_TestCase
{

    /** @after */
    public function verifyMocks()
    {
        Mockery::close();
    }

    /** @test */
    public function shouldAssertWithMockery()
    {
        // arrange
        $foo = Mockery::mock('foo');
        $foo->shouldReceive('parse') // assert
            ->times(1)
            ->andReturn(false);
        // act
        $foo->parse("abc");
    }
}
