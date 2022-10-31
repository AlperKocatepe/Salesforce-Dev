public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        
        date birthDate = date.newInstance(1986,6,15);
        date todayDate = date.today();
        integer ageInMounths = birthDate.monthsBetween(todayDate);
        System.debug('I am ' + ageInMounths + ' months old.');

        integer ageInDays = birthDate.daysBetween(todayDate);
        System.debug('I am ' + ageInDays + ' days old.');
    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('Your subscription will end in ' + subscriptionEndDate);

        integer yearEndDate = subscriptionEndDate.year();
        integer monthEndDate = subscriptionEndDate.month();
        System.debug('Year and month of End Date is ' + yearEndDate + ' ' + monthEndDate);
    }

    public void printOfferEndDateTime(){
        datetime dtNow = datetime.now();
        datetime offerEndTime = dtNow.addHours(51);
        date offerEndDate = offerEndTime.date();

        System.debug('Offer will be closed in ' + offerEndTime + ', ' + offerEndDate);
    }
}
