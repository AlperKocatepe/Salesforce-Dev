@isTest
public class SalesforceProjectTriggerHandlerTest {
    @isTest
    public static void testFuture2(){
        //Hazırlık
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Future Test 01';
        sp.Status__c = 'New';
        insert sp;

        List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
        for(integer i = 0; i < 200; i++){
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Future Test 01 Ticket - ' + i;
            st.Status__c = 'Testing';
            st.Salesforce_Project__c = sp.id;
            listST.add(st);
        }
        if(!listST.isEmpty()){
            insert listST;
        }

        //Test
        Test.startTest();
        sp.Status__c = 'Completed';
        update sp;
        Test.stopTest();

        //Assertion
        for (Salesforce_Ticket__c stTest : [SELECT id, Status__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c = :sp.id]){
            System.AssertEquals('Completed', stTest.Status__c);
        }
    }
}
