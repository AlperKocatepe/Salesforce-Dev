@isTest
public class AccountsBatchTest {
    @isTest
    public static void testBatch1(){
        //Hazırlık
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 500; i++) {
            account a = new account();
            a.Name = 'Test Account Batch - ' + i;
            listAcc.add(a);
        }
        insert listAcc;

        //Test
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Id batchId = Database.executeBatch(ab, 500); //Test yaparken bu sayı for'daki sayıya eşit veya büyük olmalı.
        Test.stopTest();

        //Assertion
        System.assert([SELECT id, Description FROM Account][0].Description.contains('Batch'));
    }
}
