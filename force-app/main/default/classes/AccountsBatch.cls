public class AccountsBatch implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('Batch started!!!');
        Database.QueryLocator ql = Database.getQueryLocator([SELECT id, description FROM Account]);
        return ql;
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('Execute method running!!!');
        for (Account eachAcc : scope) {
            eachAcc.Description += ' - Updated via BATCH.';
        }
        update scope;
    }

    public void finish(Database.BatchableContext bc){
        System.debug('Finish method executed and BATCH done!!!');
    }
}