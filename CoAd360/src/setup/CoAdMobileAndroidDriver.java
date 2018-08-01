package setup;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;

public class CoAdMobileAndroidDriver {
	
	//public ArrayList<RemoteWebDriver> drivers1 = new ArrayList<RemoteWebDriver>();

	//RemoteWebDriver drivers = new RemoteWebDriver();
	//WebDriver driver = new AndroidDriver<MobileElement> gets() ;
	

	@BeforeTest
     public static AndroidDriver<MobileElement> getAndroidDriver() throws MalformedURLException {
		
		DesiredCapabilities capabilities = new DesiredCapabilities();
	
		/* Device and Configuration details are defined */
		
		capabilities.setCapability(MobileCapabilityType.APPIUM_VERSION, "1.7.1");
		capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, "Android");
		capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, "MotoG4 Plus");
		capabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, "Android");
		capabilities.setCapability(MobileCapabilityType.VERSION,"7.0");
		capabilities.setCapability(MobileCapabilityType.UDID, "ZY2239HSWT");
	
		
		/* Application Configuration details are defined*/
		
		capabilities.setCapability("appPackage", "com.coadvantage.coad"); 	
		capabilities.setCapability("appActivity", "com.coadvantage.coad.SplashActivity");
		capabilities.setCapability("noReset", "true");
     
		AndroidDriver<MobileElement> driver = new AndroidDriver<MobileElement>(new URL("http://0.0.0.0:4723/wd/hub"), capabilities);
		return driver;
	}

//	@AfterTest
//    public void closeSelenium() {
//        for (RemoteWebDriver drivern:driver) {
//            driver.close();
//            driver.quit();
//            System.out.println("dshhcdsihsh");
//        }
//	}

}
