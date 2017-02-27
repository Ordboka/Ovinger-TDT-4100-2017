<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="BinaryComputingIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the BinaryComputingIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.BinaryComputingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the BinaryComputingIterator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.BinaryComputingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the BinaryComputingIteratorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.BinaryComputingIteratorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.BinaryComputingIterator" action="suspend.breakpoint"/>
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
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112294719" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class BinaryComputingIterator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112305668" sizeMeasure="5" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Iterator" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="58" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="71" charEnd="79" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112364422" sizeMeasure="27" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Iterator;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class BinaryComputingIterator implements Iterator{&#xA;&#x9;&#xA;&#x9;Iterator&lt;Double> iterator1, iterator2;&#xA;&#x9;BinaryOperator&lt;Double> operator;&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, BinaryOperator&lt;Double> operator){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Object next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="21" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112437748" sizeMeasure="40" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Double default1, default2;&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, BinaryOperator&lt;Double> operator){&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, Double default1, Double default2, BinaryOperator&lt;Double> operator){&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;&#x9;this.default1=default1;&#xA;&#x9;&#x9;this.default2=default2;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="226" end="-193"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112472391" sizeMeasure="43" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(iterator1.hasNext()||iterator2.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="816" end="-152"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112475312" sizeMeasure="42" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="884" end="-115"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112603046" sizeMeasure="45" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;if(!iterator1.hasNext()){&#xA;&#x9;&#x9;&#x9;return operator.apply(default1, iterator2.next());&#xA;&#x9;&#x9;}else if(!iterator2.hasNext()){&#xA;&#x9;&#x9;&#x9;return operator.apply(iterator1.next(), default2);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="884" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="964" charEnd="970" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112622698" sizeMeasure="46" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;return operator.apply(iterator1.next(), iterator2.next());" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1112" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112760705" sizeMeasure="46" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1178" end="-1179"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112787901" sizeMeasure="47" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;default1 = new Double(0);&#xA;&#x9;&#x9;default2 = new Double(0);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, Double default1, Double default2, BinaryOperator&lt;Double> operator){&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;&#x9;this.default1=default1;&#xA;&#x9;&#x9;this.default2=default2;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="466" end="-409"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488112980020" sizeMeasure="45" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, Double default1, Double default2, BinaryOperator&lt;Double> operator){&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;&#x9;this.default1=default1;&#xA;&#x9;&#x9;this.default2=default2;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;if(iterator1.hasNext()&amp;&amp;iterator2.hasNext()){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}else if((iterator1.hasNext()&amp;&amp;default2!=null)&amp;&amp;)" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="466" end="-298"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="954" charEnd="956" severity="2" problemCategory="20" problemType="1610612967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488113003960" sizeMeasure="47" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(iterator2.hasNext()&amp;&amp;default1!=null)){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="926" end="-298"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488113090292" sizeMeasure="47" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="||" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="924" end="-357"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="144" charEnd="152" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488112635904" completion="0.8333333333333334" successCount="5" failureCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <failureTests>testComputeResultsWithShortIterator</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488112793275" completion="0.0" failureCount="1">
          <failureTests>testComputeResultsWithShortIterator</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488112811209" completion="0.8333333333333334" successCount="5" failureCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <failureTests>testComputeResultsWithShortIterator</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488113014911" completion="0.8333333333333334" successCount="5" failureCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <failureTests>testComputeResultsWithShortIteratorAndDefault</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488113096269" completion="1.0" successCount="6">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
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
