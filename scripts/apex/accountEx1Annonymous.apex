try{
    Account ac = new Account();
    insert ac;
} catch (DmlException dx) {
    system.debug('dml went wrong');
} catch 