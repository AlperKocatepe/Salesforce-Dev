public class LoopDemo {
    public void print_int_while(){
        integer count = 0;
        while (count <= 24) {
            count++;
            System.debug(count);
        }
    }

    public void print_N_numbers(integer n){
        for (integer i=0; i<n; i++){
            System.debug(i);
        }
    }

    public void print_N_Odd_numbers(integer startInt, integer endInt){
        if (startInt > endInt) {
            System.debug('Start number cannot be greater than end number.');
        } else {
            for(integer i = startInt; i <= endInt; i++){
                integer modInt = math.mod(i, 2);
                if(modInt == 1){
                    System.debug(i);
                }
            }
        }
    }
}
