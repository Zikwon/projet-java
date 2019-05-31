package contract;

import java.io.IOException;

/**
 * The Interface IView.
 *
 * @author Maxence Pigné
 */
public interface IView {

	/**
	 * Prints the message.
	 *
	 * @param message
	 *          the message
	 */
	void printMessage(final String message);
	void update();
	public void displayPlayer();
	public void rockFall() throws IOException;
}
