
# svgContainer = d3.select('body').append('svg').attr('width', 1000).attr('height', 1000)

# # lineChart()
# data = []
# i = 1
# while i <= Math.E
#   data.push
#     x: i
#     y: Math.log(i)
#   i += 0.01
# data = [ {
#   key: 'y = log(x)'
#   values: data
# } ]

# nv.addGraph ->
#   chart = nv.models.lineChart().showLegend(false).showYAxis(true).showXAxis(true)
#   chart.xAxis.axisLabel('x').tickFormat d3.format('.2f')
#   chart.yAxis.axisLabel('y').tickFormat d3.format('.2f')
#   d3.select('svg').attr('width', 1000).attr('height', 1000)
#   d3.select('svg').datum(data).call chart
#   nv.utils.windowResize ->
#     chart.update()
#     return
#   chart
