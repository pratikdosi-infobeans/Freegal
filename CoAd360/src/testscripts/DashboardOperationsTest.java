package testscripts;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

import java.net.MalformedURLException;

import org.testng.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;

import pageviews.EmployeesPage;
import pageviews.LoginPage;
import pageviews.RolePage;
import setup.CoAdMobileAndroidDriver;
import config.CoAdConfig;

public class DashboardOperationsTest {
	
	AndroidDriver<MobileElement> driver = null;
	LoginPage login = null;
	WebDriverWait wait = null;
	RolePage rolePage = null;
	EmployeesPage employeePage = null;
	
	 public DashboardOperationsTest() throws MalformedURLException {
		 
		driver = CoAdMobileAndroidDriver.getAndroidDriver();
		 login = PageFactory.initElements(driver, LoginPage.class);
		 wait = new WebDriverWait(driver, 50);
		 rolePage = PageFactory.initElements(driver, RolePage.class);
		 employeePage = PageFactory.initElements(driver, EmployeesPage.class);
	}
	
	@Test()
	public void searchEmployees() throws InterruptedException, MalformedURLException {
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/imageViewLogo"))).isDisplayed();
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/emailTextField")));
		login.submitLoginDetails(CoAdConfig.loginEmail, CoAdConfig.loginValidPassword, driver);
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("com.coadvantage.coad:id/loadingTitle")));
		rolePage.tapOnMenuIcon();

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("com.coadvantage.coad:id/txtEmployee")));
		rolePage.tapOnMenuOptions("txtEmployee",driver);

		Assert.assertTrue(employeePage.areEmployeeOptionsDispld(), "true");
		Assert.assertTrue(employeePage.isEmployeeOptionSelected("Active", driver), "true");
		String active = employeePage.getEmployeeName();
		employeePage.submitEmployeeName(active);
		Thread.sleep(3000);
		Assert.assertEquals(employeePage.getEmployeeName(), active);
		
		/* Validate In Active tab */
		Assert.assertTrue(employeePage.isEmployeeOptionSelected("In Active", driver), "true");
		employeePage.searchEmployeeField.clear();
		String inActive = employeePage.getEmployeeName();
		employeePage.submitEmployeeName(inActive);
		Assert.assertEquals(employeePage.getEmployeeName(), inActive);
		
		/* Validate All Selection Tab */
		Assert.assertTrue(employeePage.isEmployeeOptionSelected("All", driver), "true");
		employeePage.searchEmployeeField.clear();
		String all = employeePage.getEmployeeName();
		employeePage.submitEmployeeName(all);
		Assert.assertEquals(employeePage.getEmployeeName(), all);	
	}

}
