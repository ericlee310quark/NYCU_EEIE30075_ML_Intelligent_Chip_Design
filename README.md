# Machine Learning Intelligent Chip Design [NYCU:EEIE-535230] [English Class]
---
## Introduce
---
Hi! This is Eric's work in this class. The class mainly contain the concept of Machine Learning, Network on Chip (a.k.a NoC), Processor Element (PE) Design. To implement these topics, the class use SystemC language, Verilog and Platform Architect (PA) to evalutate the different multicore system design methods.

Labs will introduce how to manipulate these tools with FA unit and MAC unit as example.
In the howework and final project, thec class will ask us to build up a AlexNet from software level to hardware level. In the end, we will construct routers, controller, ROM, and Cores (Network Interface and PEs) to build up an AlexNet system. In the final Project, we will implement routers with Verilog and try to run Co-Sim in PA.

## Labs & Homeworks & Final Project
---
- Lab1 : Directly use SystemC (FA unit and MAC uint)
- Lab2 : Use Platform Architect with SystemC Project (MAC unit)
- Lab3 : Co-Sim on Platform Architect with Verilog-SystemC Project (MAC unit)
- HW1 : Implementation of AlexNet in SystemC
- HW2 : SystemC - Channel and Interface
- HW3 : Implement NoC by SystemC
- HW4 : Integrate PEs into a NoC
- Final Project: AlexNet on NoC (Run on Platform Architect, and do Co-Sim)

## Tips
---
To speed up simulation on SystemC, there are some tips that we can try.
1. Tryto use fast data type, such as fast_double.
2. In the inter-calculation, use c/c++ build-in data type or STL data type.
3. In the makefile, we can add "-O3" flag to optimize the compiled results.
4. Try to split the project by functions. Just test a unit of project once a time.

## Notes
---
I forget backup the implementation of Lab3. Therefore, there lacks a .xml file that describes the PA project.


