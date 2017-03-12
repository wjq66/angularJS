package red.star;

import java.io.File;

public class Play {
	int imageNumber = 0,max;
	String pictureName[],playImage;
	String webDir = "";
	String tomcatDir;
	public Play(){
		File f = new File("");
		String path = f.getAbsolutePath();
		int index = path.indexOf("bin");
		tomcatDir = path.substring(0,index);
	}
	
	public void setWebDir(String s){
		webDir = s;
		if(pictureName == null){
			File dirImageFile = new File(tomcatDir + "/webapps/"+webDir+"/image");
			pictureName = dirImageFile.list();
		}
		if(pictureName!=null)
			max = pictureName.length;
	}
	public void setImageNumber(int n){
		if(n<0)
			n = max -1;
		if(n == max)
			n = 0;
		imageNumber = n;
	}
	public int getImageNumber(){
		return imageNumber;
	}
	public String getPlayImage(){
		if(pictureName!=null)
			playImage = pictureName[imageNumber];
		return playImage;
	}
}
