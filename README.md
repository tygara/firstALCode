# First AL Program

## Process
During the design phase, I had to remember that each section (`.data`, `.bss`, `.text`) needs to be initialized and handled separately. I'm used to coding in higher-level languages where you can define and access data more freely, so designing the code with strict intention based on the current section was a challenge. However, after completing the lab, I see how this structure improves organization and makes it easier to identify where things might go wrong.

One of the main challenges I faced during the implementation phase was understanding how memory addressing and length calculations work in assembly. Specifically, it took time to grasp how equ $ - label determines the length of a string and how labels like line1 represent specific memory addresses. I also struggled with the structure of system calls and making sure each section of code referenced the correct data and length only once. Debugging assembler errors, such as label redefinitions, reinforced my understanding of labels and emphasized the importance of precision and structure in low-level programming. One area I also still find challenging is register usage/knowing which registers to use and when is something I’m continuing to learn, and so far, it’s been the hardest concept for me to master.

