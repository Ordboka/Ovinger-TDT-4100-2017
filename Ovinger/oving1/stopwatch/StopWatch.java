package oving1.stopwatch;

public class StopWatch {
	int numTicks = 0;
	boolean running = false;
	int runTime = -1;
	int currentLapTime = -1;
	int lastLapTime = -1;
	
	public String toString() {
		return "Total ticks " + numTicks + " active time " + runTime + " lap time " + currentLapTime;
	}
	
	boolean isStarted(){
		return running;
	}
	
	boolean isStopped(){
		return (running == false && runTime != -1);
	}
	
	int getTicks(){
		return numTicks;
	}
	
	int getTime(){
		return runTime;
	}
	
	int getLapTime(){
		return currentLapTime;
	}
	
	int getLastLapTime(){
		return lastLapTime;
	}
	
	void tick(int ticks){
		numTicks += ticks;
		if(running == true){
			runTime += ticks;
			currentLapTime += ticks;
		}
	}
	void start(){
		running = true;
		runTime = 0;
		currentLapTime = 0;
	}
	void lap(){
		lastLapTime = currentLapTime;
		currentLapTime = 0;
	}
	void stop(){
		running = false;
		lastLapTime = currentLapTime;
	}
	
	public static void main(String[] args) {
		StopWatch watch = new StopWatch();
		watch.tick(20);
		watch.start();
		watch.tick(5);
		watch.lap();
		watch.tick(100);
		watch.lap();
		System.out.println(watch.lastLapTime);
		watch.tick(10);
		System.out.println(watch.toString());
	}
}
