@isTest
public class CalculatorTest {
    @isTest
    public static void testCalculator(){
        Calculator calc = new Calculator();
        calc.printNewMeassage('This is coming from test class.');
    }
    @isTest
    public static void testCalculatorPrint2(){
        Calculator calc2 = new Calculator();
        string returnmsg = calc2.printAndReturnMessage('This is coming from a test method, again');
        string expectedReturnMsg = 'This is coming from a test method, again...OK Cool';
        system.assertEquals(expectedReturnMsg, returnmsg);
    }
}