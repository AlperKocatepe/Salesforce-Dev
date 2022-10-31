/*Calculator02 c2 = new Calculator02();
integer s = c2.add(3, 5, 8);
System.debug('Sum of 3, 5 and null is equals to ' + s);*/

Calculator02 c2 = new Calculator02();
date today = date.today();
boolean isLeap = c2.leapYearCheck(today);
System.debug('This year is leap? ' + isLeap);

date dtt = date.newInstance(2022,6,15);
boolean isLeap02 = c2.leapYearCheck(dtt);
System.debug('Is this year leap? --> ' + isLeap02);