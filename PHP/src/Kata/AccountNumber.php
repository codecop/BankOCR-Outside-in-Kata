<?php
namespace Kata;

/**
 * Value object for account numbers->
 */
class AccountNumber
{
    private $number;

    public function __construct($number)
    {
        if ($number == null || preg_match("/^\\d{9}$/", $number) != 1) {
            throw new \InvalidArgumentException($number);
        }
        $this->number = $number;
    }

    public function __toString()
    {
        return $this->number;
    }
}
