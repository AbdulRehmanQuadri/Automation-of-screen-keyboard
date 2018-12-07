use strict;
use testapi;
use autotest;


#parent and chained job
if(get_var('EXTRATEST'))
{
	autotest::loadtest "tests/english_locale.pm";
	autotest::loadtest "tests/japanese_locale.pm";
	autotest::loadtest "tests/german_locale.pm";
	autotest::loadtest "tests/russian_locale.pm";
	autotest::loadtest "tests/chinese_locale.pm";
	autotest::loadtest "tests/hangul_locale.pm";
	autotest::loadtest "tests/italian_locale.pm";
	autotest::loadtest "tests/spanish_locale.pm";
	autotest::loadtest "tests/french_locale.pm";
	autotest::loadtest "tests/portuguese_locale.pm";
	autotest::loadtest "tests/hindi_locale.pm";

}
else
{
  	autotest::loadtest "tests/installationprocess.pm"
}

1;

