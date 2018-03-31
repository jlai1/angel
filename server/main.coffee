import { Meteor } from 'meteor/meteor'
import { HTTP } from 'meteor/http'
import { Mongo } from 'meteor/mongo'

brain = ""
net = ""

# Todos = new Mongo.Collection('todos');
# Todos.insert({_id: 'my-todo'});
# todo = Todos.findOne({_id: 'my-todo'});
# console.log(todo);

mlTrainingData = [
  {"input":{"dividendYield":0.0083102494,"roe":-0.0537},"output":{"risk":1}},
  {"input":{"dividendYield":0,"roe":0.0683},"output":{"watch":1}},
  {"input":{"dividendYield":0.0025169104,"roe":0.1435},"output":{"watch":1}},
  {"input":{"dividendYield":0,"roe":0.0692},"output":{"risk":1}},
  {"input":{"dividendYield":0.017651957,"roe":-0.0741},"output":{"risk":1}},
  {"input":{"dividendYield":0.005449591,"roe":0.2386},"output":{"risk":1}},
  {"input":{"dividendYield":0.0057908386,"roe":0.0008},"output":{"risk":1}},
  {"input":{"dividendYield":0.0020526856,"roe":0.006},"output":{"risk":1}},
  {"input":{"dividendYield":0.010626992,"roe":-0.4604},"output":{"risk":1}},
  {"input":{"dividendYield":0,"roe":0.31120000000000003},"output":{"watch":1}},
  {"input":{"dividendYield":0.012410797,"roe":-0.1961},"output":{"risk":1}},
  {"input":{"dividendYield":0.08410797,"roe":0.1061},"output":{"recommend":1}},
  {"input":{"dividendYield":0.15410797,"roe":0.1861},"output":{"recommend":1}}
]


