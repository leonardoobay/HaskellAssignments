package headfirst.factory.pizzaaf;

public class NorthwestIngredientFactory implements PizzaIngredientFactory{
	public Dough createDough() {
		return new ThinCrustDough();
	}

	public Sauce createSauce() {
		return new HawaiianStyleAlfredo();
	}

	public Cheese createCheese() {
		return new Gouda();
	}

	public Veggies[] createVeggies() {
		Veggies veggies[] = { new BlackOlives(), 
		                      new Spinach(), 
		                      new Eggplant() };
		return veggies;
	}

	public Pepperoni createPepperoni() {
		return new SlicedPepperoni();
	}

	public Clams createClam() {
		return new MahiMahi();
	}

}
