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
    type_string "Now testing in German locale";
    assert_and_click "EnterKey"; 
    assert_and_click "EnterKey";
    assert_and_click "LanguageKey";
    assert_and_click "GermanLanguage";
    assert_and_click "ClickAnywhere2";
    assert_and_click "CapsKeyOn";
    assert_and_click "B";
    assert_and_click "i";
    assert_and_click "n";
    assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithTwoDots";
    assert_and_click "r";
    assert_and_click "p";
    assert_and_click "a";
    assert_and_click "k";
    assert_and_click "e";
    assert_and_click "t";
    assert_and_click "e";
    assert_and_click "EnterKey";
    assert_and_click "m";
    assert_and_click "ClickAndHoldu","right",30,2;
    assert_and_click "uWithTwoDots";
    assert_and_click "s";
    assert_and_click "s";
    assert_and_click "e";
    assert_and_click "n";
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
