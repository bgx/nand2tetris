SEQUENTIAL LOGIC

Starting with data-flip-flops (DFFs), build a set of registers, memory banks, and counter chips with HDL.

******************************

The goal of this project is to implement all the chips presented in the chapter using DFFs, the chips that you gradually build, and the combinatorial chips described in project01 and project02.  Chip Xxx is implemented with file Xxx.hdl

"Built-in chip" Definition
- Is supplied with the hardware simulator
- Has an HDL interface but is implemented as an executable Java class

The Nand chip is the foundation of all combinatorial chips and is only available as a built-in chip.

The Data Flip-Flop (DFF) gate is considered primitive and is only available as a built-in chip.

If chip Yyy is used in the implementation of chip Xxx, then when chip Xxx is loaded into the hardware simulator:
if Yyy.hdl exists in the current directory, it will be used
if it does not, the built-in chip implementation of Yyy will be used
(Essentially.) - see "Appendix A: Hardware Description Language" in book for more info

------------------------

So:
\Chips - permanent home for the Xxx.hdl chip designs that must be implemented for project03
\TestFiles - permanent home for the Xxx.tst test scripts and Xxx.cmp comparison files used to test the Xxx.hdl chip designs
\Workspace - where the Chips files and TestFiles files are copied to and collected together before using the hardware simulator

*Since large RAM chips contain tens of thousands of lower-level chips, and all these chips are kept in memory (as software objects) by the simulator, the simulator may run very slowly or even out of (real) memory space if built-in chips are not used.  For this reason, RAM512, RAM4K, and RAM16K are separated from the other chips, so that the Workspace can be more easily customized to use my implementations or the built-in implementations.

The batch files automate
- copying TestFiles files into the Workspace
- copying Chip files into the Workspace
- deleting Chip files from the Workspace

**An example of testing Xxx.hdl**
1. Write implementation of Xxx in the Chips\Xxx.hdl file
2. Copy TestFiles\Xxx.tst and TestFiles\Xxx.cmp to Workspace
3. Copy Xxx.hdl to Workspace
4. Copy any Yyy.hdl files to Workspace to use those implementations instead of the built-in chip implementations
4. Open the HardwareSimulator
5. File > Load Script: Load the Xxx.tst script
6. Run the Simulator.  Xxx.out will be compared to Xxx.cmp.  Observe whether or not the "End of script - Comparison ended successfully" message appears