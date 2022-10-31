public class ListDemo2 {
    public static void iterateListInteger() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(12);
        listInteger.add(41);
        listInteger.add(53);
        listInteger.add(234);
        listInteger.add(90);

        for (integer eachInteger : listInteger){
            System.debug(eachInteger);
        }
    }
}
