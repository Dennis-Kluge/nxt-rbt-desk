
window.onload = ->
  sigRoot = document.getElementById('graph');
  # // var sigRoot = document.body;
  sigInst = sigma.init(sigRoot) .drawingProperties({
        defaultLabelColor: '#fff',
        defaultLabelSize: 14,
        defaultLabelBGColor: '#fff',
        defaultLabelHoverColor: '#000',
        labelThreshold: 6,
        defaultEdgeType: 'curve'
      }).graphProperties({
        minNodeSize: 0.5,
        maxNodeSize: 5,
        minEdgeSize: 1,
        maxEdgeSize: 1
      }).mouseProperties({
        maxRatio: 4
      });
  # }).addEdge('hello_world','hello','world')
  
  # for waypoint in gon.waypoints
  #   sigInst.addNode(waypoint,{
  #     label: waypoint,
  #     color: '#ff0000',
  #     
  #   })
  # 
  # sigInst.addEdge('foo','1','2')
  # alert(gon.waypoints)
  
  for waypoint in gon.waypoints
    sigInst.addNode(waypoint.id,{
      label: waypoint.id,
      color: '#ff0000',
      x: waypoint.x,
      y: waypoint.y
    })
    
  for edge in gon.edges
    edge_name = edge.waypoint_id + '_' + edge.sibling_id
    sigInst.addEdge(edge_name,edge.waypoint_id, edge.sibling_id)
    
  console.log(gon.edges)
  
  
  sigInst.draw()