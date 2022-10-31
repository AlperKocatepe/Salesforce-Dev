public class PrimativeDataTypeDemo2 {
    public void printNewDate(){
        System.debug('Create new date instance');

        date newDate = date.newInstance(1986, 6, 15);
        date newDate2 = date.newInstance(1988, 1, 8);
        date today = date.today();
        System.debug('I was born in ' + newDate);
        System.debug('Zenynep was born in' + newDate2);
        System.debug('Today\'s date is ' + today);
    }

    public void printNewTime(){
        time newTime = time.newInstance(18, 25, 15, 52);
        System.debug(newTime);
    }

    public void printNewDateTime(){
        date todayDate = date.today();
        time myTime = time.newInstance(18, 25, 15, 52);
        datetime dt1 = datetime.newInstance(todayDate, myTime);
        System.debug('dt1 is --> ' + dt1);

        datetime dt2 = datetime.newInstance(2022,1,15);
        System.debug('dt2 is --> ' + dt2);

        datetime dt3 = datetime.newInstance(2021,10,9,8,56,22);
        System.debug('dt3 is --> ' + dt3);

        long longTime = 1465975845312L;
        datetime dt4 = datetime.newInstance(longTime);

        long longTimeZero = 0;
        datetime dt4_1 = datetime.newInstance(longTimeZero);
        
        System.debug('dt4 --> ' + dt4 + ' and dt4_1 --> ' + dt4_1 + '.');

        datetime dt5 = datetime.newInstanceGMT(2021,10,9,8,56,22);
        System.debug('dt5 --> ' + dt5);

        datetime dt6 = datetime.now();
        System.debug('dt6 --> ' + dt6);
        datetime dt7 = System.now();
        System.debug('dt7 --> ' + dt7);
    }
}
