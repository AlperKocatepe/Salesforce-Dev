@isTest
public with sharing class AccountQueueableExamplesTest {
    @TestSetup
    static void makeData(){
        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            account a = new account(name = 'Test Account' + i);
            accs.add(a);
        }
        insert accs;
    }
    @isTest
    private static void testQueueable(){
        List<Account> allAccs = [SELECT id, Name from Account];
        AccountQueueableExamples aq = new AccountQueueableExamples(allAccs);
        Test.startTest();
        System.enqueueJob(aq);
        Test.stopTest();

        List<Account> resultAcc = [SELECT id, Name from Account WHERE name like '%SI%'];
        System.assertEquals(200, resultAcc.size());
    }
}
