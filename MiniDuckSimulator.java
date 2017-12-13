
public class MiniDuckSimulator {
public static void main(String[] args) {
		
		Duck mallard = new MallardDuck();
		mallard.performFly();
		mallard.performQuack();
		mallard.display();
		
		Duck rubberDuck = new RubberDuck();
		rubberDuck.performFly();
		rubberDuck.performQuack();
		rubberDuck.display();
		
		Duck LDuck = new LoudmouthDuck();
		LDuck.performFly();
		LDuck.performQuack();
		LDuck.display();
		
		System.out.println("Rubber ducky eats a magic pellet.");
		rubberDuck.setFlyBehavior(new RocketFly());
		rubberDuck.performFly();
		
		System.out.println("Mallard duck eats a magic pellet.");
		mallard.setFlyBehavior(new RocketFly());
		System.out.println("Mallard says:");
		mallard.performFly();
		
		System.out.println("LoudMouthDuck Gets Enraged.");
		LDuck.performQuack();
		System.out.println("Here Comes the mallard Duck");
		mallard.setQuackBehavior(new ShoutingQuack());
		mallard.performQuack();
	}
}
