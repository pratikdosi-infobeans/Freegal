package testscripts;

import org.testng.annotations.Test;

import java.net.MalformedURLException;
import java.util.concurrent.TimeUnit;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

import org.openqa.selenium.By;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import pageviews.LoginPage;
import setup.CoAdMobileAndroidDriver;

import org.testng.Assert;
import org.testng.Reporter;

import config.CoAdConfig;

public class LoginTest {
	
	AndroidDriver<MobileElement> driver = null;
	LoginPage login = null;
	WebDriverWait wait = null;
	
	public LoginTest() throws MalformedURLException{
		driver = CoAdMobileAndroidDriver.getAndroidDriver();
		 login = PageFactory.initElements(driver, LoginPage.class);
		 wait = new WebDriverWait(driver, 50);
	}

	/* Validates Splash View Displayed */
	@Test(priority = 1)
	public  void splashView() throws MalformedURLException {
		Assert.assertEquals(login.isSplashViewDisplayed(), true);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/imageViewLogo"))).isDisplayed();	
		Assert.assertEquals(login.isCoAdvantageLogoDisplayed(), true);
	}
	

    /* Test Case to login with invalid and valid credentials */
	@Test(priority =2)
		public void loginWithCredential() throws MalformedURLException {	
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/emailTextField")));
			login.submitLoginDetails(CoAdConfig.loginEmail, CoAdConfig.loginInvalidPassword, driver);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("com.coadvantage.coad:id/loadingTitle")));
			Assert.assertEquals(login.getInvalidCredentialsMessage(), "The e-mail address or password you entered was incorrect. Please try again");
	 
			Reporter.log("Validated login with invalid credentials");
			login.submitLoginDetails(CoAdConfig.loginEmail, CoAdConfig.loginValidPassword, driver);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("com.coadvantage.coad:id/loadingTitle")));
			//login.tapOnAllowPermissionBtn();
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/btnSlideMenu")));
			Assert.assertEquals(login.getLoggedInUserName(), "Roy Price JR");	
			Reporter.log("Validated login with valid credentials");
			driver.closeApp();
			driver.launchApp();
	}	
	
	/* Test case to perform Remember Me Functionality */
	@Test(priority = 3)
	public void validateRememberMeFunctionality() throws MalformedURLException {
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/emailTextField")));
		String a = login.validateRememberMeCheck(CoAdConfig.loginEmail, CoAdConfig.loginValidPassword, driver);
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("com.coadvantage.coad:id/loadingTitle")));
		//login.tapOnAllowPermissionBtn();
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/btnSlideMenu")));
		Assert.assertEquals(login.getLoggedInUserName(), "Roy Price JR");
		driver.closeApp();
		driver.launchApp();
		
		try {
			Thread.sleep(8000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("kjdfjks");
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/btnLogin")));
		System.out.println("uhfuihergug");
		Assert.assertEquals(a, CoAdConfig.loginEmail);
		
	}
}



	

		
	

