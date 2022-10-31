public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<Contact> contactTriggerNew,
    List<Contact> contactTriggerOld,
    Map<id, Contact> contactTriggerNewMap,
    Map<Id,Contact> contactTriggerOldMap){
        for (contact eachContact : contactTriggerNew) {
            if (contactTriggerOldMap.get(eachContact.Id).LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update \'Partner Referral\' contact.');
            }
        }
    }

    public static void contactUpdateValidation2(List<Contact> contactTriggerNew,
    List<Contact> contactTriggerOld,
    Map<id, Contact> contactTriggerNewMap,
    Map<Id,Contact> contactTriggerOldMap){
        for (Contact eachContact : contactTriggerNew) {
            if (eachContact.LeadSource != contactTriggerOldMap.get(eachContact.Id).LeadSource) {
                eachContact.LeadSource.addError('CANNOT UPDATE LEADSOURCE!!! PLEASE USER');
            }
        }
    }
}
