package pageviews;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class EmployeesPage {
	
	@FindBy(className = "android.widget.RadioGroup")
	private WebElement employeeTabOptions;
	
	@FindBy(id = "android:id/search_src_text")
	public WebElement searchEmployeeField;
	
	@FindBy(id = "com.coadvantage.coad:id/tvEmployeeName")
	private WebElement employeeName;
	
	public boolean areEmployeeOptionsDispld() {
		return employeeTabOptions.isDisplayed();
	}
	
	public boolean isEmployeeOptionSelected(String employeeOption, WebDriver driver) {
		
		WebElement option = driver.findElement(By.xpath("//android.widget.TextView[@text='"+employeeOption+"']"));	
		option.click();
		return option.isEnabled();
	}
	
	public void tapOnSearchEmployeeField() {
		searchEmployeeField.click();
	}
	
	public String getEmployeeName() {
		if (employeeName.getText().contains(" ")){
			return employeeName.getText().split(" ")[0];
		}
		return employeeName.getText();		
	}
	
	public void submitEmployeeName(String employee) {
		searchEmployeeField.click();
		searchEmployeeField.clear();
		searchEmployeeField.sendKeys(employee);
	}

}
