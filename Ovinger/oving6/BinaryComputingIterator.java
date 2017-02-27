package oving6;

import java.util.Iterator;
import java.util.function.BinaryOperator;

public class BinaryComputingIterator implements Iterator{
	
	Iterator<Double> iterator1, iterator2;
	BinaryOperator<Double> operator;
	Double default1, default2;
	
	public BinaryComputingIterator(Iterator<Double> iterator1, Iterator<Double> iterator2, BinaryOperator<Double> operator){
		this.iterator1 = iterator1;
		this.iterator2 = iterator2;
		this.operator = operator;
	}
	
	public BinaryComputingIterator(Iterator<Double> iterator1, Iterator<Double> iterator2, Double default1, Double default2, BinaryOperator<Double> operator){
		this.iterator1 = iterator1;
		this.iterator2 = iterator2;
		this.operator = operator;
		this.default1=default1;
		this.default2=default2;
	}
	
	
	@Override
	public boolean hasNext() {
		if(iterator1.hasNext()&&iterator2.hasNext()){
			return true;
		}else if((iterator1.hasNext()&&default2!=null)||(iterator2.hasNext()&&default1!=null)){
			return true;
		}
		return false;
	}

	@Override
	public Double next() {
		if(!iterator1.hasNext()){
			return operator.apply(default1, iterator2.next());
		}else if(!iterator2.hasNext()){
			return operator.apply(iterator1.next(), default2);
		}
		return operator.apply(iterator1.next(), iterator2.next());
	}

}
