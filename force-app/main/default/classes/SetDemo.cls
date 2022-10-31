public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Ankara');
        cities.add('Roma');
        cities.add('Berlin');
        cities.add('Paris');
        cities.add('Lisbon');
        cities.add('Dublin');
        cities.add('Ankara');
        cities.add('Berlin');

        System.debug('Set of cities = ' + cities);
    }

    public static void randomIntegerSet() {
        set<integer> integerSet = new set<integer>();
        integerSet.add(15);
        integerSet.add(54);
        integerSet.add(23);
        integerSet.add(115);
        integerSet.add(45);
        integerSet.add(78);
        integerSet.add(15);
        integerSet.add(15);

        System.debug('Set of integers = ' + integerSet);
    }

    public static set<integer>  setFromList(List<integer> intList) {
        
        list<integer> listInteger = new list<integer>();
        listInteger.add(12);
        listInteger.add(41);
        listInteger.add(53);
        listInteger.add(234);
        listInteger.add(90);
        listInteger.add(53);
        listInteger.add(53);
        
        set<integer> setOfInt = new set<integer>();
        setOfInt.addAll(listInteger);
        return setOfInt;
    }
}
