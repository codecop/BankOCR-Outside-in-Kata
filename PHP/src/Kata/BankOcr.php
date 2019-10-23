<?php
namespace Kata;

/**
 * Example for the outside interface of the API we need to create.
 */
class BankOcr
{

    public function parse(array $rawLines)
    {
        throw new \InvalidArgumentException("not implemented");
    }

}
