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
    # assert_and_click "ClickAnywhere2";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    type_string "Now testing in Hangul locale";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "LanguageKey";
    assert_and_click "HangulLanguage";
    assert_and_click "ClickAnywhere2";
    assert_and_click "CapsKeyOn";
    assert_and_click "H";
    assert_and_click "a";
    assert_and_click "n";
    assert_and_click "g";
    assert_and_click "u";
    assert_and_click "l";
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "-";
    assert_and_click "2";
    assert_and_click "CloseNumericAndSpecialKey";
    assert_and_click "b";
    assert_and_click "u";
    assert_and_click "l";
    assert_and_click "NumericAndSpecialKey";
    assert_and_click ":";
    assert_and_click "CloseNumericAndSpecialKey";

    assert_and_click "SpaceBarKey";
    
    assert_and_click "q";
    assert_and_click "o";
    assert_and_click "r";
    assert_and_click "SpaceBarKey";

    
    assert_and_click "r";
    assert_and_click "h";
    assert_and_click "k";
    assert_and_click "SpaceBarKey";


    assert_and_click "t";
    assert_and_click "k";
    assert_and_click "SpaceBarKey";


    assert_and_click "w";
    assert_and_click "j";
    assert_and_click "s";
    assert_and_click "SpaceBarKey";

    wait_idle 5;
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

