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
    type_string "Now testing in portuguese locale";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "LanguageKey";
    assert_and_click "PortugueseLanguage";
    assert_and_click "ClickAnywhere2";
    assert_and_click "l";
    assert_and_click "a";
    assert_and_click "n";
    assert_and_click "ClickAndHoldc","right",30,2;
    assert_and_click "Caccent";
    assert_and_click "a";
    assert_and_click "m";
    assert_and_click "e";
    assert_and_click "n";
    assert_and_click "t";
    assert_and_click "o";
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

