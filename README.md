# GAP-Prime-Graph-Visualizer

 Computes and visualizes the [Prime Graph]([url](https://en.wikipedia.org/wiki/Prime_graph)) of any group representable in [GAP](https://en.wikipedia.org/wiki/Prime_graph)

 The prime graph of a group has a vertex for each prime number that divides the order (number of elements) of the given group, and an edge connecting each pair of prime numbers p  and q  for which there exists a group element with order pq .


## About The Project
Prime graphs of Groups are currently being classfied and researched. This project effieciently computes these graphs for visualization.

## Getting Started
Download the primegraphs.g file in a UNIX directory

### Prerequisites
* Unix or WSL command line interface
* GAP
* Digraphs package for GAP
* Graphviz
* pdfLatex (or some equivalent .tex hander) 
Note that you need to compile the kernel for packages you install to GAP.
### Setup
1. Download the .primegraphviz.g file
2. Navigate to your project directory with this file:
   `cd your_project`

## Usage
Run the following command to use. Replace "YOURGROUPCONSTRUCTOR() with any valid Group Constructor shown [here]([url](https://docs.gap-system.org/doc/ref/chap50.html)). (Examples below too)" :
   `gap -b -c "G:= YOURGROUPCONSTRUCTOR();" primegraphviz.g`

## Examples
Here are some common examples, and their outputs:
`gap -b -c "G:= SymmetricGroup(5);" primegraphviz.g`
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/36957fda-0509-4999-a879-6ecb1233e188" />
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/21cc900b-188b-4000-bced-0e1e6e7a9182" />

`gap -b -c "G:= CyclicGroup(210);" primegraphviz.g`
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/b5db2f0f-864d-4207-acb0-2e24316696e8" />
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/986969bb-b02d-4fb7-96ff-ba270abd8f52" />

`gap -b -c "G:= DihedralGroup(198);" primegraphviz.g`
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/6707adc2-8758-46b3-9fb8-a6c14e4c527c" />
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/9b52b755-c62d-4170-b26b-ae4b502d2407" />

`gap -b -c "G:= SmallGroup(210,5);" primegraphviz.g`
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/04585324-011b-4e5e-80ba-182b97dfddd0" />
<img width="1862" height="1044" alt="image" src="https://github.com/user-attachments/assets/49f36b3f-878b-4b2e-9c6c-1f5b19a5fe8f" />

## A Note on SmallGroups
Note that since SmallGroups was able to classfiy all groups of order <2000 (except 1024), that means this project is able to draw the prime graphs for (almost) every small finite group. See the final example above and read more about the SmallGroup() constructor [here]([url](https://docs.gap-system.org/pkg/smallgrp/doc/chap1.html))







## Improvements
- Better error handling when you enter a group constructor that isn't valid.
- Adding a feature that checks properties of the resulting graph, is complement, dual etc(ex: girth, diameter, etc)
- Storing data about the properties of Groups and properties of Graphs to obtain more classifications of these Prime Graphs.





