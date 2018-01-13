import { Meteor } from 'meteor/meteor'
import { HTTP } from 'meteor/http'

if Meteor.isServer
  console.log 'This code runs on server'


# callback = (err, result) ->
#   console.log "calling back here"
#   return

httpGetAsync = (quote_name, quote_tag) ->
  # console.log "quote_name: " + quote_name
  # console.log "quote_tag: " + quote_name
  https = require('https')
  username = '386d1d5eb6e8f42703ccadaa85559f6a'
  password = '13e98fa7327273cb3ee064fa939aed38'
  method = 'GET'
  url = 'https://api.intrinio.com'
  auth = 'Basic ' + new Buffer(username + ':' + password).toString('base64')

  response = HTTP.call(
    'GET', 
    'https://api.intrinio.com/data_point?identifier='+quote_name+'&item='+quote_tag
    auth:'386d1d5eb6e8f42703ccadaa85559f6a:13e98fa7327273cb3ee064fa939aed38'
    )

  return response






Meteor.methods 'createPlayer': ->
  # this method's function
  console.log "server: createPlayer"
# return


# Meteor.methods getGradedData: (input) ->
#   response = httpGetAsync(input)
#   console.log response
#   json = ''
#   return response


Meteor.methods trainML: ->
  brain = require('brain')
  net = new (brain.NeuralNetwork)
  # (height, handsome, rich, education)
  # 1        0          0     0  -> 0
  # 0        0          1     1  -> 0 (TSMC guy)
  # 1        1          0     1  -> 1 (Daniel)
  # 0        1          1     1  -> 1 
  # 1        0          0     1  -> 1 
  net.train [
    {input: [1, 0, 0, 0], output: [ 0 ]}
    {input: [0, 0, 1, 1], output: [ 0 ]}
    {input: [1, 1, 0, 1], output: [ 1 ]}
    {input: [0, 1, 1, 1], output: [ 1 ]}
    {input: [1, 0, 0, 1], output: [ 1 ]}
  ]






  # output = net.run([1, 0])
  # Prediction
  # (height, handsome, rich, education)
  # 1         1         0     0          -> 1
  # 1         0         1     0          -> 0
  # 0         0         0     0          -> 0
  # 1         1         1     1          -> 0
  # 1         0         0     1          -> ?

  console.log "Predict result:" + net.run([1, 0, 0, 1])

  # net.train [
  #   {input: [0, 0], output: [ 0 ]}
  #   {input: [1, 1], output: [ 0 ]}
  #   {input: [0, 1], output: [ 1 ]}
  #   {input: [1, 0], output: [ 1 ]}
  # ]
  # # output = net.run([1, 0])
  # console.log "ML result (1,0):" + net.run([1, 0])
  # console.log "ML result (0,1):" + net.run([0, 1])
  # console.log "ML result (1,1):" + net.run([1, 1])
  # console.log "ML result (0,0):" + net.run([0, 0])
  # [0.933]  

  # ---
  # generated by js2coffee 2.2.0


  return

  # ---
  # generated by js2coffee 2.2.0


Meteor.methods getTickerData: (quote_name, quote_tag) ->
  response = httpGetAsync(quote_name, quote_tag)
  console.log response
  json = ''
  return response

Meteor.methods getAlphavantageData: (quote_name, quote_tag) ->
  # response = httpGetAsync(quote_name, quote_tag)

  console.log "loading: " + quote_name
  # console.log "quote_tag: " + quote_name
  https = require('https')
  username = '386d1d5eb6e8f42703ccadaa85559f6a'
  password = '13e98fa7327273cb3ee064fa939aed38'
  method = 'GET'
  url = 'https://api.intrinio.com'
  auth = 'Basic ' + new Buffer(username + ':' + password).toString('base64')

  response = HTTP.call(
    'GET', 
    'https://www.alphavantage.co/query?function='+quote_tag+'&symbol='+quote_name+'&apikey=B7NKRNTKC6E68Z7J'
    )


  # console.log response
  json = ''
  return response


Meteor.methods getIEXDataStats: (quote_name, quote_tag) ->
# response = httpGetAsync(quote_name, quote_tag)

  console.log "loading: " + quote_name
  # console.log "quote_tag: " + quote_name
  # https = require('https')
  # username = '386d1d5eb6e8f42703ccadaa85559f6a'
  # password = '13e98fa7327273cb3ee064fa939aed38'
  # method = 'GET'
  # url = 'https://api.intrinio.com'
  # auth = 'Basic ' + new Buffer(username + ':' + password).toString('base64')

  response = HTTP.call(
    'GET', 
    'https://api.iextrading.com/1.0/stock/'+quote_name+'/'+quote_tag
    )

  # console.log response
  json = ''
  return response

Meteor.methods 'getTicker': (ticker_name) ->
  # this method's function
  console.log "server: getTicker"
  company = ""
  https = require('https')
  username = '386d1d5eb6e8f42703ccadaa85559f6a'
  password = '13e98fa7327273cb3ee064fa939aed38'
  auth = 'Basic ' + new Buffer(username + ':' + password).toString('base64')
  request = https.request({
    method: 'GET'
    host: 'api.intrinio.com'
    # path: '/companies?ticker=AAPL'
    # path: '/data_point?identifier=T&item=dividendyield'

    # https://api.intrinio.com/data_point?identifier=T&item=dividendyield
    # https://api.intrinio.com/data_point?identifier=AAPL&item=close_price
    path: '/data_point?identifier=AAPL&item=close_price'
    headers: 'Authorization': auth
  }
  , (response) ->
    json = ''
    response.on 'data', (chunk) ->
      json += chunk
      return
    response.on 'end', ->
      company = JSON.parse(json)
      console.log company
    return
  )
  request.end()



  console.log "ending: " + company
  return company
# return


	# ---
	# generated by js2coffee 2.2.0