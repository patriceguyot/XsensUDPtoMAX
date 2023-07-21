# XsensUDPtoMax

## Overview

This UDP datagram unpacker is a quick and easy way to use data from the mobile motion capture suit, Xsens MVN, in Max. It is recommended to use the Xsens MVN SDK for real-time applications. 

This update implements joint angle datagram parser in addition to the position datagram parser of the original version (Patrice Guyot, Euromov DHM, July 2023). 
 
The orginal version (`Xsens MVN datagram unpacker`) can be found here:
-  https://www.uio.no/ritmo/english/research/labs/fourms/software/XsensUDP/
-  https://iaspace.zhdk.ch/wiki/xsens-osc-to-max-msp/

and have been published in *Skogstad, S. A. V. D., Nymoen, K., de Quay, Y., & Jensenius, A. R. (2011). OSC Implementation and Evaluation of the Xsens MVN suit. In Proc. of NIME, 2011*.

### Original XsensUDP documentation 

As stand in the previous version: 

- "This a slow way of using the Xsens UDP datagram stream (mxj?). The Xsens network stream also experience heavy data frame losses. It is therefore recommended to use the Xsens MVN SDK for real time applications. However, this patch may be an easy starting point for using the Xsens data inside MAX MSP."

- "This version supports only Euler angles (for pose datagram), and it will only work correctly if MVN Studios network stream is configured to send data as Euler angles and on port 7000. If you want the data as quaternions or rotation matrixes you need to do minor changes in XsensUDP2.java file. For more information see Xsens docs, Xsens papers or contact savskogs. "


## Parser output and datagram specification

According to the nature of the datagram (pose or joint angle), `mxj XsensUDP` output the data with `outlet 1` (pose) or `outlet 2` (joint angle). 

The pose output has the following format: */Xsens/segID/type f1 f2 f3*, where segID is the segment ID, type is pos or rot and f1 to f3 are the data parameters. 

The joint angle output has the following format: */Xsens/parentSegID/localPointID/childSegID/localPointID/angle f1 f2 f3*, where we find the segment IDs (with local point ID) of the parent and the child, and f1, f2 and f3 as the angle parameters. 

SegID are the segments ID going from 1 to 23 (see the doc or the example patch).

Documentation about Xsens datagrams can be found here: 
- https://www.xsens.com/hubfs/Downloads/Manuals/MVN_real-time_network_streaming_protocol_specification.pdf



## Java in Max

According to the Max documentation (https://docs.cycling74.com/max8/refpages/mxj):

- The mxj object instantiate specially-written Java classes.

- Max includes a directory called "java-doc", which can be found in the Max application folder (on MacOS: /Applications/Max.app/Contents/Resources/C74/packages/max-mxj/java-doc). 

- `doc/tutorial` contains a step-by-step tutorial that leads you through the process of creating your first Java class to the application of advanced mxj programming techniques. The tutorial is in HTML format. 
