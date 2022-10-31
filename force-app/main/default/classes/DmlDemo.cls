public class DmlDemo {
    public static void dmlInsertDemo_StndObj1() {
        account acc = new account();
        acc.Name = 'Softtinnovas';
        acc.phone = '12345678995';
        insert acc;
        System.debug(acc);
    }
    public static void dmlInsertDemo_cstmObj1() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Learn DML from Vitap the King';
        sp.Description__c = 'He is 100% King';
        insert sp;
    }
    public static void dmlUpdateDemo_1() {
        Account acc = new Account();
        acc.name = 'Anything';
        System.debug('Before insert acc ---> ' + acc);
        insert acc;
        System.debug('After insert acc ---> ' + acc);
        acc.name = 'Updated';
        System.debug('After update acc ---> ' + acc);
    }
    public static void dmlUpdateDemo_2() {
        account acc = [select id, name from account where name = 'Softinnovas' limit 1];
        acc.name = 'Softinnovas Inc.';
        update acc;
    }
}
