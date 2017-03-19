<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="AbstractAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract AbstractAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.AbstractAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the DebitAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DebitAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CreditAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CreditAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DebitAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.DebitAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CreditAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CreditAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccount2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Account*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934513366" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class AbstractAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934686978" sizeMeasure="14">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="abstract class AbstractAccount {&#xA;&#x9;&#xA;&#x9;protected int balance;&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if(amount>0){&#xA;&#x9;&#x9;&#x9;balance+=amount;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal amount deposited, must be positive&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="29" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934758026" sizeMeasure="22">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public void withdraw(double amount){&#xA;&#x9;&#x9;if(amount>0){&#xA;&#x9;&#x9;&#x9;internalWithdraw(amount);&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal amount withdrawn" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="265" end="-32"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934843309" sizeMeasure="27">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public abstract void internalWithdraw(double amount);&#xA;&#x9;&#xA;&#x9;public double getBalance(){&#xA;&#x9;&#x9;return balance;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="451" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934887560" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="AbstractAccount() {&#xA;&#x9;&#x9;balance = 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="98" end="-474"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934891592" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="75" end="-531"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489934869908" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class DebitAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935133067" sizeMeasure="14">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import static org.junit.Assert.*;&#xA;&#xA;import org.junit.Test;&#xA;&#xA;public class DebitAccount {&#xA;&#xA;&#x9;@Test&#xA;&#x9;public void test() {&#xA;&#x9;&#x9;fail(&quot;Not yet implemented&quot;);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="22" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935138736" sizeMeasure="191">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="inheritance.DebitAccount;&#xA;import junit.framework.TestCase;&#xA;import no.hal.jex.runtime.JExercise;&#xA;&#xA;@JExercise(description = &quot;Tests inheritance.DebitAccount&quot;)&#xA;@SuppressWarnings(&quot;all&quot;)&#xA;public class DebitAccountTest extends TestCase {&#xA;  private DebitAccount sub;&#xA;  &#xA;  private DebitAccount _init_sub() {&#xA;    DebitAccount _debitAccount = new DebitAccount();&#xA;    return _debitAccount;&#xA;  }&#xA;  &#xA;  @Override&#xA;  protected void setUp() {&#xA;    sub = _init_sub();&#xA;    &#xA;  }&#xA;  &#xA;  @JExercise(tests = &quot;DebitAccount()&quot;, description = &quot;&lt;h3>Setter inn midler&lt;/h3>Tests \n\t\tthe following sequence:\n\t\t&lt;ul>\n\t\t&lt;li>Penger settes inn: deposit(10000.0)&lt;/li>\n\t\t&lt;li>Tester negativt bel\u00F8p: deposit(-10000.0)&lt;/li>\n\t\t&lt;/ul>\n&quot;)&#xA;  public void testDeposit() {&#xA;    _test__deposit_transitions0_source_state(sub);&#xA;    _transition_exprAction__deposit_transitions0_actions0(sub);&#xA;    _test__deposit_transitions0_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__deposit_transitions1_actions0(sub);&#xA;      fail(&quot;IllegalArgumentException should be thrown after deposit(-10000.0)&quot;);&#xA;    } catch (Exception e) {&#xA;      assertTrue(&quot;IllegalArgumentException should be thrown after deposit(-10000.0)&quot;, e instanceof IllegalArgumentException);&#xA;    }&#xA;    _test__deposit_transitions2_effects0_state(sub);&#xA;    &#xA;  }&#xA;  &#xA;  @JExercise(tests = &quot;DebitAccount()&quot;, description = &quot;Tests \n\t\tthe following sequence:\n\t\t&lt;ul>\n\t\t&lt;li>Setter inn og tar ut: deposit(20000.0), withdraw(5000.0)&lt;/li>\n\t\t&lt;li>Tester negativt bel\u00F8p: withdraw(-10000.0)&lt;/li>\n\t\t&lt;li>Tester for stort bel\u00F8p: withdraw(20000.0)&lt;/li>\n\t\t&lt;/ul>\n&quot;)&#xA;  public void testWithdraw() {&#xA;    _transition_exprAction__withdraw_transitions0_actions0(sub);&#xA;    _transition_exprAction__withdraw_transitions0_actions1(sub);&#xA;    _test__withdraw_transitions0_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__withdraw_transitions1_actions0(sub);&#xA;      fail(&quot;IllegalArgumentException should be thrown after withdraw(-10000.0)&quot;);&#xA;    } catch (Exception e) {&#xA;      assertTrue(&quot;IllegalArgumentException should be thrown after withdraw(-10000.0)&quot;, e instanceof IllegalArgumentException);&#xA;    }&#xA;    _test__withdraw_transitions2_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__withdraw_transitions3_actions0(sub);&#xA;      fail(&quot;IllegalStateException should be thrown after withdraw(20000.0)&quot;);&#xA;    } catch (Exception e_1) {&#xA;      assertTrue(&quot;IllegalStateException should be thrown after withdraw(20000.0)&quot;, e_1 instanceof IllegalStateException);&#xA;    }&#xA;    _test__withdraw_transitions4_effects0_state(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_source_state(final DebitAccount it) {&#xA;    _test__deposit_transitions0_source_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_source_state_objectTests0_test(final DebitAccount it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 0.0 failed after deposit(10000.0)&quot;, 0.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__deposit_transitions0_actions0(final DebitAccount it) {&#xA;    try {&#xA;      &#xA;      it.deposit(10000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;deposit(10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_effects0_state(final DebitAccount it) {&#xA;    _test__deposit_transitions0_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_effects0_state_objectTests0_test(final DebitAccount it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 10000.0 failed after deposit(10000.0)&quot;, 10000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__deposit_transitions1_actions0(final DebitAccount it) {&#xA;    try {&#xA;      &#xA;      it.deposit((-10000.0));&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;deposit(-10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions2_effects0_state(final DebitAccount it) {&#xA;    _test__deposit_transitions2_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions2_effects0_state_objectTests0_test(final DebitAccount it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 10000.0 failed&quot;, 10000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions0_actions0(final DebitAccount it) {&#xA;    try {&#xA;      &#xA;      it.deposit(20000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;deposit(20000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions0_actions1(final DebitAccount it) {&#xA;    try {&#xA;      &#xA;      it.withdraw(5000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(5000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions0_effects0_state(final DebitAccount it) {&#xA;    _test__withdraw_transitions0_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions0_effects0_state_objectTests0_test(final DebitAccount it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 15000.0 failed after deposit(20000.0) ,withdraw(5000.0)&quot;, 15000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions1_actions0(final DebitAccount it) {&#xA;    try {&#xA;      &#xA;      it.withdraw((-10000.0));&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(-10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions2_effects0_state(final DebitAccount it) {&#xA;    _test__withdraw_transitions2_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions2_effects0_state_objectTests0_test(final DebitAccount it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 15000.0 failed&quot;, 15000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions3_actions0(final DebitAccount it) {&#xA;    try {&#xA;      &#xA;      it.withdraw(20000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(20000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions4_effects0_state(final DebitAccount it) {&#xA;    _test__withdraw_transitions4_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions4_effects0_state_objectTests0_test(final DebitAccount it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 15000.0 failed&quot;, 15000.0, _balance);&#xA;    &#xA;  }" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="29" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935151743" sizeMeasure="-1" errorCount="-1" warningCount="-1"/>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935164533" sizeMeasure="14">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class DebitAccount extends AbstractAccount{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if(balance>amount){&#xA;&#x9;&#x9;&#x9;balance-=amount;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935203354" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CreditAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935274981" sizeMeasure="11">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#x9;private double creditLine;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="49" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935370454" sizeMeasure="21">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public double getCreditLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;if(creditLine>=0 &amp;&amp; balance+creditLine>=0){&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Invalid&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="203" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935440326" sizeMeasure="27">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;public CreditAccount(double creditLine) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="103" end="-354"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935517740" sizeMeasure="32">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(creditLine>=0){&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if(amount&lt;=balance+creditLine){&#xA;&#x9;&#x9;&#x9;balance-=amount;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="160" end="-256"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935534143" sizeMeasure="34">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();" edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="218" end="-394"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935548897" sizeMeasure="34">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="throw new IllegalStateException();" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="398" end="-260"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935638800" sizeMeasure="34">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="){&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgument" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="563" end="-34"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935670730" sizeMeasure="38">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(balance+creditLine>=0){&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.7/@edit" start="569" end="-72"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935729453" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount2 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935812741" sizeMeasure="19">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;int maxWith, currentWith;&#xA;&#x9;double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int maxWith, double fee) {&#xA;&#x9;&#x9;this.maxWith = maxWith;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="51" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935870263" sizeMeasure="19">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="with;&#xA;&#x9;double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int with, double fee) {&#xA;&#x9;&#x9;this.with = with;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if(remWith>=)" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="83" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489935982481" sizeMeasure="23">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import DebitAccount;&#xA;&#xA;public class SavingsAccount2 extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;int with;&#xA;&#x9;double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int with, double fee) {&#xA;&#x9;&#x9;this.with = with;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if(with&lt;0){&#xA;&#x9;&#x9;&#x9;balance-=fee;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;DebitAccount" edit="/1/@proposals.0/@proposals.5/@attempts.2/@edit" start="22" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936039890" sizeMeasure="25">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class SavingsAccount2 extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;int with;&#xA;&#x9;double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int with, double fee) {&#xA;&#x9;&#x9;this.with = with;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if(with&lt;0){&#xA;&#x9;&#x9;&#x9;balance-=fee;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(balance>amount){&#xA;&#x9;&#x9;&#x9;balance-=amount;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.3/@edit" start="22" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936079287" sizeMeasure="29">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(fee&lt;balance){&#xA;&#x9;&#x9;&#x9;&#x9;balance-=fee;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.4/@edit" start="270" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936103801" sizeMeasure="14">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import static org.junit.Assert.*;&#xA;&#xA;import org.junit.Test;&#xA;&#xA;public class SavingsAccount2 {&#xA;&#xA;&#x9;@Test&#xA;&#x9;public void test() {&#xA;&#x9;&#x9;fail(&quot;Not yet implemented&quot;);" edit="/1/@proposals.0/@proposals.5/@attempts.5/@edit" start="22" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936109037" sizeMeasure="244">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="inheritance.SavingsAccount2;&#xA;import junit.framework.TestCase;&#xA;import no.hal.jex.runtime.JExercise;&#xA;&#xA;@JExercise(description = &quot;Tests inheritance.SavingsAccount2&quot;)&#xA;@SuppressWarnings(&quot;all&quot;)&#xA;public class SavingsAccount2Test extends TestCase {&#xA;  private SavingsAccount2 sub;&#xA;  &#xA;  private SavingsAccount2 _init_sub() {&#xA;    SavingsAccount2 _savingsAccount2 = new SavingsAccount2(1, 50.0);&#xA;    return _savingsAccount2;&#xA;  }&#xA;  &#xA;  @Override&#xA;  protected void setUp() {&#xA;    sub = _init_sub();&#xA;    &#xA;  }&#xA;  &#xA;  @JExercise(tests = &quot;SavingsAccount2(int,double)&quot;, description = &quot;&lt;h3>Setter inn midler&lt;/h3>Tests \n\t\tthe following sequence:\n\t\t&lt;ul>\n\t\t&lt;li>Penger settes inn: deposit(10000.0)&lt;/li>\n\t\t&lt;li>Tester negativt bel\u00F8p: deposit(-10000.0)&lt;/li>\n\t\t&lt;/ul>\n&quot;)&#xA;  public void testDeposit() {&#xA;    _test__deposit_transitions0_source_state(sub);&#xA;    _transition_exprAction__deposit_transitions0_actions0(sub);&#xA;    _test__deposit_transitions0_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__deposit_transitions1_actions0(sub);&#xA;      fail(&quot;IllegalArgumentException should be thrown after deposit(-10000.0)&quot;);&#xA;    } catch (Exception e) {&#xA;      assertTrue(&quot;IllegalArgumentException should be thrown after deposit(-10000.0)&quot;, e instanceof IllegalArgumentException);&#xA;    }&#xA;    _test__deposit_transitions2_effects0_state(sub);&#xA;    &#xA;  }&#xA;  &#xA;  @JExercise(tests = &quot;SavingsAccount2(int,double)&quot;, description = &quot;Tests \n\t\tthe following sequence:\n\t\t&lt;ul>\n\t\t&lt;li>Setter inn og tar ut: deposit(20000.0), withdraw(5000.0)&lt;/li>\n\t\t&lt;li>Tester negativt bel\u00F8p: withdraw(-10000.0)&lt;/li>\n\t\t&lt;li>Tester for stort bel\u00F8p: withdraw(20000.0)&lt;/li>\n\t\t&lt;li>Tester fee: withdraw(10000.0)&lt;/li>\n\t\t&lt;li>Tester fee og withdrawals: withdraw(4930.0)&lt;/li>\n\t\t&lt;/ul>\n&quot;)&#xA;  public void testWithdraw() {&#xA;    _transition_exprAction__withdraw_transitions0_actions0(sub);&#xA;    _transition_exprAction__withdraw_transitions0_actions1(sub);&#xA;    _test__withdraw_transitions0_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__withdraw_transitions1_actions0(sub);&#xA;      fail(&quot;IllegalArgumentException should be thrown after withdraw(-10000.0)&quot;);&#xA;    } catch (Exception e) {&#xA;      assertTrue(&quot;IllegalArgumentException should be thrown after withdraw(-10000.0)&quot;, e instanceof IllegalArgumentException);&#xA;    }&#xA;    _test__withdraw_transitions2_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__withdraw_transitions3_actions0(sub);&#xA;      fail(&quot;IllegalStateException should be thrown after withdraw(20000.0)&quot;);&#xA;    } catch (Exception e_1) {&#xA;      assertTrue(&quot;IllegalStateException should be thrown after withdraw(20000.0)&quot;, e_1 instanceof IllegalStateException);&#xA;    }&#xA;    _test__withdraw_transitions4_effects0_state(sub);&#xA;    _transition_exprAction__withdraw_transitions5_actions0(sub);&#xA;    _test__withdraw_transitions5_effects0_state(sub);&#xA;    try {&#xA;      _transition_exprAction__withdraw_transitions6_actions0(sub);&#xA;      fail(&quot;IllegalStateException should be thrown after withdraw(4930.0)&quot;);&#xA;    } catch (Exception e_2) {&#xA;      assertTrue(&quot;IllegalStateException should be thrown after withdraw(4930.0)&quot;, e_2 instanceof IllegalStateException);&#xA;    }&#xA;    _test__withdraw_transitions7_effects0_state(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_source_state(final SavingsAccount2 it) {&#xA;    _test__deposit_transitions0_source_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_source_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 0.0 failed after deposit(10000.0)&quot;, 0.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__deposit_transitions0_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.deposit(10000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;deposit(10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_effects0_state(final SavingsAccount2 it) {&#xA;    _test__deposit_transitions0_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions0_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 10000.0 failed after deposit(10000.0)&quot;, 10000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__deposit_transitions1_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.deposit((-10000.0));&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;deposit(-10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions2_effects0_state(final SavingsAccount2 it) {&#xA;    _test__deposit_transitions2_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__deposit_transitions2_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 10000.0 failed&quot;, 10000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions0_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.deposit(20000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;deposit(20000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions0_actions1(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.withdraw(5000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(5000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions0_effects0_state(final SavingsAccount2 it) {&#xA;    _test__withdraw_transitions0_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions0_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 15000.0 failed after deposit(20000.0) ,withdraw(5000.0)&quot;, 15000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions1_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.withdraw((-10000.0));&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(-10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions2_effects0_state(final SavingsAccount2 it) {&#xA;    _test__withdraw_transitions2_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions2_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 15000.0 failed&quot;, 15000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions3_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.withdraw(20000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(20000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions4_effects0_state(final SavingsAccount2 it) {&#xA;    _test__withdraw_transitions4_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions4_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 15000.0 failed&quot;, 15000.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions5_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.withdraw(10000.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(10000.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions5_effects0_state(final SavingsAccount2 it) {&#xA;    _test__withdraw_transitions5_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions5_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 4950.0 failed after withdraw(10000.0)&quot;, 4950.0, _balance);&#xA;    &#xA;  }&#xA;  &#xA;  private void _transition_exprAction__withdraw_transitions6_actions0(final SavingsAccount2 it) {&#xA;    try {&#xA;      &#xA;      it.withdraw(4930.0);&#xA;      } catch (junit.framework.AssertionFailedError error) {&#xA;      fail(&quot;withdraw(4930.0) failed: &quot; + error.getMessage());&#xA;    }&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions7_effects0_state(final SavingsAccount2 it) {&#xA;    _test__withdraw_transitions7_effects0_state_objectTests0_test(sub);&#xA;    &#xA;  }&#xA;  &#xA;  private void _test__withdraw_transitions7_effects0_state_objectTests0_test(final SavingsAccount2 it) {&#xA;    &#xA;    double _balance = it.getBalance();&#xA;    assertEquals(&quot;getBalance() == 4950.0 failed&quot;, 4950.0, _balance);&#xA;    &#xA;  }" edit="/1/@proposals.0/@proposals.5/@attempts.6/@edit" start="29" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936150717" sizeMeasure="-1" errorCount="-1" warningCount="-1"/>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936229911" sizeMeasure="30">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount2 extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;int with;&#xA;&#x9;double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int with, double fee) {&#xA;&#x9;&#x9;this.with = with;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if(with&lt;0){&#xA;&#x9;&#x9;&#x9;if(fee&lt;balance){&#xA;&#x9;&#x9;&#x9;&#x9;balance-=fee;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(balance>amount){&#xA;&#x9;&#x9;&#x9;balance-=amount;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;with--;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936264882" sizeMeasure="30">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.5/@attempts.9/@edit" start="262" end="-287"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936275384" sizeMeasure="30" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt;=" edit="/1/@proposals.0/@proposals.5/@attempts.10/@edit" start="262" end="-286"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="272" charEnd="279" severity="2" problemCategory="40" problemType="16777233"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="276" charEnd="277" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936292260" sizeMeasure="30">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.5/@attempts.11/@edit" start="263" end="-286"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936299411" sizeMeasure="30">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=1" edit="/1/@proposals.0/@proposals.5/@attempts.12/@edit" start="539" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936383746" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(with);" edit="/1/@proposals.0/@proposals.5/@attempts.13/@edit" start="534" end="-19"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936399870" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.5/@attempts.14/@edit" start="263" end="-315"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936477397" sizeMeasure="32">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0){&#xA;&#x9;&#x9;&#x9;if(fee&lt;balance){&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(balance);" edit="/1/@proposals.0/@proposals.5/@attempts.15/@edit" start="263" end="-292"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936495469" sizeMeasure="32">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.5/@attempts.16/@edit" start="263" end="-348"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936521621" sizeMeasure="33">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0){&#xA;&#x9;&#x9;&#x9;System.out.println(balance);" edit="/1/@proposals.0/@proposals.5/@attempts.17/@edit" start="263" end="-345"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936588410" sizeMeasure="33">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.5/@attempts.18/@edit" start="263" end="-380"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936592847" sizeMeasure="33">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="with" edit="/1/@proposals.0/@proposals.5/@attempts.19/@edit" start="290" end="-347"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936631513" sizeMeasure="33">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Test&quot; + " edit="/1/@proposals.0/@proposals.5/@attempts.20/@edit" start="290" end="-351"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936654784" sizeMeasure="34">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;with-=1;&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(with);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.21/@edit" start="519" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936674224" sizeMeasure="34">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.5/@attempts.22/@edit" start="263" end="-390"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936704916" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(with);&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.23/@edit" start="530" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936722896" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.5/@attempts.24/@edit" start="263" end="-394"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936829593" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-" edit="/1/@proposals.0/@proposals.5/@attempts.25/@edit" start="525" end="-132"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936832232" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.5/@attempts.26/@edit" start="526" end="-131"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936872108" sizeMeasure="36">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(amount + &quot; &quot; + balance + &quot; &quot; + with );" edit="/1/@proposals.0/@proposals.5/@attempts.27/@edit" start="255" end="-405"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489936929190" sizeMeasure="36">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance>amount){&#xA;&#x9;&#x9;&#x9;if(with&lt;=0){&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;Test&quot; + with);&#xA;&#x9;&#x9;&#x9;&#x9;if(fee&lt;balance){&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;System.out.println(balance);&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;balance-=fee;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Withdrawing more than your balance&quot;);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.28/@edit" start="318" end="-161"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489937012970" sizeMeasure="38">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(balance&lt;0){&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.29/@edit" start="715" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489937191857" sizeMeasure="29">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(with&lt;=0){&#xA;&#x9;&#x9;&#x9;if(fee+amount&lt;balance){&#xA;&#x9;&#x9;&#x9;&#x9;balance-=fee+amount;&#xA;&#x9;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}else{&#xA;&#x9;&#x9;&#x9;if(amount&lt;balance){&#xA;&#x9;&#x9;&#x9;&#x9;balance-=amount;&#xA;&#x9;&#x9;&#x9;&#x9;with--;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.30/@edit" start="255" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1489937201732" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else{&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException()" edit="/1/@proposals.0/@proposals.5/@attempts.31/@edit" start="443" end="-18"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489935168264" completion="1.0" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489935612712" completion="0.6666666666666666" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489935676845" completion="1.0" successCount="3">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testSetCreditLine</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936193068" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936234909" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936269836" completion="0.5" successCount="1" errorCount="1">
          <successTests>testDeposit</successTests>
          <errorTests>testWithdraw</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936280218" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936305315" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936390304" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936407147" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936484432" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936498353" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936528486" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936598921" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936635917" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936661736" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936676768" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936712132" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936728081" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936842524" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936882114" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489936934881" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489937018119" completion="0.5" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1489937210622" completion="1.0" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
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
