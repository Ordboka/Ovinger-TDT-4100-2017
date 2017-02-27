<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StringGridImpl">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Copy the source code for the StringGrid interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGrid"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StringGridImpl class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGridImpl"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringGridImpl class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.StringGridImpl"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="StringGridIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StringGridIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGridIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringGridIterator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.StringGridIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StringGridTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.StringGridTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.StringGrid*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132473298" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGrid {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132482415" sizeMeasure="19" errorCount="5">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &#xA;/*&#xA;An interface with methods for managing the content of a String grid.&#xA;The grid has a number of rows (the grid's height) and columns (the grid's width).&#xA;In each cell in the grid there is a String that can be set with the setElement method and read with the getElement method.&#xA;*/&#xA; public interface StringGrid {&#xA; &#xA;    // Returns the number of rows in this StringGrid&#xA;    public int getRowCount();&#xA;    // Returns the number of columns in this StringGrid&#xA;    public int getColumnCount();&#xA; &#xA;    // Returns the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;    public String getElement(int row, int column);&#xA;    // Sets the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;    public void setElement(int row, int column, String element);" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="20" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="2" charStart="21" charEnd="310" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="341" charEnd="402" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="12" charStart="429" charEnd="490" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="520" charEnd="655" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="703" charEnd="832" severity="2" problemCategory="20" problemType="1610612969"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132495328" sizeMeasure="19" errorCount="5">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="20" end="-858"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="308" charEnd="309" severity="2" problemCategory="20" problemType="1610612968"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="340" charEnd="401" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="12" charStart="428" charEnd="489" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="519" charEnd="654" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="702" charEnd="831" severity="2" problemCategory="20" problemType="1610612969"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132510808" sizeMeasure="19" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public interface StringGrid {&#xA;&#xA;   // Returns the number of rows in this StringGrid&#xA;   public int getRowCount();&#xA;   // Returns the number of columns in this StringGrid&#xA;   public int getColumnCount();&#xA; &#xA;    // Returns the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;   public String getElement(int row, int column);&#xA;   // Sets the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="301" end="-67"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="341" charEnd="397" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="12" charStart="424" charEnd="483" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="513" charEnd="647" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="695" charEnd="822" severity="2" problemCategory="20" problemType="1610612969"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132517353" sizeMeasure="19" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="679" end="-187"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="12" charStart="424" charEnd="483" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="513" charEnd="647" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="18" charStart="816" charEnd="819" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="341" charEnd="397" severity="2" problemCategory="20" problemType="1610612969"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132546525" sizeMeasure="19">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// Returns the number of rows in this StringGrid&#xA;public int getRowCount();&#xA;// Returns the number of columns in this StringGrid&#xA;public int getColumnCount();&#xA;&#xA;// Returns the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;public String getElement(int row, int column);&#xA;// Sets the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="332" end="-64"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132551591" sizeMeasure="19">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;// Returns the number of rows in this StringGrid&#xA;&#x9;public int getRowCount();&#xA;&#x9;// Returns the number of columns in this StringGrid&#xA;&#x9;public int getColumnCount();&#xA;&#x9;&#xA;&#x9;// Returns the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;&#x9;public String getElement(int row, int column);&#xA;&#x9;// Sets the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="331" end="-64"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132568131" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGridImpl {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132670065" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;&#xA;public class StringGridImpl implements StringGrid{&#xA;&#x9;ArrayList&lt;ArrayList&lt;String>> stringList = new ArrayList&lt;>();&#xA;&#x9;public StringGridImpl(int rows, int columnCount){&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int getRowCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="21" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132720150" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int rows, columnCount;&#xA;&#x9;public StringGridImpl(int rows, int columnCount){&#xA;&#x9;&#x9;this.rows = rows;&#xA;&#x9;&#x9;this.columnCount = columnCount;" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="164" end="-430"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132737339" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rows;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return columnCount" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="382" end="-243"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132775852" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="stringList.get(row).get(column)" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="603" end="-127"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132841270" sizeMeasure="37" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return stringList.get(row).set(column, element);" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="753" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="34" charStart="786" charEnd="834" severity="2" problemCategory="50" problemType="67108969"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132851916" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="753" end="-49"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134395173" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1).get(column-1);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;stringList.get(row-1).set(column-1" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="621" end="-19"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134494983" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=").get(column);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;stringList.get(row).set(column" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="621" end="-19"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136218262" sizeMeasure="37" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="set(row, stringList.get(row).set(column, element)" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="764" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="34" charStart="797" charEnd="800" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136610135" sizeMeasure="44" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;ArrayList&lt;String> tempArray = new ArrayList&lt;String>();&#xA;&#x9;&#x9;for(int i = 0; i&lt;columnCount;i++){&#xA;&#x9;&#x9;&#x9;tempArray.add(&quot;&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for(int i = 0; i&lt;rows;i++){&#xA;&#x9;&#x9;&#x9;stringList.add(tempArray);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="293" end="-532"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="41" charStart="988" charEnd="991" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136699540" sizeMeasure="44" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="948" end="-50"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="41" charStart="1017" charEnd="1018" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136705959" sizeMeasure="44">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="get(row).set(column, element" edit="/1/@proposals.0/@proposals.1/@attempts.11/@edit" start="948" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136898114" sizeMeasure="47">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;StringGridImpl test = new StringGridImpl(2, 3);&#xA;&#x9;&#x9;test.setElement(0, 0, &quot;0,0&quot;);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.12/@edit" start="982" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136918345" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(test.getElement(0, 0)" edit="/1/@proposals.0/@proposals.1/@attempts.13/@edit" start="1107" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488136955499" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="test.setElement(0, 1, &quot;0,1&quot; " edit="/1/@proposals.0/@proposals.1/@attempts.14/@edit" start="1108" end="-54"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137008064" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;test.setElement(0, 2, &quot;0, 2&quot;);&#xA;&#x9;&#x9;test.setElement(1, 0, &quot;1, 0&quot;" edit="/1/@proposals.0/@proposals.1/@attempts.15/@edit" start="1135" end="-54"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137511092" sizeMeasure="53">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList&lt;String> tempArray = stringList.get(row);&#xA;&#x9;&#x9;tempArray.set(column, element);&#xA;&#x9;&#x9;stringList.set(row, tempArray" edit="/1/@proposals.0/@proposals.1/@attempts.16/@edit" start="937" end="-279"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137663857" sizeMeasure="53" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".clone()" edit="/1/@proposals.0/@proposals.1/@attempts.17/@edit" start="469" end="-863"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="471" charEnd="474" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137672237" sizeMeasure="53" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(ArrayList&lt;String>) " edit="/1/@proposals.0/@proposals.1/@attempts.18/@edit" start="460" end="-880"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="475" charEnd="512" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138000896" sizeMeasure="55" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="test.setElement(1, 1, &quot;1,1&quot;);&#xA;&#x9;&#x9;test.setElement(1, 2, &quot;1, 2" edit="/1/@proposals.0/@proposals.1/@attempts.19/@edit" start="1311" end="-55"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="475" charEnd="512" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138118577" sizeMeasure="57" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Iterator;&#xA;&#xA;public class StringGridImpl implements StringGrid{&#xA;&#x9;ArrayList&lt;ArrayList&lt;String>> stringList = new ArrayList&lt;>();&#xA;&#x9;int rows, columnCount;&#xA;&#x9;public StringGridImpl(int rows, int columnCount){&#xA;&#x9;&#x9;this.rows = rows;&#xA;&#x9;&#x9;this.columnCount = columnCount;&#xA;&#x9;&#x9;ArrayList&lt;String> tempArray = new ArrayList&lt;String>();&#xA;&#x9;&#x9;for(int i = 0; i&lt;columnCount;i++){&#xA;&#x9;&#x9;&#x9;tempArray.add(&quot;&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for(int i = 0; i&lt;rows;i++){&#xA;&#x9;&#x9;&#x9;stringList.add((ArrayList&lt;String>) tempArray.clone());&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int getRowCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return rows;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return columnCount;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return stringList.get(row).get(column);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;ArrayList&lt;String> tempArray = stringList.get(row);&#xA;&#x9;&#x9;tempArray.set(column, element);&#xA;&#x9;&#x9;stringList.set(row, tempArray);&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;StringGridImpl test = new StringGridImpl(2, 3);&#xA;&#x9;&#x9;test.setElement(0, 0, &quot;0,0&quot;);&#xA;&#x9;&#x9;test.setElement(0, 1, &quot;0,1&quot;);&#xA;&#x9;&#x9;test.setElement(0, 2, &quot;0, 2&quot;);&#xA;&#x9;&#x9;test.setElement(1, 0, &quot;1, 0&quot;);&#xA;&#x9;&#x9;test.setElement(1, 1, &quot;1,1&quot;);&#xA;&#x9;&#x9;test.setElement(1, 2, &quot;1, 2&quot;);&#xA;&#x9;&#x9;Iterator&lt;StringGrid> testIt = new Iterator&lt;StringGrid>(test" edit="/1/@proposals.0/@proposals.1/@attempts.20/@edit" start="49" end="-54"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="54" charStart="1490" charEnd="1498" severity="2" problemCategory="40" problemType="16777373"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138139661" sizeMeasure="57" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Iterator> testIt = new Iterator&lt;StringGridIterator>(test,true" edit="/1/@proposals.0/@proposals.1/@attempts.21/@edit" start="1422" end="-54"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="54" charStart="1498" charEnd="1506" severity="2" problemCategory="40" problemType="16777373"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138309917" sizeMeasure="57" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="StringGridIterator testIt = StringGridIterator" edit="/1/@proposals.0/@proposals.1/@attempts.22/@edit" start="1403" end="-64"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="54" charStart="1484" charEnd="1502" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138340183" sizeMeasure="57" warningCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="new" edit="/1/@proposals.0/@proposals.1/@attempts.23/@edit" start="1431" end="-83"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="54" charStart="1475" charEnd="1481" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138360041" sizeMeasure="57" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="It.hasNext(" edit="/1/@proposals.0/@proposals.1/@attempts.24/@edit" start="1491" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138375299" sizeMeasure="58" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(testIt." edit="/1/@proposals.0/@proposals.1/@attempts.25/@edit" start="1507" end="-15"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="56" charStart="1589" charEnd="1593" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138378684" sizeMeasure="58" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="n" edit="/1/@proposals.0/@proposals.1/@attempts.26/@edit" start="1534" end="-14"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138389147" sizeMeasure="60" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.27/@edit" start="1544" end="-86"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138393325" sizeMeasure="62" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(testIt.hasNext());&#xA;&#x9;&#x9;System.out.println(testIt.next()" edit="/1/@proposals.0/@proposals.1/@attempts.28/@edit" start="1544" end="-86"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138400686" sizeMeasure="64" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.29/@edit" start="1698" end="-240"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138879480" sizeMeasure="70" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(testIt.hasNext());&#xA;&#x9;&#x9;System.out.println(testIt.next()" edit="/1/@proposals.0/@proposals.1/@attempts.30/@edit" start="1698" end="-240"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="59" charEnd="77" severity="1" problemCategory="120" problemType="268435844"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="503" charEnd="540" severity="1" problemCategory="130" problemType="16777761"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488136902281" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488136920739" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488136958578" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488137011383" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488137196377" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488137210665" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488137359362" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488137514922" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488137675241" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138003684" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138362722" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138381193" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138389059" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138395754" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138400610" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138474638" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138518860" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138537927" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138588000" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138689019" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138715434" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138784821" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138802481" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488138881886" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488193899094" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488193985301" mode="run"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132931643" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGridIterator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488132957452" sizeMeasure="5" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Iterator&lt;String>" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="53" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="66" charEnd="74" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133053988" sizeMeasure="22" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Iterator;&#xA;&#xA;public class StringGridIterator implements Iterator&lt;String>{&#xA;&#x9;boolean rowMajor;//angir om iterasjonen skal være bortover først (rowMajor=true) eller nedover først (rowMajor=false).&#xA;&#x9;public StringGridIterator(StringGrid, boolean) {&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="21" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="273" charEnd="285" severity="2" problemCategory="20" problemType="1610612969"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="275" charEnd="282" severity="2" problemCategory="20" problemType="1610612976"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="263" charEnd="273" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133068019" sizeMeasure="22">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" grid, boolean rowMajor" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="267" end="-239"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133115791" sizeMeasure="25">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="StringGrid grid;&#xA;&#x9;&#xA;&#x9;public StringGridIterator(StringGrid grid, boolean rowMajor) {&#xA;&#x9;&#x9;this.rowMajor = rowMajor;&#xA;&#x9;&#x9;this.grid = grid;" edit="/1/@proposals.1/@proposals.0/@attempts.3/@edit" start="231" end="-194"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133769636" sizeMeasure="26">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int rowCount = 0, columnCount = 0" edit="/1/@proposals.1/@proposals.0/@attempts.4/@edit" start="249" end="-309"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133852612" sizeMeasure="26" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(!(rowCount==grid.getRowCount()&amp;&amp;columnCount==grid.getColumnCount())" edit="/1/@proposals.1/@proposals.0/@attempts.5/@edit" start="485" end="-100"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="568" charEnd="569" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133857383" sizeMeasure="26">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.6/@edit" start="553" end="-102"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133973312" sizeMeasure="29" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;if(hasNext()){&#xA;&#x9;&#x9;&#x9;String return = grid.getElement(rowCount, columnCount);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.7/@edit" start="554" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="24" charStart="682" charEnd="688" severity="2" problemCategory="20" problemType="1610612968"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="24" charStart="675" charEnd="681" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488133978214" sizeMeasure="29" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String" edit="/1/@proposals.1/@proposals.0/@attempts.8/@edit" start="665" end="-57"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="606" charEnd="612" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134120858" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;String returnString = grid.getElement(rowCount, columnCount);&#xA;&#x9;&#x9;&#x9;if(rowMajor){&#xA;&#x9;&#x9;&#x9;&#x9;if(columnCount == grid.getColumnCount()){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;return returnString;" edit="/1/@proposals.1/@proposals.0/@attempts.9/@edit" start="634" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134176507" sizeMeasure="42">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1&amp;&amp;columnCount==grid.getColumnCount()-1));&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#x9;String returnString = grid.getElement(rowCount, columnCount);&#xA;&#x9;&#x9;&#x9;if(rowMajor){&#xA;&#x9;&#x9;&#x9;&#x9;if(columnCount == grid.getColumnCount()-1){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;if(rowCount == grid.getRowCount()-1){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.10/@edit" start="516" end="-36"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134195754" sizeMeasure="42">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rowCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;row" edit="/1/@proposals.1/@proposals.0/@attempts.11/@edit" start="900" end="-51"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134306543" sizeMeasure="46" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;void remove(){&#xA;&#x9;&#x9;throw new UnsupportedOperationException()" edit="/1/@proposals.1/@proposals.0/@attempts.12/@edit" start="1000" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="42" charStart="1049" charEnd="1057" severity="2" problemCategory="50" problemType="67109273"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488134313808" sizeMeasure="46">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public " edit="/1/@proposals.1/@proposals.0/@attempts.13/@edit" start="1003" end="-67"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137720702" sizeMeasure="46">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&amp;&amp;columnCount==grid.getColumnCount()));&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#x9;String returnString = grid.getElement(rowCount, columnCount);&#xA;&#x9;&#x9;&#x9;if(rowMajor){&#xA;&#x9;&#x9;&#x9;&#x9;if(columnCount == grid.getColumnCount()){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;if(rowCount == grid.getRowCount()" edit="/1/@proposals.1/@proposals.0/@attempts.14/@edit" start="516" end="-185"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137890364" sizeMeasure="48" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="returnString = &quot;&quot;;&#xA;&#x9;&#x9;if(hasNext()){&#xA;&#x9;&#x9;&#x9;String returnString = grid.getElement(rowCount, columnCount);&#xA;&#x9;&#x9;&#x9;if(rowMajor){&#xA;&#x9;&#x9;&#x9;&#x9;if(columnCount == grid.getColumnCount()){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;if(rowCount == grid.getRowCount()){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount = 0;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;columnCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;rowCount++;&#xA;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.15/@edit" start="634" end="-105"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="23" charStart="656" charEnd="668" severity="2" problemCategory="50" problemType="33554515"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="41" charStart="1054" charEnd="1066" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488137900064" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String returnString = &quot;&quot;;&#xA;&#x9;&#x9;if(hasNext()){&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.16/@edit" start="634" end="-428"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138468170" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;Test&quot;);" edit="/1/@proposals.1/@proposals.0/@attempts.17/@edit" start="803" end="-311"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138513852" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(columnCount);" edit="/1/@proposals.1/@proposals.0/@attempts.18/@edit" start="756" end="-390"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138532166" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + grid.getColumnCount()" edit="/1/@proposals.1/@proposals.0/@attempts.19/@edit" start="786" end="-392"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138582899" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1&amp;&amp;columnCount==grid.getColumnCount()-1));&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;String returnString = &quot;&quot;;&#xA;&#x9;&#x9;if(hasNext()){&#xA;&#x9;&#x9;&#x9;returnString = grid.getElement(rowCount, columnCount);&#xA;&#x9;&#x9;&#x9;if(rowMajor){&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(columnCount + grid.getColumnCount()-1" edit="/1/@proposals.1/@proposals.0/@attempts.20/@edit" start="516" end="-392"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138586414" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1" edit="/1/@proposals.1/@proposals.0/@attempts.21/@edit" start="1022" end="-186"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138624996" sizeMeasure="50" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot; &quot; " edit="/1/@proposals.1/@proposals.0/@attempts.22/@edit" start="793" end="-418"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="824" charEnd="828" severity="2" problemCategory="20" problemType="1610612968"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="829" charEnd="843" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138628353" sizeMeasure="50" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+" edit="/1/@proposals.1/@proposals.0/@attempts.23/@edit" start="797" end="-418"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="805" charEnd="848" severity="2" problemCategory="60" problemType="536871072"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138684972" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(grid.getColumnCount()-1)" edit="/1/@proposals.1/@proposals.0/@attempts.24/@edit" start="799" end="-394"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138712765" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1" edit="/1/@proposals.1/@proposals.0/@attempts.25/@edit" start="870" end="-348"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138798279" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(columnCount == grid.getColumnCount()-1){" edit="/1/@proposals.1/@proposals.0/@attempts.26/@edit" start="760" end="-313"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488138928978" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.27/@edit" start="554" end="-560"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139060375" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(rowMajor){&#xA;&#x9;&#x9;&#x9;return(!(rowCount==grid.getRowCount()-1&amp;&amp;columnCount==grid.getColumnCount()));&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;return(!(rowCount==grid.getRowCount()&amp;&amp;columnCount==grid.getColumnCount()-1));&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.28/@edit" start="479" end="-557"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139144296" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rowCount>grid.getRowCount(" edit="/1/@proposals.1/@proposals.0/@attempts.29/@edit" start="503" end="-655"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139178423" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1" edit="/1/@proposals.1/@proposals.0/@attempts.30/@edit" start="530" end="-654"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139210795" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt;" edit="/1/@proposals.1/@proposals.0/@attempts.31/@edit" start="511" end="-674"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139253543" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="columnCount&lt;grid.getColumnCount()-1" edit="/1/@proposals.1/@proposals.0/@attempts.32/@edit" start="554" end="-563"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139286636" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="columnCount&lt;grid.getColumn" edit="/1/@proposals.1/@proposals.0/@attempts.33/@edit" start="503" end="-629"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139302689" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=">" edit="/1/@proposals.1/@proposals.0/@attempts.34/@edit" start="514" end="-643"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488139336489" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rowCount&lt;grid.getRow" edit="/1/@proposals.1/@proposals.0/@attempts.35/@edit" start="560" end="-572"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488193887630" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return(!(columnCount==(grid.getColumnCount()-1)&amp;&amp;rowCount==(grid.getRowCount()-1)));" edit="/1/@proposals.1/@proposals.0/@attempts.36/@edit" start="479" end="-557"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488193973199" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rowCount==grid.getRowCount(" edit="/1/@proposals.1/@proposals.0/@attempts.37/@edit" start="486" end="-560"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488193981939" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="!" edit="/1/@proposals.1/@proposals.0/@attempts.38/@edit" start="494" end="-578"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488194093055" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(rowMajor){&#xA;&#x9;&#x9;return(rowCount!=grid.getRowCount());}else{&#xA;&#x9;&#x9;&#x9;return(columnCount!=grid.getColumnCount());&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.39/@edit" start="479" end="-557"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488134324784" completion="0.0" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488134410085" completion="0.0" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488134505773" completion="0.0" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488136712619" completion="0.0" failureCount="3">
          <failureTests>testGrid</failureTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488137680030" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488137726881" completion="0.3333333333333333" successCount="1" errorCount="2">
          <successTests>testGrid</successTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488137907384" completion="0.3333333333333333" successCount="1" errorCount="2">
          <successTests>testGrid</successTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488138722236" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488138931300" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139063057" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139150231" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139182237" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139214220" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139258036" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139288740" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139305205" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488139341625" completion="0.3333333333333333" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488194023799" completion="0.6666666666666666" successCount="2" failureCount="1">
          <successTests>testGrid</successTests>
          <successTests>testGridIteratorRowMajor</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488194097607" completion="1.0" successCount="3">
          <successTests>testGrid</successTests>
          <successTests>testGridIteratorColumnMajor</successTests>
          <successTests>testGridIteratorRowMajor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a" performedCount="2">
        <attempts timestamp="1488137211147"/>
        <attempts timestamp="1488137360862"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a" performedCount="1">
        <attempts timestamp="1488137384603"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a" performedCount="2">
        <attempts timestamp="1488137391017"/>
        <attempts timestamp="1488137427804"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.2/@tasks.3/@q" answer="/0/@parts.2/@tasks.3/@a" performedCount="3">
        <attempts timestamp="1488137218453"/>
        <attempts timestamp="1488137325964"/>
        <attempts timestamp="1488137364051"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
