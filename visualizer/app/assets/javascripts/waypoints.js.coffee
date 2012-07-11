
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
        minNodeSize: 1,
        maxNodeSize: 5,
        minEdgeSize: 1,
        maxEdgeSize: 1
      }).mouseProperties({
        maxRatio: 4
      });
  # sigInst.addNode('hello',{
  #   label: 'Hello',
  #   color: '#ff0000',
  #   x: '10',
  #   y: '10'
  # }).addNode('world',{
  #   label: 'World !',
  #   color: '#00ff00',
  #   x: '-10',
  #   y: '-10'
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
  console.log(gon.waypoints[2].x)
  
  for waypoint in gon.waypoints
    sigInst.addNode(waypoint.id,{
      label: waypoint.id,
      color: '#ff0000',
      x: waypoint.x,
      y: waypoint.y
    })
  
  
  
  sigInst.draw()