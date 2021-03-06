use base "basetest";
use strict;
use testapi;

sub Type_Password
{
    
    assert_and_click "t";
    assert_and_click "e";
    assert_and_click "s";
    assert_and_click "t";
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "1";
    assert_and_click "2";
    assert_and_click "3";
    assert_and_click "CloseNumericAndSpecialKey";
    assert_and_click "EnterKey";
}


sub Adding_Language
{

    send_key "super";
    wait_idle 5;
    type_string "Settings";
    send_key "ret";
    assert_screen "SettingsScreen",1000;
    #adding Japanese locale
    assert_and_click "RegionAndLanguage";
    assert_screen "RegionAndLanguageScreen",1000;
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Japanese";
    assert_and_click "Japanese";
    assert_and_click "Japanese(KanaKanji)";
    assert_and_click "AddInRandL";
   
    #adding German locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "German";
    assert_and_click "German(Germany)";
    assert_and_click "German";
    assert_and_click "AddInRandL";

    #adding Russian locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Russian";
    assert_and_click "Russian(Russian_Federation)";
    assert_and_click "Russian";
    assert_and_click "AddInRandL";

    #adding Chinese locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Chinese";
    assert_and_click "Chinese(China)";
    assert_and_click "Chinese(Intelligent_Pinyin)";
    assert_and_click "AddInRandL";

    #adding Korean locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Korean";
    assert_and_click "Korean";
    assert_and_click "Korean(Hangul)";
    assert_and_click "AddInRandL";

    #adding Italian locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Italy";
    assert_and_click "Italian(Italy)";
    assert_and_click "Italian";
    assert_and_click "AddInRandL";


    #adding Spanish locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Spain";
    assert_and_click "Spanish(Spain)";
    assert_and_click "Spanish(Macintosh)";
    assert_and_click "AddInRandL";


    #adding French locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "French";
    assert_and_click "French(France)";
    assert_and_click "French(alt)";
    assert_and_click "AddInRandL";


    #adding Portuguese locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Portuguese";
    assert_and_click "Portuguese(Brazil)";
    assert_and_click "Portuguese(Brazil)";
    assert_and_click "AddInRandL";

    #adding Hindi locale
    assert_and_click "PlusInRandL";
    assert_and_click "MoreLanguage";
    type_string "Hindi";
    assert_and_click "Hindi";
    assert_and_click "Hindi(m17n)";
    assert_and_click "AddInRandL";
    assert_and_click "ClickCloseOption";

=pod
    assert_and_click "ClickUniversalAccess";
    #send_key "ret";
    assert_and_dclick "UniversalAccessScreenBar",3000;
    mouse_dclick "UniversalTitleBar";
    assert_and_click "ClickOnUniversalToggleButton";
    assert_and_click "ClickScreenKeyboardToggle";
    assert_and_click "ClickCloseOption";
=cut

}    
sub Enabling_OSK
{
    send_key "super";
    wait_idle 5;
    type_string "Settings";
    send_key "ret";
    assert_screen "SettingsScreen",1000;
    assert_and_click "ClickUniversalAccess";
    #send_key "ret";
    assert_and_dclick "UniversalAccessScreenBar",3000;
    mouse_dclick "UniversalTitleBar";
    assert_and_click "ClickOnUniversalToggleButton";
    assert_and_click "ClickScreenKeyboardToggle";
    assert_and_click "ClickCloseOption";
}

