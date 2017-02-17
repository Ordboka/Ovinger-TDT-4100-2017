package oving5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public class StopWatchManager {
	
	private HashMap<String, StopWatch> stopWatches = new HashMap<String, StopWatch>();
	
	public StopWatch newStopWatch(String name){
		StopWatch stopWatch = new StopWatch();
		stopWatches.put(name, stopWatch);
		return stopWatch;
	}
	public void removeStopWatch(String name){
		stopWatches.remove(name);
	}
	public void tick(int ticks){
		for(String name: stopWatches.keySet()){
			stopWatches.get(name).tick(ticks);
		}
	}
	public StopWatch getStopWatch(String name){
		return stopWatches.get(name);
	}
	public Collection<StopWatch> getAllWatches(){
		List<StopWatch> returnStopWatches = new ArrayList<StopWatch>();
		for(String name: stopWatches.keySet()){
			returnStopWatches.add(stopWatches.get(name));
		}
		return returnStopWatches;
	}
	public Collection<StopWatch> getStartedWatches(){
		List<StopWatch> returnStopWatches = new ArrayList<StopWatch>();
		for(String name: stopWatches.keySet()){
			if(stopWatches.get(name).isStarted()){
				returnStopWatches.add(stopWatches.get(name));
		}}
		return returnStopWatches;
	}
	public Collection<StopWatch> getStoppedWatches(){
		List<StopWatch> returnStopWatches = new ArrayList<StopWatch>();
		for(String name: stopWatches.keySet()){
			if(stopWatches.get(name).isStopped()){
				returnStopWatches.add(stopWatches.get(name));
		}}
		return returnStopWatches;
	}
}
