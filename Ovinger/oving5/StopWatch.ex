<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StopWatch and StopWatchManager">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StopWatch class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.StopWatch"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StopWatchManager class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.StopWatchManager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StopWatch class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.StopWatch"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StopWatchManager class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.StopWatchManager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StopWatchTest."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.StopWatchTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StopWatchManagerTest."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.StopWatchManagerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.StopWatch*" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487357729518" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class StopWatchManager {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487357827566" sizeMeasure="8">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public StopWatch newStopWatch(String name){&#xA;&#x9;&#x9;StopWatch stopWatch = new StopWatch();&#xA;&#x9;&#x9;return stopWatch;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="59" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487357949016" sizeMeasure="14">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.HashMap;&#xA;&#xA;public class StopWatchManager {&#xA;&#x9;&#xA;&#x9;HashMap&lt;String, StopWatch> stopWatches = new HashMap&lt;String, StopWatch>();&#xA;&#x9;&#xA;&#x9;public StopWatch newStopWatch(String name){&#xA;&#x9;&#x9;StopWatch stopWatch = new StopWatch();&#xA;&#x9;&#x9;stopWatches.put(name, stopWatch" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="27" end="-29"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358390195" sizeMeasure="22" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private HashMap&lt;String, StopWatch> stopWatches = new HashMap&lt;String, StopWatch>();&#xA;&#x9;&#xA;&#x9;public StopWatch newStopWatch(String name){&#xA;&#x9;&#x9;StopWatch stopWatch = new StopWatch();&#xA;&#x9;&#x9;stopWatches.put(name, stopWatch);&#xA;&#x9;&#x9;return stopWatch;&#xA;&#x9;}&#xA;&#x9;public void removeStopWatch(String name){&#xA;&#x9;&#x9;stopWatches.remove(name);&#xA;&#x9;}&#xA;&#x9;public void tick(){&#xA;&#x9;&#x9;for(String name: stopWatches.keySet()){&#xA;&#x9;&#x9;&#x9;stopWatches.get(name).tick();&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="89" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="499" charEnd="503" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358470141" sizeMeasure="29" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collection;&#xA;import java.util.HashMap;&#xA;&#xA;public class StopWatchManager {&#xA;&#x9;&#xA;&#x9;private HashMap&lt;String, StopWatch> stopWatches = new HashMap&lt;String, StopWatch>();&#xA;&#x9;&#xA;&#x9;public StopWatch newStopWatch(String name){&#xA;&#x9;&#x9;StopWatch stopWatch = new StopWatch();&#xA;&#x9;&#x9;stopWatches.put(name, stopWatch);&#xA;&#x9;&#x9;return stopWatch;&#xA;&#x9;}&#xA;&#x9;public void removeStopWatch(String name){&#xA;&#x9;&#x9;stopWatches.remove(name);&#xA;&#x9;}&#xA;&#x9;public void tick(int ticks){&#xA;&#x9;&#x9;for(String name: stopWatches.keySet()){&#xA;&#x9;&#x9;&#x9;stopWatches.get(name).tick(ticks);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public StopWatch getStopWatch(String name){&#xA;&#x9;&#x9;return stopWatches.get(name);&#xA;&#x9;}&#xA;&#x9;public Collection&lt;StopWatch> getAllWatches(){&#xA;&#x9;&#x9;return stopWatches;" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="44" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="701" charEnd="712" severity="2" problemCategory="40" problemType="16777235"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358570373" sizeMeasure="31" errorCount="2" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collection&lt;StopWatches> returnStopWatches = new Collection&lt;>();&#xA;&#x9;&#x9;return (Collection&lt;StopWatch>) stopWatches;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="668" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="742" charEnd="752" severity="2" problemCategory="40" problemType="16777373"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="768" charEnd="803" severity="1" problemCategory="130" problemType="16777761"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="705" charEnd="716" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358580948" sizeMeasure="31" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="688" end="-96"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="740" charEnd="750" severity="2" problemCategory="40" problemType="16777373"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="766" charEnd="801" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358587055" sizeMeasure="31" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="StopWatch" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="725" end="-59"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="775" charEnd="810" severity="1" problemCategory="130" problemType="16777761"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="740" charEnd="750" severity="2" problemCategory="40" problemType="16777373"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358785299" sizeMeasure="36">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.HashMap;&#xA;import java.util.List;&#xA;&#xA;public class StopWatchManager {&#xA;&#x9;&#xA;&#x9;private HashMap&lt;String, StopWatch> stopWatches = new HashMap&lt;String, StopWatch>();&#xA;&#x9;&#xA;&#x9;public StopWatch newStopWatch(String name){&#xA;&#x9;&#x9;StopWatch stopWatch = new StopWatch();&#xA;&#x9;&#x9;stopWatches.put(name, stopWatch);&#xA;&#x9;&#x9;return stopWatch;&#xA;&#x9;}&#xA;&#x9;public void removeStopWatch(String name){&#xA;&#x9;&#x9;stopWatches.remove(name);&#xA;&#x9;}&#xA;&#x9;public void tick(int ticks){&#xA;&#x9;&#x9;for(String name: stopWatches.keySet()){&#xA;&#x9;&#x9;&#x9;stopWatches.get(name).tick(ticks);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public StopWatch getStopWatch(String name){&#xA;&#x9;&#x9;return stopWatches.get(name);&#xA;&#x9;}&#xA;&#x9;public Collection&lt;StopWatch> getAllWatches(){&#xA;&#x9;&#x9;List&lt;StopWatch> returnStopWatches = new ArrayList&lt;StopWatch>();&#xA;&#x9;&#x9;for(String name: stopWatches.keySet()){&#xA;&#x9;&#x9;&#x9;returnStopWatches.add(stopWatches.get(name));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return returnS" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="44" end="-20"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358838076" sizeMeasure="43">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public Collection&lt;StopWatch> getStarted" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="910" end="-208"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358860052" sizeMeasure="44">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(stopWatches.get(name).isStarted()){&#xA;&#x9;&#x9;&#x9;&#x9;returnStopWatches.add(stopWatches.get(name));&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="1071" end="-38"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1487358879349" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public Collection&lt;StopWatch> getStoppedWatches(){&#xA;&#x9;&#x9;List&lt;StopWatch> returnStopWatches = new ArrayList&lt;StopWatch>();&#xA;&#x9;&#x9;for(String name: stopWatches.keySet()){&#xA;&#x9;&#x9;&#x9;if(stopWatches.get(name).isStopped()){&#xA;&#x9;&#x9;&#x9;&#x9;returnStopWatches.add(stopWatches.get(name));&#xA;&#x9;&#x9;}}&#xA;&#x9;&#x9;return returnStopWatches;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="1197" end="-4"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1487358911980" completion="1.0" successCount="4">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testStartLapStop</successTests>
          <successTests>testTickStartStopTick</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1487358920274" completion="1.0" successCount="3">
          <successTests>testTicks</successTests>
          <successTests>testNewRemoveStopWatches</successTests>
          <successTests>testStartedStoppedWatches</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
