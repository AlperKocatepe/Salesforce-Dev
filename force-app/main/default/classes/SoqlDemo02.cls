public with sharing class SoqlDemo02 {
    public static void childToParent_Soql01() {
        List<contact> listCnt = [select id, name, account.name, Account.Industry from Contact
                                WHERE Account.Industry = 'Energy'];

        for (contact eachContact : listCnt) {
            string accName = eachContact.account.name;
            string accIndustry = eachContact.Account.Industry;
            System.debug('Contact name is ' + eachContact.name + ', its account name is ' + accName + 'and the industry is ' + accIndustry);
        }
    }

    public static void parentToChild_Soql01(){
        List<account> accountWithOpps = [select id, name, annualrevenue, type,
                                        (select name, amount, stageName from opportunities where stageName = 'Closed Won') from Account where type = 'Customer - Direct'];
         for (Account eachAcc : accountWithOpps) {
            System.debug('Account name is ' + eachAcc.name + ' and the annual revenue is ' + eachAcc.annualrevenue);
            System.debug('--------------------------');
            List<opportunity> accOpportunities = eachAcc.Opportunities;
            for (opportunity eachOpp : accOpportunities) {
                System.debug('Opp name is ' + eachOpp.name + ' and amount is ' + eachOpp.amount);
            }
            System.debug('<==================================>');
         }                               
    }

    public static void parentToChild_SOQL2() {
        //soql query on Project and also fetch all tickets.
        List<salesforce_project__c> listSP = [select name, project_name__c, status__c, 
                                ( select name, subject__c, Priority__c from salesforce_tickets__r ) 
                                    from salesforce_project__c];
        Integer totalHP = 0;
        for (salesforce_project__c eachSP : listSP) {
            system.debug('project name IS ' + eachSP.Project_Name__c + ' and autonumber is ' + eachSP.Name);
            List<Salesforce_Ticket__c> listST = eachSP.Salesforce_Tickets__r;
            system.debug('total tickets in ' + eachSP.Name + ' are ' + listST.size());
            integer eachProjectHP = 0;

            for (salesforce_Ticket__c eachST : listST) {
                if (eachST.Priority__c == 'High') {
                    eachProjectHP++;
                    totalHP++;
                }
            }
            System.debug('Projects number of high priority tickets are ' + eachProjectHP);
        }
        System.debug('Total number of High Priority Tickets ==> ' + totalHP);
    }
}
