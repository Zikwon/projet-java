package entity;

import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;


@SuppressWarnings("serial")
public class Heros extends Canvas{
	
public static BufferedImage up, down, right, left;

    public static int X = 16;
    public static int Y = 16;
    public static int joueur = 1;
    
    public static void player() {
    	try {
    		up = ImageIO.read(new File("../entity/Images/up.png"));
    		down = ImageIO.read(new File("../entity/Images/down.png"));
    		right = ImageIO.read(new File("../entity/Images/right.png"));
    		left = ImageIO.read(new File("../entity/Images/left.png"));
    	}catch(IOException ex){
    	ex.printStackTrace();	
    	}
    }
    
   
	   public static Image image() {
	    	player();
      if (Heros.joueur == 1) {
		BufferedImage img = down;
		return img;
    }
    else if (Heros.joueur == 2) {
    	BufferedImage img = up;
    	return img;
    }
    else if (Heros.joueur == 3) {
    	BufferedImage img = left;
    	return img;
    }
    else if (Heros.joueur == 4) {
    	BufferedImage img = right;
    	return img;
    }
	return null;
      
    
    }
    
    
    
    
    
}
