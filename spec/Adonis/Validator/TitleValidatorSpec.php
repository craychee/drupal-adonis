<?php

namespace spec\Adonis\Validator;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class TitleValidatorSpec extends ObjectBehavior
{
  function it_should_define_swears()
  {
    $this->getSwears()->shouldHaveValue('frack');
    $this->getSwears()->shouldHaveValue('ship');
    $this->getSwears()->shouldHaveValue('php5.2');
  }

  function it_checks_for_swear_words_in_titles()
  {
    $this->shouldThrow('\Exception')->duringCheckClean("I like Ship");
    $this->shouldThrow('\Exception')->duringCheckClean("I hate FraCk");
    $this->shouldThrow('\Exception')->duringCheckClean("PhP5.2 is cool");
    $this->shouldNotThrow('\Exception')->duringCheckClean("Test your shit.");
  }

  public function getMatchers()
  {
    return [
      'haveValue' => function($swears, $value) {
        return in_array($value, $swears);
      },
        ];
  }
}
