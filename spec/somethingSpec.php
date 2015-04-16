<?php

namespace spec;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class somethingSpec extends ObjectBehavior
{
    function it_is_initializable()
    {
        $this->shouldHaveType('something');
    }
}