sub run
{
    assert_screen "LoginScreen",300;
    assert_and_click "ClickUniversalAccount";
    type_password "test123";
    assert_and_click "SignIn";
    wait_idle 30;
    Adding_Language();
    Enabling_OSK();
    
    #TestCase4(a): On screen keyboard vs actual keyboars
    #Caps pressed on the actual keyboard
    send_key "super";
    wait_idle 5;
    type_string "gedit";
    send_key "ret";
    wait_idle 5;
    send_key "caps";
    assert_and_click "d";
    assert_and_click "r";
    assert_and_click "a";
    assert_and_click "g";

    #TestCase4(b): On screen keyboard vs actual keyboars
    #Caps clicked on the on screen keyboard
    send_key "caps"; #pressing again caps key so that it will be stopped
    assert_and_click "CapsKeyOn";
    assert_and_click "EnterKey";
    type_string "drag";
    assert_and_click "CapsKeyOff";


    #TestCase5: Lowercase alphabets
    assert_and_click "EnterKey";
    assert_and_click "p";
    assert_and_click "r";
    assert_and_click "o";
    assert_and_click "b";
    assert_and_click "o";
    assert_and_click "o";
    assert_and_click "k";

    #TestCase6:Uppercase alphabets 
    assert_and_click "EnterKey";
    assert_and_click "CapsKeyOn","right",30,2;
    type_string "CAPS key enabled";
    assert_and_click "EnterKey";
    assert_and_click "G";
    assert_and_click "R";
    assert_and_click "O";
    assert_and_click "O";
    assert_and_click "T";
    assert_and_click "CapsKeyOff";
    assert_and_click "EnterKey";

    #TestCase7:Numbers
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "1";
    assert_and_click "3";
    assert_and_click "4";
    assert_and_click "6";
    assert_and_click "9";
    assert_and_click "CloseNumericAndSpecialKey";
    assert_and_click "EnterKey";	

    #TestCase8: Special Characters
    assert_and_click "NumericAndSpecialKey";
    assert_and_click "+";
    assert_and_click ";";
    assert_and_click ",";
    assert_and_click "MoreSpecialCharacterKey";
    assert_and_click "|";
    assert_and_click "}";
    assert_and_click "CloseMoreSpecialCharacterKey";
    assert_and_click "CloseNumericAndSpecialKey";

    #TestCase9: Using special modification keys
    assert_and_click "EnterKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "R";
    assert_and_click "e"; 
    assert_and_click "d";
    assert_and_click "CapsKeyOn";
    assert_and_click "H";
    assert_and_click "a";
    assert_and_click "t";
    assert_and_click "SpaceBarKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "P";
    assert_and_click "u";
    assert_and_click "n";
    assert_and_click "e";
    assert_and_click "e";
    assert_and_click "BackSpaceKey";
    assert_and_click "EnterKey";
    assert_and_click "CapsKeyOn";
    assert_and_click "M";
    assert_and_click "a";
    assert_and_click "h";
    assert_and_click "a";
    assert_and_click "r";
    assert_and_click "a";
    assert_and_click "s";
    assert_and_click "h";
    assert_and_click "t";
    assert_and_click "r";
    assert_and_click "a";
    assert_and_click "EnterKey";

=pod
    #TestCase11(a): Using more variations of vowels keys on alphabetical pad
    #Lowercase

    #Click and hold the key a for 2sec.
    assert_and_click "ClickAndHolda","right",30,2;
    #selecting all the variatons of character a
    assert_and_click "aWithSlant";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithRightSlant";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithCap";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithTwoDots";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aLikee";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithTilde";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithSingleDot";
        assert_and_click "ClickAndHolda","right",30,2;
    assert_and_click "aWithBar";

    #Click and hold the key e for 2sec.
    assert_and_click "ClickAndHolde","right",30,2;
    #selecting all the variatons of character e
    assert_and_click "eWithLeftSlant";
        assert_and_click "ClickAndHolde","right",30,2;
    assert_and_click "eWithRightSlant";
        assert_and_click "ClickAndHolde","right",30,2;
    assert_and_click "eWithCap";
        assert_and_click "ClickAndHolde","right",30,2;
    assert_and_click "eWithTwoDots";
    assert_and_click "ClickAndHolde","right",30,2;
    assert_and_click "eWithBar";

    #Click and hold the key i for 2sec.
    assert_and_click "ClickAndHoldi","right",30,2;
    #selecting all the variatons of character i
    assert_and_click "iWithCap";
        assert_and_click "ClickAndHoldi","right",30,2;
    assert_and_click "iWithTwoDots";
        assert_and_click "ClickAndHoldi","right",30,2;
    assert_and_click "iWithRightSlant";
        assert_and_click "ClickAndHoldi","right",30,2;
    assert_and_click "iWithBar";
        assert_and_click "ClickAndHoldi","right",30,2;
    assert_and_click "iWithLeftSlant";

    #Click and hold the key o for 2sec.
    assert_and_click "ClickAndHoldo","right",30,2;
    #selecting all the variatons of character o
    assert_and_click "oWithCap";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oWithTwoDots";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oWithLeftSlant";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oWithRightSlant";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oWithE";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oLikePie";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oWithBar";
        assert_and_click "ClickAndHoldo","right",30,2;
    assert_and_click "oWithTilde";

    #Click and hold the key u for 2sec.
    assert_and_click "ClickAndHoldu","right",30,2;
    #selecting all the variatons of character u
    assert_and_click "uWithCap";
        assert_and_click "ClickAndHoldu","right",30,2;
    assert_and_click "uWithTwoDots";
        assert_and_click "ClickAndHoldu","right",30,2;
    assert_and_click "uWithLeftSlant";
        assert_and_click "ClickAndHoldu","right",30,2;
    assert_and_click "uWithRiguhtSlant";
        assert_and_click "ClickAndHoldu","right",30,2;
    assert_and_click "uWithBar";
    assert_and_click "EnterKey";
    
    #TestCase11(b): Using more variations of vowels keys on alphabetical pad
    #Uppercase

    assert_and_click "CapsKeyOn","right",30,2;
    #Click and hold the key a for 2sec.
    assert_and_click "ClickAndHoldA","right",30,2;
    #selecting all the variatons of character a
    assert_and_click "AWithSlant";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "AWithRightSlant";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "AWithCap";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "AWithTwoDots";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "ALikee";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "AWithTilde";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "AWithSingleDot";
        assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "AWithBar";

    #Click and hold the key e for 2sec.
    assert_and_click "ClickAndHoldE","right",30,2;
    #selecting all the variatons of character e
    assert_and_click "EWithLeftSlant";
        assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "EWithRightSlant";
        assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "EWithCap";
        assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "EWithTwoDots";
        assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "EWithBar";

    #Click and hold the key i for 2sec.
    assert_and_click "ClickAndHoldI","right",30,2;
    #selecting all the variatons of character i
    assert_and_click "IWithCap";
        assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "IWithTwoDots";
        assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "IWithRightSlant";
        assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "IWithBar";
        assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "IWithLeftSlant";

    #Click and hold the key o for 2sec.
    assert_and_click "ClickAndHoldO","right",30,2;
    #selecting all the variatons of character o
    assert_and_click "OWithCap";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OWithTwoDots";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OWithLeftSlant";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OWithRightSlant";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OWithE";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OLikePie";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OWithBar";
        assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "OWithTilde";

    #Click and hold the key u for 2sec.
    assert_and_click "ClickAndHoldU","right",30,2;
    #selecting all the variatons of character u
    assert_and_click "UWithCap";
        assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "UWithTwoDots";
        assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "UWithLeftSlant";
        assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "UWithRiguhtSlant";
        assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "UWithBar";
    assert_and_click "CapsKeyOff";
    assert_and_click "EnterKey";
=cut
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";
    assert_and_click "EnterKey";


    #TestCase13: Using the actual as well as on screen keyboard simultaneously
    assert_and_click "CapsKeyOn";
    assert_and_click "T";
    assert_and_click "i";
    assert_and_click "g";
    assert_and_click "e";
    assert_and_click "r";
    type_string " Forest";
    assert_and_click "EnterKey";

    #TestCase10: The hide keyboard key
    assert_and_click "EnterKey";
    assert_and_click "HideKeyboardKey";
    wait_idle 5;
    assert_and_click "ClickAnywhere";
    wait_idle 10;
    assert_and_click "CloseGedit";
    assert_and_click "CloseWSaving";

    
}
sub test_flags
{
	return {fatal => 1};
}

1;  	

