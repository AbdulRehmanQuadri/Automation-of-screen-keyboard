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
    type_string "Now testing in Hindi locale";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "LanguageKey";
    assert_and_click "HindiLanguage";
    assert_and_click "ClickAnywhere2";
    assert_and_click "u";
    assert_and_click "f";
    assert_and_click "x";
    assert_and_click "o";
    assert_and_click "r";
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

