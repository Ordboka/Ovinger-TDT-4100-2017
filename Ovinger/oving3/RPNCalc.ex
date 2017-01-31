<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="RPNCalc">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the RPNCalc class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the RPNCalc JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.RPNCalcTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485884338667" sizeMeasure="12" errorCount="3">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;import java.util.ArrayList;&#xA;&#xA;public class RPNCalc {&#xA;&#x9;&#xA;&#x9;private ArrayList&lt;Double> stack = new ArrayList&lt;Double>();&#xA;&#x9;&#xA;&#x9;public void push(double)&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485884493645" sizeMeasure="20">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" number){&#xA;&#x9;&#x9;stack.add(number);&#xA;&#x9;}&#xA;&#x9;public double pop(){&#xA;&#x9;&#x9;return stack.remove(stack.size()-1);&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;RPNCalc calc = new RPNCalc();&#xA;&#x9;&#x9;System.out.println(calc.pop());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="164" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485884565080" sizeMeasure="23">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(stack.isEmpty()==true){&#xA;&#x9;&#x9;&#x9;return Double.NaN;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="222" end="-159"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485884944935" sizeMeasure="44">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double peek(int index){&#xA;&#x9;&#x9;if(stack.size()>index){&#xA;&#x9;&#x9;return stack.get(stack.size()-1+index);}&#xA;&#x9;&#x9;else{&#xA;&#x9;&#x9;&#x9;return Double.NaN;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public int getSize(){&#xA;&#x9;&#x9;return stack.size();&#xA;&#x9;}&#xA;&#x9;public void performOperation(char operator){&#xA;&#x9;&#x9;if(operator == '+'){&#xA;&#x9;&#x9;&#x9;push(pop()+pop());&#xA;&#x9;&#x9;}else if(operator == '-'){&#xA;&#x9;&#x9;&#x9;push(-pop()+pop());&#xA;&#x9;&#x9;}else if(operator == '*'){&#xA;&#x9;&#x9;&#x9;push(pop()*pop());&#xA;&#x9;&#x9;}else if(operator == '/'){&#xA;&#x9;&#x9;&#x9;push((1/pop())*pop());&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="325" end="-120"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485885038081" sizeMeasure="44">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="408" end="-467"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485885117658" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else if(operator == '~'){&#xA;&#x9;&#x9;&#x9;double num1 = pop();&#xA;&#x9;&#x9;&#x9;double num2 = pop();&#xA;&#x9;&#x9;&#x9;push(num1);&#xA;&#x9;&#x9;&#x9;push(num2" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="756" end="-126"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485885186315" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; index>0" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="372" end="-611"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1485885204962" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="382" end="-612"/>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485884965558" completion="0.7" successCount="7" failureCount="1" errorCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485885124237" completion="0.9" successCount="9" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485885192483" completion="0.2" successCount="2" failureCount="8"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1485885210607" completion="1.0" successCount="10"/>
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
