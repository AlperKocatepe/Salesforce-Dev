trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    System.debug('----------TRIGGER START------------');
        if (trigger.isBefore) {
            AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    System.debug('-----------TRIGGER END-------------');
    
    
    
    
    
    
    /*
    Map<id, account> newMapAcc = trigger.newMap;
    Map<id, account> oldMapAcc = trigger.oldMap;
    if (trigger.isBefore && trigger.isInsert) {
        System.debug('Before insert trigger.oldMap --> ' + oldMapAcc);
        System.debug('Before insert trigger.newMap --> ' + newMapAcc);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before update trigger.oldMap --> ' + oldMapAcc);
        System.debug('Before update trigger.newMap --> ' + newMapAcc);
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After insert trigger.oldMap --> ' + oldMapAcc);
        System.debug('After insert trigger.newMap --> ' + newMapAcc);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After update trigger.oldMap --> ' + oldMapAcc);
        System.debug('After update trigger.newMap --> ' + newMapAcc);
    }



    if (trigger.isAfter && trigger.isUpdate) {
        // List<account> oldAccounts = trigger.old;
        // for (account eachAccOld : oldAccounts) {
        //     System.debug('Old ID = ' + eachAccOld.id + ' - Old Name = ' + eachAccOld.Name);
        // }
        List<account> newAccounts = trigger.new;
        Set<Id> newAccIds = new Set<Id>();
        for (account eachAccNew : trigger.new) {
            System.debug('New ID = ' + eachAccNew.id + ' - New Name ' + eachAccNew.Name);
            newAccIds.add(eachAccNew.id);
        }
        System.debug('Set of Acc IDs ---> ' + newAccIds);
    }

    System.debug('----------TRIGGER START-------------');
    if (trigger.isBefore && trigger.isInsert) {
        System.debug('trigger.old before insert -> ' + trigger.old);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('trigger.old before update -> ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('trigger.old after insert -> ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('trigger.old after update -> ' + trigger.old);
    }   
    System.debug('-----------TRIGGER END--------------');

    List<account> newAccount = trigger.new;
    System.debug('Number of records = ' + trigger.new.size());
    
    if (trigger.isbefore && trigger.isInsert) {
        System.debug('Before Trggier trigger.new -----> ' + trigger.new);
        for (account acc : newAccount) {
            System.debug('acc id = ' + acc.id + ' - acc name = ' + acc.name);
        }
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After Trggier trigger.new -----> ' + trigger.new);
        for (account acc : newAccount) {
            System.debug('acc id = ' + acc.id + ' - acc name = ' + acc.name);
        }
    }

    System.debug('Trigger Start');
    List<account> newAccounts = trigger.new;
    if (trigger.isAfter) {
        System.debug('After Trggier trigger.new -----> ' + trigger.new);
        System.debug('Number of records = ' + trigger.new.size());
    }
    System.debug('Trigger End');
    
    if (trigger.isAfter) {
        System.debug('After trigger trigger.new -----> ' + trigger.new);
    }


    if (trigger.isBefore) {
        System.debug('- We are in BEFORE TRIGGER -');
        if (trigger.isInsert) {
            System.debug('Before insert account trigger called.');
        }
        if (trigger.isUpdate) {
            System.debug('Before update trigger called.');
        }
    }
    if (trigger.isAfter) {
        System.debug('- We are in AFTER TRIGGER -');
        if (trigger.isInsert) {
            System.debug('After insert account trigger called.');
        }
        if (trigger.isUpdate) {
            System.debug('After update trigger called.');
        }
    }


    if (trigger.isBefore && trigger.isInsert) {
        System.debug('Before insert account trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before update trigger called.');
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After insert account trigger called.');
    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After update trigger called.');
    }
    --------------------------------------------------------------
    if (trigger.isBefore) {
        System.debug('before insert trigger.');
    }
    if (trigger.isAfter) {
        System.debug('after insert trigger.');
    }
    */
}