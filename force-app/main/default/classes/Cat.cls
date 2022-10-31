public class Cat {
    public string name;
    public string color;
    
    public Cat() {
        System.debug('Cat constructor called.');
    }
    
    public Cat(string n, string clr){
        name = n;
        color = clr;
        System.debug('The cats name is ' + name + ' and the color is ' + color);
        sleeping();
    }

    public void sleeping(){
        System.debug(name + ' is sleeping.');
    }
}
