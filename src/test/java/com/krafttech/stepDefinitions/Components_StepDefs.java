package com.krafttech.stepDefinitions;

import com.krafttech.pages.ComponenentsPage;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class Components_StepDefs {

    ComponenentsPage componenentsPage= new ComponenentsPage();

    @Then("Validate that {string} and {string} and {string}")
    public void validate_that_and_and(String string, String string2, String string3) {
        String expected1 = string;
        String expected2 = string2;
        String expected3 = string3;

        String actual1= componenentsPage.getHomeButtonText();
        String actual2= componenentsPage.getDashboardText();
        String actual3= componenentsPage.getTitle3Text();

        Assert.assertEquals(expected1,actual1);
        Assert.assertEquals(expected2,actual2);
        Assert.assertEquals(expected3,actual3);


    }

}
