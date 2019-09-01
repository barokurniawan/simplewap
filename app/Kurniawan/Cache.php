<?php

namespace App\Kurniawan;

class Cache extends \Illuminate\Support\Facades\Cache
{
    const ONE_MINUTE = (60 * 1);
    const TWO_MINUTE = (60 * 2);
    const THREE_MINUTE = (60 * 3);
    const FOUR_MINUTE = (60 * 4);
    const FIVE_MINUTE = (60 * 5);

    const ONE_HOUR = (self::ONE_MINUTE * 60);
    const TWO_HOUR = (self::ONE_HOUR * 2);
    const THREE_HOUR = (self::ONE_HOUR * 3);
    const FOUR_HOUR = (self::ONE_HOUR * 4);
    const FIVE_HOUR = (self::ONE_HOUR * 5);

    const ONE_DAY = self::ONE_HOUR * 24;
    const TWO_DAY = self::ONE_DAY * 2;
    const THREE_DAY = self::ONE_DAY * 3;
    const FOUR_DAY = self::ONE_DAY * 4;
    const FIVE_DAY = self::ONE_DAY * 5;

    const ONE_MONTH = self::ONE_DAY * 30;
    const TWO_MONTH = self::ONE_MONTH * 2;
    const THREE_MONTH = self::ONE_MONTH * 3;
    const FOUR_MONTH = self::ONE_MONTH * 4;
    const FIVE_MONTH = self::ONE_MONTH * 5;
}
