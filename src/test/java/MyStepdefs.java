import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class MyStepdefs {

    WebDriver driver;

    @Given("^Admin logged into admin panel$")
    public void adminLoggedIntoAdminPanel() {

        System.out.println("adminLoggedIntoAdminPanel");
    }

    @Given("^Admin is in Dashboard$")
    public void adminIsInDashboardPage() {
        System.out.println("adminLoggedIntoAdminPanel");
    }


    @When("^customer search with a keyword \"([^\"]*)\"$")
    public void customerSearchWithAKeyword(String arg0) throws Throwable {

        driver.findElement(By.id("small-searchterms")).sendKeys(arg0);
        driver.findElement(By.xpath("//*[@id=\"small-search-box-form\"]/input[2]")).click();


    }


    @Then("^customer should see at least product with title \"([^\"]*)\"$")
    public void customerShouldSeeAtLeastProductWithTitle(String arg0) throws Throwable {

        System.out.println("Test result:"+driver.getPageSource().contains(arg0));
    }

    @Given("^customer is in home page$")
    public void customerIsInHomePage() {
        System.setProperty("webdriver.chrome.driver","chromedriver.exe");
        driver = new ChromeDriver();
        driver.get("http://demo.nopcommerce.com/");
//        driver.get("http://localhost:8080/");


    }

    @And("^close browser$")
    public void closeBrowser() {
        driver.quit();
    }
}
