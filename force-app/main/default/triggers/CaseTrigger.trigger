trigger CaseTrigger on Case (before insert, before update) {
    if (trigger.isInsert) {
        System.debug('before insert case');
    }
    if (trigger.isUpdate) {
        CaseTrggerHandler.countTriggerExecution++;
        System.debug('Case trigger execution count ==> ' + CaseTrggerHandler.countTriggerExecution);
        CaseTrggerHandler.countTriggerRecords+=Trigger.size;
        System.debug('Case trigger execution count ==> ' + CaseTrggerHandler.countTriggerRecords);
    }
}