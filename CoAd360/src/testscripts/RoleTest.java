package testscripts;
import org.testng.annotations.Test;

import java.net.MalformedURLException;
import java.util.concurrent.TimeUnit;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import pageviews.LoginPage;
import pageviews.RolePage;
import setup.CoAdMobileAndroidDriver;

import org.testng.Assert;
import org.testng.Reporter;

import config.CoAdConfig;

public class RoleTest {

	AndroidDriver<MobileElement> driver = null;
	WebDriverWait wait = null;
    RolePage rolePage = null;

	
	public RoleTest() throws MalformedURLException{
		driver = CoAdMobileAndroidDriver.getAndroidDriver();
		rolePage = PageFactory.initElements(driver, RolePage.class);
		wait = new WebDriverWait(driver, 100);
	}
	
	
	@Test(priority = 1)	
    public  void selecteduserismanager() throws InterruptedException {
	
		LoginPage login = PageFactory.initElements(driver, LoginPage.class);
		Thread.sleep(7000);
		login.submitLoginDetails(CoAdConfig.loginEmail, CoAdConfig.loginValidPassword, driver);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/rr_employee_content")));
		
		Assert.assertEquals(rolePage.getManagerSummary(), "EMPLOYEES"); 
		System.out.println("Employee cell is present for manager user only");
	}
	
	
	 @Test(priority = 2)	
    public  void selecteduserisemployee() throws InterruptedException  {
	
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/ivSwitchCurrentRole")));
		rolePage.selectdropdown();
		//Reporter.log("Role list is displayed");
		 System.out.println("Role list is displayed");

		 
		 rolePage.EmployeeisSelected();
		 System.out.println("Self user is selected");
		  Thread.sleep(8000);
		 wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/rr_mypto_content")));
      
          
		 rolePage.verticalscroll(driver);
		 System.out.println("Scroll to top");

/*	//scroll to top for employee summary		
		    int startX= 19;    
			int startY= 120;
			int endX =  8;
			int endY =  847;
			      	int swipeDuration = 1000;
			      	driver.swipe(startX,startY,endX,endY,swipeDuration); 
			      	*/
		 
		  wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/rr_mysummary_content")));
			
		  
			//Assert.assertEquals(rolePage.getEmpSummary(), "ON JOB"); 
		    Assert.assertEquals(rolePage.getEmployeeSummary(), "START\nDATE"); 
		    System.out.println("Summary cell is present for employee user only");
		    
	 }	    
		    	    
		    		 
	@Test(priority = 3)
	public  void validatetimelinelist() {
		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/rr_userTimeline")));

		
		rolePage.TimelineisSelected();
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/txtTimeline")));
	    Assert.assertEquals(rolePage.getTimelinePage(), "TimeLine");
		System.out.println("timeline list is displayed");

	    rolePage.TimelineisSelected();
	    System.out.println("Close timeline list");
	      }
		 
	
   } 
