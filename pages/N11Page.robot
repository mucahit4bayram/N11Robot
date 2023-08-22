*** Settings ***
Library    SeleniumLibrary
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py


*** Keywords ***
N11 Anasayfaya Git
    Open Browser    ${DataN11.UrlN11}    firefox
    Maximize Browser Window
    Set Selenium Implicit Wait    10s



N11 Giris Yap
    Click Element   ${N11Locators.Giris_Yap}
    Input Text   ${N11Locators.Email_Yeri}    ${DataN11.EMAIL}
    Input Password    ${N11Locators.Sifre_Yeri}    ${DataN11.SIFRE}
    Click Element    ${N11Locators.Login_Butonu}
    
Urun Arama
    Input Text    ${N11Locators.Arama_Yeri}    ${DataN11.ARANACAK_KELIME}
    Click Element    ${N11Locators.Arama_Butonu}
    Title Should Be    ${DataN11.Expected_Title}
    Click Element    ${N11Locators.Sepete_Ekle}









