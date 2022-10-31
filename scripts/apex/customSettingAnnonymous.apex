Map<string, Country_Code__c> cc = Country_Code__c.getAll();
System.debug('country code map --> ' + cc);

for (string eachCountry : cc.keySet()){
    Country_Code__c eachCC = cc.get(eachCountry);
    string isoCode = eachCC.ISO_Code__c;
    System.debug(eachCountry + ' ISO Code is ---> ' + isoCode);
}

Country_Code__c ca = Country_Code__c.getInstance('Canada');
System.debug('Canada ISO Code is ' + ca.ISO_Code__c);