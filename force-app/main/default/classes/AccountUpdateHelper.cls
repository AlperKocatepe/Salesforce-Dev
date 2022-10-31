public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
        List<Account> updateAccounts = new List<Account>();
        for (Account eachAccount : [select id, website from account where id in :accIds]) {
            eachAccount.website = 'www.alperkocatepe.com';
            updateAccounts.add(eachAccount);
        }
        update updateAccounts;
    }
}
