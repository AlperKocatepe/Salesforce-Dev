public class Car {
    public string carColor = '';
    public string carName = '';
    private integer maxSpeedKmPerHr = 150;

    public void switchOn(){
        System.debug('Starting the car.');
    }

    public void drive(){
        System.debug('Driving ' + carName);
    }

    public void driveAtMaxSpeed(){
        string description = 'Driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/h.';
        System.debug(description);
    }
}