mlTestData = [
  {"dividendYield":0,"roe":0.0907}
  {"dividendYield":0.017278713,"roe":0.22089999999999999}
  {"dividendYield":0.054200543999999996,"roe":0.10339999999999999}
  {"dividendYield":0.032291666999999996,"roe":0.23870000000000002}
  {"dividendYield":0.033118675,"roe":0.2933}
  {"dividendYield":0.031612225,"roe":0.4861}
  {"dividendYield":0.0077821010000000005,"roe":-0.11460000000000001}
  {"dividendYield":0.020344427,"roe":4.2154}
  {"dividendYield":0.015955174000000003,"roe":0.2822}
  {"dividendYield":0.014322543,"roe":0.1204}
  {"dividendYield":0.02379182,"roe":1.6431}
  {"dividendYield":0.012692368999999998,"roe":0.38530000000000003}
  {"dividendYield":0.01615517,"roe":0.20190000000000002}
  {"dividendYield":0.009577015,"roe":0.1736}
  {"dividendYield":0.0013300084,"roe":0.1093}
  {"dividendYield":0,"roe":-0.2429}
  {"dividendYield":0.020500805,"roe":0.175}
  {"dividendYield":0.014176020000000001,"roe":0.2685}
  {"dividendYield":0.031604939,"roe":0.0701}
  {"dividendYield":0.019516335,"roe":0.3617}
  {"dividendYield":0.012588041000000001,"roe":0.2262}
  {"dividendYield":0.0073569983000000005,"roe":0.1867}
  {"dividendYield":0.02475949,"roe":1.6778}
  {"dividendYield":0.01632209,"roe":0.2439}
  {"dividendYield":0.006841115399999999,"roe":0.4677}
  {"dividendYield":0.02039111,"roe":0.2736}
  {"dividendYield":0.007649939,"roe":0.2519}
  {"dividendYield":0,"roe":0.2238}
  {"dividendYield":0.026132772000000002,"roe":0.1974}
  {"dividendYield":0.027162679999999998,"roe":0.3002}
  {"dividendYield":0.048318906,"roe":-0.823}
  {"dividendYield":0.007657334,"roe":0.4403}
  {"dividendYield":0.015968318999999998,"roe":0.5367000000000001}
  {"dividendYield":0.02676182,"roe":0.48869999999999997}
  {"dividendYield":0,"roe":0.3287}
  {"dividendYield":0.012370496,"roe":0.3211}
  {"dividendYield":0.018728346,"roe":0.0227}
  {"dividendYield":0.00104435004,"roe":0.10550000000000001}
  {"dividendYield":0,"roe":0.1609}
  {"dividendYield":0.018439978,"roe":0.1537}
  {"dividendYield":0,"roe":0.071}
  {"dividendYield":0,"roe":0.071}
  {"dividendYield":0.023650386000000002,"roe":0.22010000000000002}
  {"dividendYield":0,"roe":0.2133}
  {"dividendYield":0,"roe":0.1225}
  {"dividendYield":0,"roe":-0.9706}
  {"dividendYield":0,"roe":0.26530000000000004}
  {"dividendYield":0.015350435,"roe":0.19}
  {"dividendYield":0.010409436999999999,"roe":-0.0654}
  {"dividendYield":0,"roe":0.042199999999999994}
  {"dividendYield":0.0039447729999999995,"roe":0.154}
  {"dividendYield":0.01823775,"roe":0.2594}
  {"dividendYield":0.016432729,"roe":0.0974}
  {"dividendYield":0.018000828,"roe":0.1193}
  {"dividendYield":0.020660229000000002,"roe":0.13720000000000002}
  {"dividendYield":0.030639198,"roe":0.1174}
  {"dividendYield":0.015662875,"roe":0.11789999999999999}
  {"dividendYield":0.015665796,"roe":0.1159}
  {"dividendYield":0.01976593,"roe":0.2888}
  {"dividendYield":0.0094715315,"roe":0.4796}
  {"dividendYield":0.011881880000000001,"roe":0.07769999999999999}
  {"dividendYield":0.04913076399999999,"roe":0.1363}
  {"dividendYield":0.034490583,"roe":0.0702}
  {"dividendYield":0.0020700362,"roe":0.1161}
  {"dividendYield":0,"roe":0.057999999999999996}
  {"dividendYield":0.028534372000000002,"roe":0.2596}
  {"dividendYield":0,"roe":0.2732}
  {"dividendYield":0,"roe":0.44520000000000004}
  {"dividendYield":0.02632245,"roe":0.5562}
  {"dividendYield":0,"roe":-0.1454}
  {"dividendYield":0,"roe":0.2425}
  {"dividendYield":0,"roe":0.139}
  {"dividendYield":0.019321394999999998,"roe":0.2002}
  {"dividendYield":0.012238654,"roe":0.0683}
  {"dividendYield":0.0075258700000000005,"roe":1.3044}
  {"dividendYield":0.008573178,"roe":0.2234}
  {"dividendYield":0.023025725,"roe":0.275}
  {"dividendYield":0.011328236,"roe":0.18280000000000002}
  {"dividendYield":0.026130651999999997,"roe":0.0723}
  {"dividendYield":0.009178322,"roe":-4.2412}
  {"dividendYield":0,"roe":0.0217}
  {"dividendYield":0.014844487,"roe":0.1841}
  {"dividendYield":0,"roe":0.153}
  {"dividendYield":0,"roe":0.153}
  {"dividendYield":0,"roe":0.2073}
  {"dividendYield":0.013656538000000001,"roe":0.25980000000000003}
  {"dividendYield":0.017490494000000002,"roe":0.1611}
  {"dividendYield":0.023696682,"roe":0.3635}
  {"dividendYield":0.014937316,"roe":0.21230000000000002}
  {"dividendYield":0.012560662,"roe":0.0946}
  {"dividendYield":0.012081672000000002,"roe":3.7862}
  {"dividendYield":0.028382676,"roe":0.1501}
  {"dividendYield":0,"roe":0.34850000000000003}
  {"dividendYield":0.015488078999999998,"roe":0.1834}
  {"dividendYield":0.013845620999999999,"roe":0.1295}
  {"dividendYield":0.02153878,"roe":-0.8905}
  {"dividendYield":0.018566552,"roe":0.2955}
  {"dividendYield":0.014718766000000001,"roe":0.06309999999999999}
  {"dividendYield":0.008625647,"roe":0.0669}
  {"dividendYield":0,"roe":0.08259999999999999}
  {"dividendYield":0.01832061,"roe":0.0564}
  {"dividendYield":0.013089005,"roe":0.1844}
  {"dividendYield":0.0076269716,"roe":0.10220000000000001}
  {"dividendYield":0.0074643576,"roe":0.08410000000000001}
  {"dividendYield":0.032924469,"roe":0.1979}
  {"dividendYield":0.013865503999999999,"roe":0.22039999999999998}
  {"dividendYield":0.036418817,"roe":-0.8136}
  {"dividendYield":0.015175946000000001,"roe":0.0703}
  {"dividendYield":0.017389144000000002,"roe":0.203}
  {"dividendYield":0.04610951,"roe":0.14429999999999998}
  {"dividendYield":0.01524003,"roe":0.14980000000000002}
  {"dividendYield":0,"roe":0.182}
  {"dividendYield":0.0075261426,"roe":0.2632}
  {"dividendYield":0.00038737167000000005,"roe":0.0848}
  {"dividendYield":0,"roe":0.1057}
  {"dividendYield":0.05615470400000001,"roe":0.17379999999999998}
  {"dividendYield":0.028560402,"roe":0.5683}
  {"dividendYield":0.011052233,"roe":0.5078}
  {"dividendYield":0.009562339,"roe":0.2459}
  {"dividendYield":0,"roe":0.1328}
  {"dividendYield":0.015389546999999998,"roe":0.0756}
  {"dividendYield":0.01665799,"roe":0.0677}
  {"dividendYield":0.012897679,"roe":0.1001}
  {"dividendYield":0.019881068,"roe":0.10980000000000001}
  {"dividendYield":0.021060020000000002,"roe":0.1331}
  {"dividendYield":0.024940047,"roe":0.10880000000000001}
  {"dividendYield":0.02015648,"roe":0.042}
  {"dividendYield":0.022990866,"roe":0.2132}
  {"dividendYield":0.010095974,"roe":0.24309999999999998}
  {"dividendYield":0.025387154000000002,"roe":0.1424}
  {"dividendYield":0.021033258,"roe":0.1392}
  {"dividendYield":0.031874526,"roe":0.10640000000000001}
  {"dividendYield":0.036762526000000004,"roe":0.1065}
  {"dividendYield":0.034721348,"roe":0.0864}
  {"dividendYield":0.040558332999999995,"roe":0.1373}
  {"dividendYield":0.045120405999999995,"roe":0.0519}
  {"dividendYield":0.039400846999999996,"roe":0.1188}
  {"dividendYield":0.045512657,"roe":-0.09359999999999999}
  {"dividendYield":0.04788826,"roe":-0.5607}
  {"dividendYield":0.05083655,"roe":0.1462}
  {"dividendYield":0.034331337999999996,"roe":0.0391}
  {"dividendYield":0.051739516,"roe":0.022400000000000003}
  {"dividendYield":0.034732044000000004,"roe":0.10679999999999999}
  {"dividendYield":0.0032757968,"roe":0.18030000000000002}
  {"dividendYield":0.0047872340000000005,"roe":0.15460000000000002}
  {"dividendYield":0.028490028,"roe":0.17809999999999998}
  {"dividendYield":0.026248140000000003,"roe":0.1864}
  {"dividendYield":0.01606387,"roe":0.35450000000000004}
  {"dividendYield":0.008276163,"roe":0.2545}
  {"dividendYield":0.017888055,"roe":0.157}
  {"dividendYield":0.011933174,"roe":0.12359999999999999}
  {"dividendYield":0.015972847,"roe":0.1808}
  {"dividendYield":0.020181339,"roe":0.105}
  {"dividendYield":0,"roe":-0.0167}
  {"dividendYield":0.019259092,"roe":0.2597}
  {"dividendYield":0.027573528,"roe":-0.1215}
  {"dividendYield":0.0067429507,"roe":0.0098}
  {"dividendYield":0.018045112999999998,"roe":0.4362}
  {"dividendYield":0.0036737692,"roe":0.0337}
  {"dividendYield":0.0082123035,"roe":0.11810000000000001}
  {"dividendYield":0.038564786999999996,"roe":0.0711}
  {"dividendYield":0.010698048,"roe":0.1042}
  {"dividendYield":0.0096661365,"roe":-1.1706999999999999}
  {"dividendYield":0.018666339,"roe":0.0458}
  {"dividendYield":0.009232154999999999,"roe":2.7225}
  {"dividendYield":0.02346041,"roe":0.4514}
  {"dividendYield":0.017768301,"roe":0.24050000000000002}
  {"dividendYield":0.010494449999999999,"roe":0.2235}
  {"dividendYield":0,"roe":0.1784}
  {"dividendYield":0.034444966,"roe":0.12710000000000002}
  {"dividendYield":0.032291666999999996,"roe":0.23870000000000002}
  {"dividendYield":0.007539583,"roe":0.0076}
  {"dividendYield":0.015353535,"roe":0.17379999999999998}
  {"dividendYield":0.02547365,"roe":0.2783}
  {"dividendYield":0.02587215,"roe":0.1659}
  {"dividendYield":0,"roe":0.23}
  {"dividendYield":0,"roe":0.18760000000000002}
  {"dividendYield":0.0081804514,"roe":0.4401}
  {"dividendYield":0,"roe":0.2242}
  {"dividendYield":0.01903467,"roe":0.0796}
  {"dividendYield":0.0083089364,"roe":0.1508}
  {"dividendYield":0.0031397173,"roe":0.304}
  {"dividendYield":0.00936494,"roe":0.1137}
  {"dividendYield":0.013174652,"roe":0.1001}
  {"dividendYield":0,"roe":0.1198}
  {"dividendYield":0.00563437,"roe":0.0981}
  {"dividendYield":0,"roe":0.2545}
  {"dividendYield":0,"roe":0.30670000000000003}
  {"dividendYield":0,"roe":89.0353}
  {"dividendYield":0,"roe":0.172}
  {"dividendYield":0.02305159,"roe":0.2157}
  {"dividendYield":0.021533060000000003,"roe":0.0987}
  {"dividendYield":0.003549246,"roe":0.1707}
  {"dividendYield":0.015948963,"roe":0.1844}
  {"dividendYield":0.011881438,"roe":0.1801}
  {"dividendYield":0.0028548318000000002,"roe":0.10039999999999999}
  {"dividendYield":0,"roe":0.1543}
  {"dividendYield":0.0078624076,"roe":0.0646}
  {"dividendYield":0,"roe":0.10679999999999999}
  {"dividendYield":0,"roe":-0.3661}
  {"dividendYield":0.0034290612,"roe":0.15259999999999999}
  {"dividendYield":0.062605753,"roe":0.0721}
  {"dividendYield":0.057632684999999996,"roe":0.1104}
  {"dividendYield":0.05882353,"roe":0.0653}
  {"dividendYield":0,"roe":0.0897}
  {"dividendYield":0,"roe":0.128}
  {"dividendYield":0.017711306,"roe":0.1419}
  {"dividendYield":0,"roe":0.2495}
  {"dividendYield":0.00025992028,"roe":0.127}
  {"dividendYield":0.0053199580000000005,"roe":-0.1002}
  {"dividendYield":0.027725939999999998,"roe":0.11349999999999999}
  {"dividendYield":0,"roe":0.15380000000000002}
  {"dividendYield":0.0042637864,"roe":0.1183}
  {"dividendYield":0,"roe":0.2969}
  {"dividendYield":0.029508197,"roe":0.2973}
  {"dividendYield":0,"roe":0.1549}
  {"dividendYield":0.018124427999999998,"roe":2.1053}
  {"dividendYield":0.016260163,"roe":0.5714}
  {"dividendYield":0.009632056,"roe":0.14279999999999998}
  {"dividendYield":0.0023101357,"roe":0.11470000000000001}
  {"dividendYield":0.010440834999999999,"roe":0.1413}
  {"dividendYield":0.039292731,"roe":0.08439999999999999}
  {"dividendYield":0.025828669999999998,"roe":0.11130000000000001}
  {"dividendYield":0.007147111,"roe":0.008}
  {"dividendYield":0.009443411,"roe":0.2734}
  {"dividendYield":0,"roe":0.1427}
  {"dividendYield":0.018819101,"roe":0.1663}
  {"dividendYield":0.019672687,"roe":0.807}
  {"dividendYield":0.017865897,"roe":0.20550000000000002}
  {"dividendYield":0.014531196,"roe":0.1804}
  {"dividendYield":0.025470332999999998,"roe":0.1636}
  {"dividendYield":0.015503876000000002,"roe":0.22010000000000002}
  {"dividendYield":0.023836548,"roe":1.6209}
  {"dividendYield":0.021441971999999997,"roe":-19.1452}
  {"dividendYield":0.034342359999999995,"roe":7.763400000000001}
  {"dividendYield":0.028518288,"roe":0.10439999999999999}
  {"dividendYield":0.017033356,"roe":0.2876}
  {"dividendYield":0.010425354,"roe":0.2407}
  {"dividendYield":0.020224051,"roe":0.14880000000000002}
  {"dividendYield":0.047101449999999996,"roe":-0.2531}
  {"dividendYield":0.0041811848,"roe":-0.7602}
  {"dividendYield":0.019225262,"roe":0.4547}
  {"dividendYield":0.025586354999999998,"roe":0.0898}
  {"dividendYield":0.018733891,"roe":0.25329999999999997}
  {"dividendYield":0.0059938972999999994,"roe":0.1167}
  {"dividendYield":0.022333236,"roe":0.3496}
  {"dividendYield":0.019189765,"roe":0.2817}
  {"dividendYield":0.023455314999999997,"roe":0.2267}
  {"dividendYield":0.018052621,"roe":0.1677}
  {"dividendYield":0.017272727,"roe":0.10529999999999999}
  {"dividendYield":0.0037599033,"roe":0.3091}
  {"dividendYield":0.021725295,"roe":0.2579}
  {"dividendYield":0.018296974,"roe":0.46270000000000006}
  {"dividendYield":0.019758507,"roe":0.15380000000000002}
  {"dividendYield":0.012569034,"roe":0.2082}
  {"dividendYield":0.018980477,"roe":0.1298}
  {"dividendYield":0.010218564000000001,"roe":0.1322}
  {"dividendYield":0.031116297,"roe":0.36469999999999997}
  {"dividendYield":0.028455941999999998,"roe":0.1184}
  {"dividendYield":0.010545588,"roe":0.31989999999999996}
  {"dividendYield":0.024420788,"roe":0.1162}
  {"dividendYield":0.018350868,"roe":0.27690000000000003}
  {"dividendYield":0.013636948,"roe":0.045}
  {"dividendYield":0.03233533,"roe":0.0443}
  {"dividendYield":0.035191956,"roe":0.0737}
  {"dividendYield":0.018335167,"roe":-0.3843}
  {"dividendYield":0.054200543999999996,"roe":0.10339999999999999}
  {"dividendYield":0.12442396,"roe":0.023399999999999997}
  {"dividendYield":0.045507135,"roe":0.6733}
  {"dividendYield":0,"roe":0.0907}
  {"dividendYield":0.009066183,"roe":0.09480000000000001}
  {"dividendYield":0,"roe":0.3148}
  {"dividendYield":0,"roe":0.044000000000000004}
  {"dividendYield":0,"roe":0.09029999999999999}
  {"dividendYield":0,"roe":0.14429999999999998}
  {"dividendYield":0,"roe":0.14429999999999998}
  {"dividendYield":0.021271207,"roe":0.43060000000000004}
  {"dividendYield":0,"roe":0.213}
  {"dividendYield":0,"roe":0.831}
  {"dividendYield":0,"roe":0.24280000000000002}
  {"dividendYield":0.011884028,"roe":0.0548}
  {"dividendYield":0,"roe":0.37200000000000005}
  {"dividendYield":0.009482706,"roe":0.9201}
  {"dividendYield":0.006160291,"roe":0.7143999999999999}
  {"dividendYield":0.012744941999999999,"roe":0.2325}
  {"dividendYield":0,"roe":0.1503}
  {"dividendYield":0.029559562,"roe":0.44530000000000003}
  {"dividendYield":0,"roe":0.0011}
  {"dividendYield":0.0063414633,"roe":0.1885}
  {"dividendYield":0,"roe":-0.3834}
  {"dividendYield":0.006495129,"roe":0.2462}
  {"dividendYield":0.033143940000000004,"roe":0.1935}
  {"dividendYield":0.005777215999999999,"roe":0.1478}
  {"dividendYield":0,"roe":0.0964}
  {"dividendYield":0.011671788999999998,"roe":0.1057}
  {"dividendYield":0.018142235,"roe":0.0946}
  {"dividendYield":0.010331646000000002,"roe":0.12119999999999999}
  {"dividendYield":0.016613578,"roe":0.4315}
  {"dividendYield":0.0080472106,"roe":0.1822}
  {"dividendYield":0.012468828000000001,"roe":1.0161}
  {"dividendYield":0.007108303,"roe":0.042}
  {"dividendYield":0,"roe":-0.08800000000000001}
  {"dividendYield":0.036778227999999996,"roe":0.6173}
  {"dividendYield":0.02466198,"roe":0.32159999999999994}
  {"dividendYield":0,"roe":-0.3105}
  {"dividendYield":0.02119143,"roe":0.12390000000000001}
  {"dividendYield":0,"roe":-0.2102}
  {"dividendYield":0.030001874,"roe":-0.0083}
  {"dividendYield":0.026411536,"roe":0.1568}
  {"dividendYield":0.024170158,"roe":0.08199999999999999}
  {"dividendYield":0.006504065,"roe":0.1097}
  {"dividendYield":0.015702338,"roe":0.10369999999999999}
  {"dividendYield":0,"roe":0.0158}
  {"dividendYield":0,"roe":0.3043}
  {"dividendYield":0,"roe":0.8619}
  {"dividendYield":0.010857763,"roe":0.10619999999999999}
  {"dividendYield":0.011675423,"roe":0.1176}
  {"dividendYield":0,"roe":0.1391}
  {"dividendYield":0.00018745020000000002,"roe":0.1674}
  {"dividendYield":0.005969704,"roe":0.1656}
  {"dividendYield":0.013121064,"roe":0.20800000000000002}
  {"dividendYield":0.01055409,"roe":0.07400000000000001}
  {"dividendYield":0.026833303000000003,"roe":0.2913}
  {"dividendYield":0.023482544,"roe":0.055099999999999996}
  {"dividendYield":0.015645372,"roe":0.0891}
  {"dividendYield":0.04092459,"roe":0.052199999999999996}
  {"dividendYield":0,"roe":0.0647}
  {"dividendYield":0.014321518,"roe":0.0562}
  {"dividendYield":0.032961094,"roe":0.08460000000000001}
  {"dividendYield":0.040555352999999995,"roe":0.1684}
  {"dividendYield":0.030220404,"roe":0.12279999999999999}
  {"dividendYield":0.033968437,"roe":0.1057}
  {"dividendYield":0.030969846,"roe":0.0906}
  {"dividendYield":0.03412347,"roe":0.07769999999999999}
  {"dividendYield":0.026144226000000003,"roe":0.16649999999999998}
  {"dividendYield":0.029081845,"roe":0.066}
  {"dividendYield":0,"roe":0.1222}
  {"dividendYield":0.035092148999999996,"roe":0.1041}
  {"dividendYield":0.055618615,"roe":0.0785}
  {"dividendYield":0.030779307,"roe":0.08869999999999999}
  {"dividendYield":0.031893687000000004,"roe":0.1058}
  {"dividendYield":0.028772378,"roe":0.018600000000000002}
  {"dividendYield":0.026158749999999998,"roe":0.0888}
  {"dividendYield":0.034042108,"roe":0.015}
  {"dividendYield":0.033370411,"roe":0.1784}
  {"dividendYield":0.039851977999999996,"roe":-0.0294}
  {"dividendYield":0.019354838,"roe":-0.0673}
  {"dividendYield":0.013549116000000002,"roe":0.022400000000000003}
  {"dividendYield":0.005109862,"roe":-0.06480000000000001}
  {"dividendYield":0.025650892,"roe":0.013300000000000001}
  {"dividendYield":0.014942529,"roe":0.0279}
  {"dividendYield":0.00339098,"roe":-0.1671}
  {"dividendYield":0.02120441,"roe":0.09880000000000001}

]


