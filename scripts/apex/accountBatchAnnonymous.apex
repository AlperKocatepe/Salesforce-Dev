/*AccountsBatch ab = new AccountsBatch();
Id batchId = Database.executeBatch(ab); //200'lü gruplar halinde işleme alır.
*/

AccountsBatch ab = new AccountsBatch();
Id batchId = Database.executeBatch(ab, 20); //20'şerli gruplarda işleme alır.

//Max. 2000'li gruplarla işlem yapılabilir.