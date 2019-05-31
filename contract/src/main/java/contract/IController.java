package contract;

/**
 * The Interface IController.
 *
 * @author Tristan Pasquet
 */
public interface IController {

	/**
	 * Control.
	 */
	public void control();

	/**
	 * Order perform.
	 *
	 * @param controllerOrder
	 *          thecontroller order
	 */
	public void orderPerform(ControllerOrder controllerOrder);
}
