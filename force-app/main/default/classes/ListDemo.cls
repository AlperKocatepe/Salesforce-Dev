public class ListDemo {
    public static void candidatesList() {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('David');
        listCandidates.add('Michelle');
        listCandidates.add('Marc');
        System.debug(listCandidates);
    }

    public static void randomIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(12);
        listInteger.add(41);
        listInteger.add(53);
        listInteger.add(234);
        listInteger.add(90);
    
        System.debug('Random integer list is -->' + listInteger);

        integer index3value = listInteger.get(3);
        System.debug('index 3 value =>' + index3value);

        integer index2value = listInteger.get(2);
        System.debug('index 2 value =>' + index2value);
    }
}


