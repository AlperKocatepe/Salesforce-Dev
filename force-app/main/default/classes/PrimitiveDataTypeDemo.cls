public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        System.debug('Printing primitive datatypes');
        
        string batchName = 'Batch 9';
        integer totalCandidates = 70;
        boolean isAdminCompleted = true;
        System.debug(batchName);
        System.debug(totalCandidates);
        System.debug(isAdminCompleted);

        string batchDescription = batchName + ' is fantastic';
        System.debug(batchDescription);

        decimal decValue = 70.55;
        System.debug(decValue);

        long longValue = 21654684L;
        System.debug(longValue);

        object obj = 'This is string';
        object obj2 = 50.5;
        object obj3 = true;
        System.debug(obj);
        System.debug(obj2);
        System.debug(obj3);

        id id1 = '0012g00000s9qW2AAI';
        System.debug(id1);
    }
}
