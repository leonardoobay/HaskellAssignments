
public class LoudmouthDuck extends Duck {
	public LoudmouthDuck() {
		quackBehavior = new ShoutingQuack();
		flyBehavior = new FlyWithWings();
	}
	
	public void performFly() {
		flyBehavior.fly();
	}
	
	public void performQuack() {
		quackBehavior.quack();
	}
	
	@Override
	public void display() {
		System.out.println("I'm a LoudMouth duck");
	}

}
