#Implement a data structure for graphs that allows modification (insertion, deletion).
#It should be possible to store values at edges and nodes.
#It might be easiest to use a dictionary of (node, edgelist) to do this.

using LightGraphs, Gadfly, GraphPlot

graph = SimpleGraph(5)
inp = "x"

function graphGraph(g)
    n=nv(g)
    gplothtml(graph, nodelabel=1:n)
end

function askInput(input="x") 
    while input ∉ ["e","v","g"]
        println("Please type v for Verticie, e for Edge, g to Graph")
        input = readline()
	global inp = input
    end
    return  inp
end

function addEdgeNode(graph)
    if inp == "e"
        println("Please enter a edge connection between nodes")
        println("\n", "Edge 1:")
        ed1 = parse(Int64, readline())
        println("\n", "Edge 2:")
        ed2 = parse(Int64, readline())
        add_edge!(graph, ed1,ed2)
    else
       println("Please enter number of vertices to add")
       vert = readline()
       add_vertices!(graph, parse(Int64,vert))
    end
end


while true  
    println("Graph Nodes:  ", 1:nv(graph))
    println("Graph Edges:  ", ne(graph))
    askInput()
	println(inp)  
    if inp ∈ ["v","e"]
        addEdgeNode(graph)
    else 
	graphGraph(graph)
    end 
end
