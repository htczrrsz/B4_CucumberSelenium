package com.krafttech.pages;

import com.krafttech.utilities.BrowserUtils;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;

public class ComponenentsPage extends BasePage {


    @FindBy(xpath = "//a[text()='Home']")
    public WebElement homeButton;

    @FindBy(xpath = "//li[text()='Components']")
    public WebElement dashboardText;

    @FindBy(css = "main#main li:nth-of-type(3)")
    public WebElement title3;



    public String getHomeButtonText(){
      return homeButton.getText();
    }


    public String getDashboardText(){
        return dashboardText.getText();
    }


    public String getTitle3Text(){
       return title3.getText();
    }

}
