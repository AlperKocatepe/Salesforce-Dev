public class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAcc = [select id, name from Account where name like '%A%'];
        System.debug('Account list = ' + listAcc);
        System.debug('listAcc # of records = ' + listAcc.size());

        Account acc = [select id, name, phone from Account ORDER BY CreatedDate desc limit 1];
        System.debug('Latest created record ===> ' + acc);
    }

    public static void accountSOQL_2(){
        Account acc = [select id, name, phone, AccountNumber from Account ORDER BY CreatedDate desc limit 1];
        System.debug('Latest created record ===> ' + acc);

        string accName = acc.Name;
        String accPhone = acc.phone;
        System.debug('acc name is ' + accName + ' Phone is ' + accPhone + ' acc number = ' + acc.AccountNumber);
    }
    
    public static void accountSOQL_3(){
        List<Account> listAcc = [select id, name, Phone, active__c, AccountNumber from Account ORDER BY CreatedDate DESC];

        for (Account eachAccount : listAcc) {
            String accName = eachAccount.Name;
            String accPhone = eachAccount.phone;
            System.debug('Acc name is ' + accName + ' phone is ' + accPhone + ' acc number =' + eachAccount.AccountNumber);
        }
    }

    public static void accountSOQL_Filter(){
        string filterName = 'Salesforce.Inc';
        List<Account> listAcc = [select id, name, active__c from account WHERE name = :filterName];
        System.debug('Filter Name = ' + listAcc);
    }
}
