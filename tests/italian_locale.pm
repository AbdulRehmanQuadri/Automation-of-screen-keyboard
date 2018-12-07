use base "basetest";
use strict;
use testapi;

sub run
{


    wait_idle 50;
    send_key "super";
    wait_idle 5;
    type_string "gedit";
    send_key "ret";
    wait_idle 5;
    #    assert_and_click "ClickAnywhere2";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    type_string "Now testing in Italian locale";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "LanguageKey";
    assert_and_click "ItalianLanguage";
    assert_and_click "ClickAnywhere2";
    assert_and_click "CapsKeyOn";
    assert_and_click "V";
    assert_and_click "i";
    assert_and_click "r";
    assert_and_click "t";
    assert_and_click "u";
    assert_and_click "a";
    assert_and_click "l";
    assert_and_click "i";
    assert_and_click "z";
    assert_and_click "z";
    assert_and_click "a";
    assert_and_click "z";
    assert_and_click "i";
    assert_and_click "o";
    assert_and_click "n";
    assert_and_click "e";
    assert_and_click "EnterKey";
    assert_and_click "p";
    assert_and_click "i";
    assert_and_click "ClickAndHoldu","right",30,2;
    assert_and_click "uWithLeftSlant";
    assert_and_click "SpaceBarKey";
    assert_and_click "r";
    assert_and_click "e";
    assert_and_click "c";
    assert_and_click "e";
    assert_and_click "n";
    assert_and_click "t";
    assert_and_click "LanguageKey";
    assert_and_click "EnglishLanguage";
    wait_idle 5;
    assert_and_click "CloseGedit";
    assert_and_click "CloseWSaving";
}
sub test_flags
{
        return {fatal => 1};
}

1;

