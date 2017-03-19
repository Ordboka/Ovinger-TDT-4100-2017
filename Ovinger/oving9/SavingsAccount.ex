<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="SavingsAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Get the source code for the Account interface from the wiki."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the BSU class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.BSU"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the BSU class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.BSU"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ForeldreSpar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.ForeldreSpar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ForeldreSpar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.ForeldreSpar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the BSU JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.BSUTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ForeldreSpar JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.ForeldreSparTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the SavingsAccount class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.SavingsAccount" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the BSU class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.BSU" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the ForeldreSpar class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.ForeldreSpar" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489918848804" sizeMeasure="11">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public interface Account {&#xA;&#x9;&#x9;&#xA;&#x9;public void deposit(double amount);&#xA;&#xA;&#x9;public void withdraw(double amount);&#xA;&#x9;&#xA;&#x9;public double getBalance();&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489918875408" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489918893231" sizeMeasure="5">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Account" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="50" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489918987212" sizeMeasure="30">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;double balance;&#xA;&#x9;double interest;&#xA;&#x9;&#xA;&#x9;public SavingsAccount(double interest) {&#xA;&#x9;&#x9;this.interest = interest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="71" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489918995314" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;this.balance = 0" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="179" end="-291"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919072109" sizeMeasure="34">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(amount>0){&#xA;&#x9;&#x9;&#x9;balance+=amount;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Wrong amount deposited&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="254" end="-196"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919181322" sizeMeasure="41">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Illegal amount deposited, must be positive&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if(amount>0){&#xA;&#x9;&#x9;&#x9;if(amount&lt;=balance){&#xA;&#x9;&#x9;&#x9;&#x9;balance-=amount;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Balance can't be negative&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal amount withdrawn, must be positive&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="336" end="-102"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919347167" sizeMeasure="43">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void endYearUpdate(){&#xA;&#x9;&#x9;balance += balance*interest;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="727" end="-4"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919440999" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class BSU {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919449402" sizeMeasure="5">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends SavingsAccount" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="39" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919509341" sizeMeasure="10">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public BSU(double interest, double maxAmount) {&#xA;&#x9;&#x9;super(interest);&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="64" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919659173" sizeMeasure="18">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double maxAmount;&#xA;&#x9;double yearlyAmount;&#xA;&#x9;&#xA;&#x9;public BSU(double interest, double maxAmount) {&#xA;&#x9;&#x9;super(interest);&#xA;&#x9;&#x9;this.maxAmount = maxAmount;&#xA;&#x9;&#x9;yearlyAmount = 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount){&#xA;&#x9;&#x9;if(amount+&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="65" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919837271" sizeMeasure="25">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(amount+yearlyAmount)&lt;maxAmount){&#xA;&#x9;&#x9;&#x9;super.deposit(amount);&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;The yearly amount is above the limit&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void endYearUpdate(){&#xA;&#x9;&#x9;super.endYearUpdate();&#xA;&#x9;&#x9;yearlyAmount = 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="272" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919867146" sizeMeasure="29">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public double getTaxDeduction(){&#xA;&#x9;&#x9;return yearlyAmount*0.2" edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="502" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489919890981" sizeMeasure="30">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;yearlyAmount+=amount;" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="422" end="-151"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489920217683" sizeMeasure="39">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;public void withdraw(double amount){&#xA;&#x9;&#x9;if(amount&lt;yearlyAmount){&#xA;&#x9;&#x9;&#x9;super.withdraw(amount);&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Not enough money put in this year&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="449" end="-148"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489920254541" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class ForeldreSpar {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489924779390" sizeMeasure="27">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends SavingsAccount{&#xA;&#xA;&#x9;private int maxWithdrawals;&#xA;&#x9;private int usedWithdrawals;&#xA;&#xA;&#x9;public ForeldreSpar(double interest, int maxWithdrawals) {&#xA;&#x9;&#x9;super(interest);&#xA;&#x9;&#x9;this.maxWithdrawals = maxWithdrawals;&#xA;&#x9;&#x9;usedWithdrawals = 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount){&#xA;&#x9;&#x9;if(getRemainingWithdrawals()!=0){&#xA;&#x9;&#x9;&#x9;super.withdraw(amount);&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;All withdraws used up&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;usedWithdrawals++;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRemainingWithdrawals(){&#xA;&#x9;&#x9;return maxWithdrawals-usedWithdrawals;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="48" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489924806374" sizeMeasure="32">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void endYearUpdate(){&#xA;&#x9;&#x9;super.endYearUpdate();&#xA;&#x9;&#x9;usedWithdrawals=0" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="489" end="-95"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489919406420" completion="1.0" successCount="4">
          <successTests>testDepositAndWithdrawIllegalStateOrInput</successTests>
          <successTests>testBalanceField</successTests>
          <successTests>testEndYearUpdate</successTests>
          <successTests>testDepositAndWithdraw</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489919999894" completion="0.6666666666666666" successCount="2" failureCount="1">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489920230036" completion="1.0" successCount="3">
          <successTests>testGetTaxDeduction</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489924820880" completion="1.0" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testGetRemainingWithdrawals</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
