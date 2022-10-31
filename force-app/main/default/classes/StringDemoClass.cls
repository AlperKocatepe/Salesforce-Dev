public class StringDemoClass {
    public void  stringMethod1(){
        string sessionDescription = 'Learning string method in apex language';
        System.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        System.debug('Length of string is ' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        System.debug('Session description in caps = ' + sessionDescriptionInCaps);

        boolean containsApex = sessionDescription.contains('apex');
        System.debug('Has apex? ' + containsApex);

        boolean containApexICaps = sessionDescriptionInCaps.contains('apex');
        System.debug('Has apex uppercase? ' + containApexICaps);

        boolean containApexAnyWay = sessionDescriptionInCaps.containsIgnoreCase('apex');
        System.debug('Has apex anyway? ' + containApexAnyWay);

        string string1 = 'salesforce';
        boolean containsSalesforce = sessionDescription.containsIgnoreCase(string1);
        System.debug('Has salesforce? ' + containsSalesforce);
    }
}
