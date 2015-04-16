<?php

namespace spec;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class TitleValidatorSpec extends ObjectBehavior
{
  function it_should_define_swears()
  {
    $this->getSwears()->shouldHaveValue('ie6');
    $this->getSwears()->shouldHaveValue('wordpress');
    $this->getSwears()->shouldHaveValue('php5.2');
  }

  function it_checks_for_swear_words_in_titles()
  {
    $this->shouldThrow('\Exception')->duringCheckClean("We need ie6");
    $this->shouldThrow('\Exception')->duringCheckClean("MUST HAVE IE6");
    $this->shouldThrow('\Exception')->duringCheckClean("I like wordpress");
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
