# Design-for-testability
This repository contains verilog code for various faulty circuits to check their behaviour.
# Fault Abstraction
Faults are potential defects that engineers simulate using fault models to create test patterns. These
patterns help detect and address faulty circuits.
As defects occur in a circuit, their effects may be seen at various levels of abstraction. For
example, a physical defect of a short between an NMOS transistor gate and its source may be seen
at the switch, gate, RT, or system-level.
# Switch/Transistor level
Consider an NMOS and PMOS whose input is same, output is collected at shorted drain region of
both the MOSFETs. Such a circuit, called an inverter
Inverter_transistor is implemented in this logic.
# Gate Level
We utilize these transistors/switches in such a way that they form a logic gate which is base for
any digital electronic circuit. If there is a fault at the transistor level then it is evident that our logic
gate will also be faulty.
# Circuit level
Consider a digital circuit that has a single output which is selected from one of the inputs, known
as Multiplexer or MUX.
Usually, MUX is made up of inverter, AND, OR logic gates. From our previous understanding,
faulty inverter logic gate which has been utilized in any digital circuit will result in an another
fault at the output of that digital circuit.
# System Level
Consider  a partial datapath of a CPU. The datapath section includes an ALU, an accumulator, three buses, and a multiplexer that we assume is the defective multiplexer  . Let
us assume that instruction ’lda’ followed by ’add’, as described below, are to be executed in this
datapath.
lda : AC <– ABus
add : AC <– ABus + AC


