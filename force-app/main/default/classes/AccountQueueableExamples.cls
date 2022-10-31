public with sharing class AccountQueueableExamples implements Queueable{
    List<account> listAcc;
    public AccountQueueableExamples(List<Account> accList) {
        listAcc = accList;
    }

    public void execute(QueueableContext qc){
        for (account acc : listAcc) {
            acc.Name = acc.Name + ' -- SI';
        }
        update listAcc;
    }
}