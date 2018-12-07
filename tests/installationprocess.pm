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

    assert_and_click "ClickUniversalAccess";
    #send_key "ret";
    assert_and_dclick "UniversalAccessScreenBar",3000;
    mouse_dclick "UniversalTitleBar";
    assert_and_click "ClickOnUniversalToggleButton";
    assert_and_click "ClickScreenKeyboardToggle";
    assert_and_click "ClickCloseOption";

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
	
	
    assert_screen "bootloader",300;

    send_key "ret";

    assert_screen "WelcomeToFedoraScreen",10000;
    assert_and_click "InstallToHardDrive";


    assert_screen "InstallationLanguageSelection",10000;
    type_string "English",100;

    #To select the English as installation language
    assert_and_click "SelectEnglishLanguage";
    assert_and_click "ClickContinue";
	
    #Asserting Installation summary, Adding keyboard layout, Setting date & time & Setting up installation destination
    assert_screen "InstallationSummary",100;
    assert_and_click "ClickOnKeyboard";
    assert_screen "SelectingKeyboardScreen";
    assert_and_click "PlusSign";
    type_string "English",60;
    assert_and_click "English(Australian)";
    assert_and_click "Add";
    assert_and_click "Done";
    wait_idle 5;

    #Choosing installation destination
    assert_and_click "ClickInstallationDestination";
    assert_screen "InstallationDestinationScreen";
    assert_and_click "Done";

    wait_idle 15;
    #To begin installation
    assert_and_click "BeginInstallation";
    assert_screen "ConfigurationInstallationScreen",100;
    #wait 12 min approx to complete installation
       
    assert_screen "InstallationCompletion",1300;
    wait_idle 15;	
    #After installation completion
    assert_and_click "QuitButton";
    wait_idle 3;
    Enabling_OSK();
	

    #Rebooting the system to finalize installation and creating user
    send_key "super";
    type_string "Terminal",10;
    wait_idle 5;
    assert_and_click "SelectTerminal";
    wait_idle 10;
    type_string "reboot";
    wait_idle 5;
    send_key "ret";

    #After rebooting going through Setup screen 
    assert_screen "SetupScreen",300;
    assert_and_click "WelcomeNextButton";

    #Privacy screen
    assert_screen "Privacy",25;
    assert_and_click "PrivacyNextButton";

    #Online accounts screen, we are just skipping it
    assert_screen "OnlineAccounts",25;
    assert_and_click "AccountSkipButton";

    #Setting up username i.e About you screen
    assert_screen "UserSetup",25;
    wait_idle 20;
    type_string "Universal";
    assert_and_click "UserNextButton";


    #Password setup screen
    assert_screen "PasswordScreen";
    type_password "test123";
    send_key "tab";
    type_password "test123";
    assert_and_click "PasswordNextButton";

    #Ready to use Fedora 28
    assert_screen "ReadyToGo",60;
    assert_and_click "StartUsingFedora";

    #Logging in 
    assert_screen "LoginScree",400;
    assert_and_click "UniversalTab";
    assert_and_click "ScreenKeyboardToggle";
    assert_and_click "ClickUnversalAccess";
    wait_idle 5;
    Type_Password();
    assert_screen "DesktopAfterLogin",300; 
    #Enabling_OSK();
    #Adding_Language();

    #Power off the system
    wait_idle 3;
    send_key "super";
    wait_idle 2;
    type_string "Terminal";
    send_key "ret";
    wait_idle 2;
    type_string "poweroff";
    send_key "ret";
    wait_idle 300;

  
	



}
sub test_flags
{
	return {fatal => 1};
}

1;
