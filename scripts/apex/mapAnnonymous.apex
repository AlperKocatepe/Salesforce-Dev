map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
mapCountryCurrency.put('Canada', 'Dollar');
system.debug(mapCountryCurrency);

string Ind = 'India';
String IndiaCurrency = mapCountryCurrency.get(Ind);
String TurkiyeCurrency = mapCountryCurrency.get('Turkiye');

system.debug('India currency => ' + IndiaCurrency);
system.debug('Turkiye curency => ' + TurkiyeCurrency);

Set<String> allCountries = mapCountryCurrency.keySet();
System.debug('All countries are --> ' + allCountries);

List<String> allCunrancies = mapCountryCurrency.values();
System.debug('All currancies are --> ' + allCunrancies);

for (String eachkey : allCountries){
    string eachCurrancy = mapCountryCurrency.get(eachKey);
    System.debug('Each Key => ' + eachkey);
    System.debug('Each Currnacy => ' + eachCurrancy);
    System.debug('---------------------------------');
}