Meteor.methods 'createPlayer': ->
  # this method's function
  console.log "server: createPlayer xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"



console.log 'This code runs on server'
inputs = [
  {"dividendYield":20/100,"roe":20/100}
]

# Train ML
brain = require('brain')
net = new (brain.NeuralNetwork)
net.train(mlTrainingData)

# console.log "Predict result:"
# mlTestData.forEach (item) ->
#   console.log item 
#   console.log "Result is: -> "
#   console.log net.run(item)

result = net.run(inputs[0])
console.log "Final input result is:"
console.log result
console.log result.risk


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





# return


# Meteor.methods getGradedData: (input) ->
#   response = httpGetAsync(input)
#   console.log response
#   json = ''
#   return response


Meteor.methods trainML: (input) ->
  
  brain = require('brain')
  net = new (brain.NeuralNetwork)
  net.train(mlTrainingData)
  console.log "Predict result:"
  mlTestData.forEach (item) ->
    console.log item 
    console.log "Result is: -> "
    console.log net.run(item)

  result = net.run(input)
  console.log "Final input result is:"
  console.log result
  console.log result.risk
  return result

  # (height, handsome, rich, education)
  # 1        0          0     0  -> 0
  # 0        0          1     1  -> 0 (TSMC guy)
  # 1        1          0     1  -> 1 (Daniel)
  # 0        1          1     1  -> 1 
  # 1        0          0     1  -> 1 

  # (yield%, roe,      dividend%    relative 
  # 1        0          0               0      -> 0
  # 0        0          1               1      -> 0 (TSMC guy)
  # 1        1          0               1      -> 1 (Daniel)
  # 0        1          1               1      -> 1 
  # 1        0          0               1      -> 1 

  


  # net.train [
  #   {input: [1, 0, 0, 0], output: [ 0 ]}
  #   {input: [0, 0, 1, 1], output: [ 0 ]}
  #   {input: [1, 1, 0, 1], output: [ 1 ]}
  #   {input: [0, 1, 1, 1], output: [ 1 ]}
  #   {input: [1, 0, 0, 1], output: [ 1 ]}
  # ]






  # output = net.run([1, 0])
  # Prediction
  # (height, handsome, rich, education)
  # 1         1         0     0          -> 1
  # 1         0         1     0          -> 0
  # 0         0         0     0          -> 0
  # 1         1         1     1          -> 0
  # 1         0         0     1          -> ?

  # console.log "Predict result:" + net.run([1, 0, 0, 1])


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



