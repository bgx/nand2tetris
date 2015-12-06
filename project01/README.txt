BOOLEAN LOGIC

Starting with one primitive logic gate - Nand - build a set of elementary logic gates with HDL.

******************************

The goal of this project is to implement all the logic gates presented in the chapter as chip designs (modified .hdl programs).  Chip Xxx is implemented with file Xxx.hdl

"Built-in chip" Definition
- Is supplied with the hardware simulator
- Has an HDL interface but is implemented as an executable Java class

The Nand chip is the foundation of all combinatorial chips and is only available as a built-in chip.

If chip Yyy is used in the implementation of chip Xxx, then when chip Xxx is loaded into the hardware simulator:
if Yyy.hdl exists in the current directory, it will be used
if it does not, the built-in chip implementation of Yyy will be used
(Essentially.) - see "Appendix A: Hardware Description Language" in book for more info

------------------------

So:
\Chips - permanent home for the Xxx.hdl chip designs that must be implemented for project01
\TestFiles - permanent home for the Xxx.tst test scripts and Xxx.cmp comparison files used to test the Xxx.hdl chip designs
\Workspace - where the Chips files and TestFiles files are copied to and collected together before using the hardware simulator

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
