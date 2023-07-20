package com.krafttech.stepDefinitions;

import com.krafttech.pages.UserProfilePage;
import com.krafttech.utilities.BrowserUtils;
import io.cucumber.java.en.Then;
import org.junit.Assert;

import java.util.List;

public class UserProfile_StepDefs {

    UserProfilePage userProfilePage= new UserProfilePage();

    @Then("The user should be able to see following sub menu")
    public void theUserShouldBeAbleToSeeFollowingSubMenu(List<String> subMenu) {
        List <String> actualSubMenu= BrowserUtils.getElementsText(userProfilePage.tabList);
        System.out.println("actualSubMenu = " + actualSubMenu);
        System.out.println("subMenu = " + subMenu);
        Assert.assertEquals(subMenu,actualSubMenu);
    }


}
