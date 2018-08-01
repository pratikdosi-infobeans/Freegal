package pageviews;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginPage {
	
	@FindBy(className = "android.widget.RelativeLayout")
	private WebElement splashView;
	
	@FindBy(id = "com.coadvantage.coad:id/imageViewLogo")
	private WebElement coAdvantageLogo;
	
	@FindBy(id = "com.coadvantage.coad:id/emailTextField")
	private WebElement emailField;
	
	@FindBy(id = "com.coadvantage.coad:id/passwordTextField")
	private WebElement passwordField;
	
	@FindBy(id = "com.coadvantage.coad:id/btnLogin")
	private WebElement loginButton;
	
	@FindBy(id = "com.coadvantage.coad:id/txtError")
	private WebElement invalidCredentialsErrorMsg;
	
	@FindBy(id = "com.android.packageinstaller:id/permission_allow_button")
	private WebElement allowPermissionButton;
	
	@FindBy(id = "com.coadvantage.coad:id/txtUsername")
	private WebElement loggedInUser;
	
	@FindBy(id = "com.coadvantage.coad:id/imageViewRememberMe")
	private WebElement rememberMeCheckBox;
	
	public boolean isSplashViewDisplayed() {
		return splashView.isDisplayed();
	}
	
	public boolean isCoAdvantageLogoDisplayed(){
		return coAdvantageLogo.isDisplayed();
	}
	
	public String getInvalidCredentialsMessage() {
		return invalidCredentialsErrorMsg.getText();
	}
	
	public void submitLoginDetails(String email, String password, WebDriver driver) {
		emailField.clear();
		emailField.sendKeys(email);
		passwordField.clear();
		passwordField.sendKeys(password);
		driver.navigate().back();
		loginButton.click();
	}
	
	public void tapOnAllowPermissionBtn() {
		allowPermissionButton.click();
		allowPermissionButton.click();
	}
	
	public String getLoggedInUserName() {
		return loggedInUser.getText();
	}
	
	public void tapOnRememberMeCheckBox() {
		rememberMeCheckBox.click();
	}

	public String validateRememberMeCheck(String email, String password, WebDriver driver) {
		emailField.clear();
	    emailField.sendKeys(email);
	    String s = email;
		passwordField.clear();
		passwordField.sendKeys(password);
		driver.navigate().back();
		rememberMeCheckBox.click();
		loginButton.click();
		return s;
	}
	/* Commenting the code temporarily
	public void checkPermission() {
		if (allowPermissionButton.isDisplayed()) {
			tapOnAllowPermissionBtn();
		}
		else {
			loggedInUser.getText();
		}
	} 
	*/
}
