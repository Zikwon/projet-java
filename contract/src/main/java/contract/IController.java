package contract;

/**
 * The Interface IController.
 *
 * @author Tristan Pasquet
 */
public interface IController {


	public void control();

/**
 * 
 * @param controllerOrder
 */
	public void orderPerform(ControllerOrder controllerOrder);
}
