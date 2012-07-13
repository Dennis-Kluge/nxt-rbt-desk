
window.onload = ->
  sigRoot = document.getElementById('graph');
  # // var sigRoot = document.body;
  sigInst = sigma.init(sigRoot) .drawingProperties({
        defaultLabelColor: '#fff',
        defaultLabelSize: 14,
        defaultLabelBGColor: '#fff',
        defaultLabelHoverColor: '#000',
        labelThreshold: 6,
        defaultEdgeType: 'curve',
        edgeColor: '#000000'
      }).graphProperties({
        minNodeSize: 0.5,
        maxNodeSize: 5,
        minEdgeSize: 1,
        maxEdgeSize: 4
      }).mouseProperties({
        maxRatio: 4
      });

  
  for waypoint in gon.waypoints
    sigInst.addNode(waypoint.id,{
      label: waypoint.waypoint_id,
      color: '#ff0000',
      x: waypoint.x,
      y: waypoint.y
    })
    
  for edge in gon.edges
    edge_name = edge.waypoint_id + '_' + edge.sibling_id
    sigInst.addEdge(edge_name,edge.waypoint_id, edge.sibling_id)
    
  console.log(gon.edges)
  
  
  sigInst.draw()