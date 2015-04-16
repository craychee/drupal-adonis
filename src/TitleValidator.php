<?php

class TitleValidator
{

  public function checkClean($title)
  {
    $title = strtolower($title);
    $title_parts = explode(' ', $title);

    foreach ($title_parts as $title_part) {
      if (in_array($title_part, $this->getSwears())) {
        throw new \Exception('');
      }
    }
  }

  public function getSwears()
  {
    return array('ie6', 'wordpress', 'php5.2');
  }
}
