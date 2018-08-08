package pageviews;

import java.net.MalformedURLException;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import setup.CoAdMobileAndroidDriver;


public class RolePage {
		
	@FindBy(id ="com.coadvantage.coad:id/ivSwitchCurrentRole")
	private WebElement dropDown;
	
	@FindBy(id ="com.coadvantage.coad:id/ll_role_self")
	private WebElement selfRole;
	
	@FindBy(id ="com.coadvantage.coad:id/lblEmployee")
	private WebElement mngsummary;
	
	@FindBy(id="com.coadvantage.coad:id/lblStartDate") 
	private WebElement empsummary;
		
    @FindBy(id="com.coadvantage.coad:id/rr_userTimeline")
	private WebElement timelineView;
	
	
	@FindBy(id = "com.coadvantage.coad:id/txtTimeline")
	private WebElement timelinepage;
	
	
	public void selectdropdown() {
		dropDown.click();  
	}
	
	public void EmployeeisSelected() {
	   selfRole.click();
	}
	
	public String getManagerSummary()  {
		return mngsummary.getText();
	}
	
	public void TimelineisSelected() {
		timelineView.click();
	}
	
	public String getTimelinePage() {
		return timelinepage.getText();
	}
	
	
	public String getEmployeeSummary() {
		return empsummary.getText();
	}
	
public void verticalscroll(AndroidDriver<MobileElement> driver)  {
	
	  
	    Dimension dim=driver.manage().window().getSize();
	    int height = dim.getHeight();
	    int width = dim.getWidth();
	    int x = width/2;
		int starty=(int)(height * 0.20);
		int endy=(int)(height * 0.70);
		int duration=500;
		driver.swipe(x, starty, x, endy, duration);
		
		}
	}
	