Meteor.methods testServer: (input) ->
  return "testServer output"


Meteor.methods runMLQC: (input) ->
  console.log "running MLQC ***********"
  output = net.run(input)
  console.log output
  return output
  # return net
  # return "success runMLQC"

  # brain = require('brain')
  # net = new (brain.NeuralNetwork)

  # (yield%, roe,      dividend%    relative 
  # 1        0          0               0      -> 0
  # 0        0          1               1      -> 0 (TSMC guy)
  # 1        1          0               1      -> 1 (Daniel)
  # 0        1          1               1      -> 1 
  # 1        0          0               1      -> 1 


  # net.train [
  #   {input: [1, 0, 0, 0], output: [ 0 ]}
  #   {input: [0, 0, 1, 1], output: [ 0 ]}
  #   {input: [1, 1, 0, 1], output: [ 1 ]}
  #   {input: [0, 1, 1, 1], output: [ 1 ]}
  #   {input: [1, 0, 0, 1], output: [ 1 ]}
  # ]

  # a.push({input: { dividendYield: 0.03, roe: 0.7, price_current: 0.5, price_day50: 0.2 }, output: {watch: 1 }})

  # console.log "Predict result:"
  # mlTestData.forEach (test) ->
    # console.log test +" -> " + net.run(test)    

  # console.log net.run({"dividendYield":0,"roe":0.0907})

  # console.log "Predict result:" + net.run([1, 0, 0, 1])

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


  # return net.run(item)


  # ---
  # generated by js2coffee 2.2.0


Meteor.methods getTickerData: (quote_name, quote_tag) ->
  response = httpGetAsync(quote_name, quote_tag)
  console.log response
  json = ''
  return response

Meteor.methods getAlphavantageData: (quote_name, quote_tag) ->
  # response = httpGetAsync(quote_name, quote_tag)

  # console.log "loading: " + quote_name
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




#buggy bug below

Meteor.methods getIEXDataStats: (quote_name, quote_tag) ->

# response = httpGetAsync(quote_name, quote_tag)

  # console.log "loading: " + quote_name
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

#buggy bug above


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