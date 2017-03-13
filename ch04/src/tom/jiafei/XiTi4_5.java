package tom.jiafei;

public class XiTi4_5 {
	double top,buttom,height,result;

	public double getTop() {
		return top;
	}

	public void setTop(double top) {
		this.top = top;
	}

	public double getButtom() {
		return buttom;
	}

	public void setButtom(double buttom) {
		this.buttom = buttom;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}
	
	public double getResult() {
		result = ((top + buttom)*height/2);
		return result;
	}

	
	
}
