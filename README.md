# VHDL Integer Range Error in Counter

This repository demonstrates a common error in VHDL code involving the incorrect specification of integer ranges.  The original code (`counter.vhdl`) contains a flaw in the definition of the `count` signal's range, which can lead to unexpected behavior or simulation failures when the counter value goes beyond the intended limits.

The corrected version (`counter_fixed.vhdl`) addresses the issue by providing a more robust range definition or using alternative approaches to manage counter overflow.

## Problem

The original VHDL code defines the `count` signal as an integer with a range of 0 to 15. However, if the counter is not properly managed, it can potentially increment beyond 15.  When this happens, the simulation might produce unexpected results or even crash. In synthesis,  this could lead to a non-functional or unpredictable result depending on synthesis tool and target device.

## Solution

The solution involves either ensuring that the counter never exceeds the defined range or expanding the range to be sufficient for the application's needs. It might also be necessary to include additional logic to handle potential overflow conditions. This is solved by using unsigned type instead of integer type which handles overflow/underflow gracefully.