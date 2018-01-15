import { Template } from 'meteor/templating'
import { ReactiveVar } from 'meteor/reactive-var'
import { Session } from 'meteor/session'

import './main.html'

mlTrainingData = [
  {"input":{"dividendYield":0.0083102494,"roe":-0.0537},"output":{"risk":1}},
  {"input":{"dividendYield":0,"roe":0.0683},"output":{"monitor":1}},
  {"input":{"dividendYield":0.0025169104,"roe":0.1435},"output":{"monitor":1}},
  {"input":{"dividendYield":0,"roe":0.0692},"output":{"risk":1}},
  {"input":{"dividendYield":0.017651957,"roe":-0.0741},"output":{"risk":1}},
  {"input":{"dividendYield":0.005449591,"roe":0.2386},"output":{"risk":1}},
  {"input":{"dividendYield":0.0057908386,"roe":0.0008},"output":{"risk":1}},
  {"input":{"dividendYield":0.0020526856,"roe":0.006},"output":{"risk":1}},
  {"input":{"dividendYield":0.010626992,"roe":-0.4604},"output":{"risk":1}},
  {"input":{"dividendYield":0,"roe":0.31120000000000003},"output":{"monitor":1}},
  {"input":{"dividendYield":0.012410797,"roe":-0.1961},"output":{"risk":1}},
  {"input":{"dividendYield":0.08410797,"roe":0.1061},"output":{"buy":1}},
  {"input":{"dividendYield":0.15410797,"roe":0.1861},"output":{"buy":1}}
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

  
brain = require('brain')
net = new (brain.NeuralNetwork)
net.train(mlTrainingData)


Template.body.events 'click #run_ml_button': (event) ->
  # Run ML
  # runML(inputs[0])

  # alert "running ML: " + JSON.stringify(net.run(inputs[0]))
  quotes_position.forEach (quote) ->

    # alert "dividend: "
    try 
      dividend = parseFloat Session.get(quote.symbol).dividendYield
      # alert "dividend: " + dividend + ", roe: " + roe + ", " + JSON.stringify(ml_result)

      roe = parseFloat Session.get(quote.symbol).returnOnEquity
      inputs = [
        {"dividendYield":dividend/100,"roe":roe/100}
      ]
      ml_result = net.run(inputs[0])
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-secondary")
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-danger")
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-warning")
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-success")
      if Math.round(parseFloat(ml_result.risk)) is 1
        Session.set(quote.symbol+"_status", "Risk")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-danger")
        $(".status_button_"+quote.symbol).text("Risk")

      else if Math.round(parseFloat(ml_result.buy)) is 1
        Session.set(quote.symbol+"_status", "Buy")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-success")
        $(".status_button_"+quote.symbol).text("Buy")
      else if Math.round(parseFloat(ml_result.monitor)) is 1
        Session.set(quote.symbol+"_status", "Monitor")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-warning")
        $(".status_button_"+quote.symbol).text("Monitor")
      else 
        Session.set(quote.symbol+"_status", "Monitor")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-warning")
        $(".status_button_"+quote.symbol).text("Monitor")
    catch err
      console.log "error running ML"

  quotes_sp500.forEach (quote) ->
    try
      # alert "dividend: "
      dividend = parseFloat Session.get(quote.symbol).dividendYield
      # alert "dividend: " + dividend + ", roe: " + roe + ", " + JSON.stringify(ml_result)
      roe = parseFloat Session.get(quote.symbol).returnOnEquity
      inputs = [
        {"dividendYield":dividend/100,"roe":roe/100}
      ]
      ml_result = net.run(inputs[0])
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-secondary")
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-danger")
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-warning")
      $(".status_button_"+quote.symbol)[0].classList.remove("btn-outline-success")
      # alert "dividend: " + dividend + ", roe: " + roe + ", " + JSON.stringify(ml_result)
      if Math.round(parseFloat(ml_result.risk)) is 1
        Session.set(quote.symbol+"_status", "Risk")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-danger")
        $(".status_button_"+quote.symbol).text("Risk")
      else if Math.round(parseFloat(ml_result.buy)) is 1
        Session.set(quote.symbol+"_status", "Buy")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-success")
        $(".status_button_"+quote.symbol).text("Buy")
      else if Math.round(parseFloat(ml_result.monitor)) is 1
        Session.set(quote.symbol+"_status", "Monitor")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-warning")
        $(".status_button_"+quote.symbol).text("Monitor")
      else 
        Session.set(quote.symbol+"_status", "Monitor")
        $(".status_button_"+quote.symbol)[0].classList.add("btn-outline-warning")
        $(".status_button_"+quote.symbol).text("Monitor")
      # alert ml_result.risk + ",  " + ml_result.recommend + ", " + ml_result.watch
    catch err
      console.log "error running ML"

  # Meteor.call 'createPlayer'

# var obj = JSON.parse(jsonStr);
# obj['theTeam'].push({"teamId":"4","status":"pending"});
# jsonStr = JSON.stringify(obj);

quotes_position = [
  {'symbol': 'AMZN', 'position': 'long', 'size': '4', 'execPrice': '1190'}
  {'symbol': 'SPY', 'position': 'long', 'size': '15', 'execPrice': '268.25'}
  {'symbol': 'T', 'position': 'long', 'size': '130', 'execPrice': '38.045'}
  {'symbol': 'TGT', 'position': 'long', 'size': '76', 'execPrice': '66.125'}
]


quotes_sp500 = [
  {'symbol': 'IPG', 'name': 'Interpublic Group', 'category': 'Consumer Discretionary', 'subCategory': 'Advertising'}
  {'symbol': 'OMC', 'name': 'Omnicom Group', 'category': 'Consumer Discretionary', 'subCategory': 'Advertising'}
  {'symbol': 'ARNC', 'name': 'Arconic Inc', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'BA', 'name': 'Boeing Company', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'GD', 'name': 'General Dynamics', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'LLL', 'name': 'L-3 Communications Holdings', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'LMT', 'name': 'Lockheed Martin Corp.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'NOC', 'name': 'Northrop Grumman Corp.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'RTN', 'name': 'Raytheon Co.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'COL', 'name': 'Rockwell Collins', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'TXT', 'name': 'Textron Inc.', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'TDG', 'name': 'TransDigm Group', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'UTX', 'name': 'United Technologies', 'category': 'Industrials', 'subCategory': 'Aerospace & Defense'}
  {'symbol': 'DE', 'name': 'Deere & Co.', 'category': 'Industrials', 'subCategory': 'Agricultural & Farm Machinery'}
  {'symbol': 'ADM', 'name': 'Archer-Daniels-Midland Co', 'category': 'Consumer Staples', 'subCategory': 'Agricultural Products'}
  {'symbol': 'CHRW', 'name': 'C. H. Robinson Worldwide', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'EXPD', 'name': 'Expeditors International', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'FDX', 'name': 'FedEx Corporation', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'UPS', 'name': 'United Parcel Service', 'category': 'Industrials', 'subCategory': 'Air Freight & Logistics'}
  {'symbol': 'ALK', 'name': 'Alaska Air Group Inc', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'AAL', 'name': 'American Airlines Group', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'DAL', 'name': 'Delta Air Lines Inc.', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'LUV', 'name': 'Southwest Airlines', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'UAL', 'name': 'United Continental Holdings', 'category': 'Industrials', 'subCategory': 'Airlines'}
  {'symbol': 'FL', 'name': 'Foot Locker Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'GPS', 'name': 'Gap Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'LB', 'name': 'L Brands Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'ROST', 'name': 'Ross Stores', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'TJX', 'name': 'TJX Companies Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel Retail'}
  {'symbol': 'HBI', 'name': 'Hanesbrands Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'KORS', 'name': 'Michael Kors Holdings', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'NKE', 'name': 'Nike', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'RL', 'name': 'Polo Ralph Lauren Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'PVH', 'name': 'PVH Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'TPR', 'name': 'Tapestry, Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'TIF', 'name': 'Tiffany & Co.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'UA', 'name': 'Under Armour Class C', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'UAA', 'name': 'Under Armour Class A', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'VFC', 'name': 'V.F. Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Apparel, Accessories & Luxury Goods'}
  {'symbol': 'ADBE', 'name': 'Adobe Systems Inc', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'ANSS', 'name': 'ANSYS', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'ADSK', 'name': 'Autodesk Inc', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'CDNS', 'name': 'Cadence Design Systems', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'ORCL', 'name': 'Oracle Corp.', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'SYMC', 'name': 'Symantec Corp.', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'SNPS', 'name': 'Synopsys Inc.', 'category': 'Information Technology', 'subCategory': 'Application Software'}
  {'symbol': 'AMG', 'name': 'Affiliated Managers Group Inc', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'AMP', 'name': 'Ameriprise Financial', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'BK', 'name': 'The Bank of New York Mellon Corp.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'BLK', 'name': 'BlackRock', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'BEN', 'name': 'Franklin Resources', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'IVZ', 'name': 'Invesco Ltd.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'NTRS', 'name': 'Northern Trust Corp.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'STT', 'name': 'State Street Corp.', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'TROW', 'name': 'T. Rowe Price Group', 'category': 'Financials', 'subCategory': 'Asset Management & Custody Banks'}
  {'symbol': 'APTV', 'name': 'Aptiv Plc', 'category': 'Consumer Discretionary', 'subCategory': 'Auto Parts & Equipment'}
  {'symbol': 'BWA', 'name': 'BorgWarner', 'category': 'Consumer Discretionary', 'subCategory': 'Auto Parts & Equipment'}
  {'symbol': 'F', 'name': 'Ford Motor', 'category': 'Consumer Discretionary', 'subCategory': 'Automobile Manufacturers'}
  {'symbol': 'GM', 'name': 'General Motors', 'category': 'Consumer Discretionary', 'subCategory': 'Automobile Manufacturers'}
  {'symbol': 'AAP', 'name': 'Advance Auto Parts', 'category': 'Consumer Discretionary', 'subCategory': 'Automotive Retail'}
  {'symbol': 'ALXN', 'name': 'Alexion Pharmaceuticals', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'AMGN', 'name': 'Amgen Inc', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'BIIB', 'name': 'Biogen Inc.', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'CELG', 'name': 'Celgene Corp.', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'GILD', 'name': 'Gilead Sciences', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'INCY', 'name': 'Incyte', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'REGN', 'name': 'Regeneron', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'VRTX', 'name': 'Vertex Pharmaceuticals Inc', 'category': 'Health Care', 'subCategory': 'Biotechnology'}
  {'symbol': 'TAP', 'name': 'Molson Coors Brewing Company', 'category': 'Consumer Staples', 'subCategory': 'Brewers'}
  {'symbol': 'CBS', 'name': 'CBS Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Broadcasting'}
  {'symbol': 'ALLE', 'name': 'Allegion', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'AOS', 'name': 'A.O. Smith Corp', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'FAST', 'name': 'Fastenal Co', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'FBHS', 'name': 'Fortune Brands Home & Security', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'JCI', 'name': 'Johnson Controls International', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'MAS', 'name': 'Masco Corp.', 'category': 'Industrials', 'subCategory': 'Building Products'}
  {'symbol': 'CHTR', 'name': 'Charter Communications', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'CMCSA', 'name': 'Comcast Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DISCA', 'name': 'Discovery Communications-A', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DISCK', 'name': 'Discovery Communications-C', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DISH', 'name': 'Dish Network', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'SNI', 'name': 'Scripps Networks Interactive Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'TWX', 'name': 'Time Warner Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'VIAB', 'name': 'Viacom Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'DIS', 'name': 'The Walt Disney Company', 'category': 'Consumer Discretionary', 'subCategory': 'Cable & Satellite'}
  {'symbol': 'MGM', 'name': 'MGM Resorts International', 'category': 'Consumer Discretionary', 'subCategory': 'Casinos & Gaming'}
  {'symbol': 'WYNN', 'name': 'Wynn Resorts Ltd', 'category': 'Consumer Discretionary', 'subCategory': 'Casinos & Gaming'}
  {'symbol': 'CSCO', 'name': 'Cisco Systems', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'FFIV', 'name': 'F5 Networks', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'HRS', 'name': 'Harris Corporation', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'JNPR', 'name': 'Juniper Networks', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'MSI', 'name': 'Motorola Solutions Inc.', 'category': 'Information Technology', 'subCategory': 'Communications Equipment'}
  {'symbol': 'BBY', 'name': 'Best Buy Co. Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Computer & Electronics Retail'}
  {'symbol': 'FLR', 'name': 'Fluor Corp.', 'category': 'Industrials', 'subCategory': 'Construction & Engineering'}
  {'symbol': 'JEC', 'name': 'Jacobs Engineering Group', 'category': 'Industrials', 'subCategory': 'Construction & Engineering'}
  {'symbol': 'PWR', 'name': 'Quanta Services Inc.', 'category': 'Industrials', 'subCategory': 'Construction & Engineering'}
  {'symbol': 'CAT', 'name': 'Caterpillar Inc.', 'category': 'Industrials', 'subCategory': 'Construction Machinery & Heavy Trucks'}
  {'symbol': 'PCAR', 'name': 'PACCAR Inc.', 'category': 'Industrials', 'subCategory': 'Construction Machinery & Heavy Trucks'}
  {'symbol': 'MLM', 'name': 'Martin Marietta Materials', 'category': 'Materials', 'subCategory': 'Construction Materials'}
  {'symbol': 'VMC', 'name': 'Vulcan Materials', 'category': 'Materials', 'subCategory': 'Construction Materials'}
  {'symbol': 'GRMN', 'name': 'Garmin Ltd.', 'category': 'Consumer Discretionary', 'subCategory': 'Consumer Electronics'}
  {'symbol': 'AXP', 'name': 'American Express Co', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'HRB', 'name': 'Block H&R', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'COF', 'name': 'Capital One Financial', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'DFS', 'name': 'Discover Financial Services', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'NAVI', 'name': 'Navient', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'SYF', 'name': 'Synchrony Financial', 'category': 'Financials', 'subCategory': 'Consumer Finance'}
  {'symbol': 'FCX', 'name': 'Freeport-McMoRan Inc.', 'category': 'Materials', 'subCategory': 'Copper'}
  {'symbol': 'ADS', 'name': 'Alliance Data Systems', 'category': 'Information Technology', 'subCategory': 'Data Processing & Outsourced Services'}
  {'symbol': 'GPN', 'name': 'Global Payments Inc', 'category': 'Information Technology', 'subCategory': 'Data Processing & Outsourced Services'}
  {'symbol': 'PYPL', 'name': 'PayPal', 'category': 'Information Technology', 'subCategory': 'Data Processing & Outsourced Services'}
  {'symbol': 'M', 'name': 'Macy\'s Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Department Stores'}
  {'symbol': 'JWN', 'name': 'Nordstrom', 'category': 'Consumer Discretionary', 'subCategory': 'Department Stores'}
  # {'symbol': 'BF.B', 'name': 'Brown-Forman Corp.', 'category': 'Consumer Staples', 'subCategory': 'Distillers & Vintners'}
  {'symbol': 'STZ', 'name': 'Constellation Brands', 'category': 'Consumer Staples', 'subCategory': 'Distillers & Vintners'}
  {'symbol': 'LKQ', 'name': 'LKQ Corporation', 'category': 'Consumer Discretionary', 'subCategory': 'Distributors'}
  {'symbol': 'BAC', 'name': 'Bank of America Corp', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'C', 'name': 'Citigroup Inc.', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'CMA', 'name': 'Comerica Inc.', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'JPM', 'name': 'JPMorgan Chase & Co.', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'USB', 'name': 'U.S. Bancorp', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'WFC', 'name': 'Wells Fargo', 'category': 'Financials', 'subCategory': 'Diversified Banks'}
  {'symbol': 'DWDP', 'name': 'DowDuPont', 'category': 'Materials', 'subCategory': 'Diversified Chemicals'}
  {'symbol': 'EMN', 'name': 'Eastman Chemical', 'category': 'Materials', 'subCategory': 'Diversified Chemicals'}
  {'symbol': 'CTAS', 'name': 'Cintas Corporation', 'category': 'Industrials', 'subCategory': 'Diversified Support Services'}
  {'symbol': 'CVS', 'name': 'CVS Health', 'category': 'Consumer Staples', 'subCategory': 'Drug Retail'}
  {'symbol': 'WBA', 'name': 'Walgreens Boots Alliance', 'category': 'Consumer Staples', 'subCategory': 'Drug Retail'}
  {'symbol': 'LNT', 'name': 'Alliant Energy Corp', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'AEP', 'name': 'American Electric Power', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'ED', 'name': 'Consolidated Edison', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'D', 'name': 'Dominion Energy', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'DUK', 'name': 'Duke Energy', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'EIX', 'name': 'Edison Int\'l', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'ETR', 'name': 'Entergy Corp.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'FE', 'name': 'FirstEnergy Corp', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'PPL', 'name': 'PPL Corp.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'PEG', 'name': 'Public Serv. Enterprise Inc.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'SO', 'name': 'Southern Co.', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'WEC', 'name': 'Wec Energy Group Inc', 'category': 'Utilities', 'subCategory': 'Electric Utilities'}
  {'symbol': 'AYI', 'name': 'Acuity Brands Inc', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'AME', 'name': 'AMETEK Inc', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'ETN', 'name': 'Eaton Corporation', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'EMR', 'name': 'Emerson Electric Company', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'ROK', 'name': 'Rockwell Automation Inc.', 'category': 'Industrials', 'subCategory': 'Electrical Components & Equipment'}
  {'symbol': 'APH', 'name': 'Amphenol Corp', 'category': 'Information Technology', 'subCategory': 'Electronic Components'}
  {'symbol': 'GLW', 'name': 'Corning Inc.', 'category': 'Information Technology', 'subCategory': 'Electronic Components'}
  {'symbol': 'FLIR', 'name': 'FLIR Systems', 'category': 'Information Technology', 'subCategory': 'Electronic Equipment & Instruments'}
  {'symbol': 'TEL', 'name': 'TE Connectivity Ltd.', 'category': 'Information Technology', 'subCategory': 'Electronic Manufacturing Services'}
  {'symbol': 'RSG', 'name': 'Republic Services Inc', 'category': 'Industrials', 'subCategory': 'Environmental & Facilities Services'}
  {'symbol': 'SRCL', 'name': 'Stericycle Inc', 'category': 'Industrials', 'subCategory': 'Environmental & Facilities Services'}
  {'symbol': 'WM', 'name': 'Waste Management Inc.', 'category': 'Industrials', 'subCategory': 'Environmental & Facilities Services'}
  {'symbol': 'CF', 'name': 'CF Industries Holdings Inc', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'FMC', 'name': 'FMC Corporation', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'MON', 'name': 'Monsanto Co.', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'MOS', 'name': 'The Mosaic Company', 'category': 'Materials', 'subCategory': 'Fertilizers & Agricultural Chemicals'}
  {'symbol': 'CBOE', 'name': 'CBOE Holdings', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'CME', 'name': 'CME Group Inc.', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'ICE', 'name': 'Intercontinental Exchange', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'MCO', 'name': 'Moody\'s Corp', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'NDAQ', 'name': 'Nasdaq, Inc.', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'SPGI', 'name': 'S&P Global, Inc.', 'category': 'Financials', 'subCategory': 'Financial Exchanges & Data'}
  {'symbol': 'SYY', 'name': 'Sysco Corp.', 'category': 'Consumer Staples', 'subCategory': 'Food Distributors'}
  {'symbol': 'KR', 'name': 'Kroger Co.', 'category': 'Consumer Staples', 'subCategory': 'Food Retail'}
  {'symbol': 'DG', 'name': 'Dollar General', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'DLTR', 'name': 'Dollar Tree', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'KSS', 'name': 'Kohl\'s Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  # {'symbol': 'TGT', 'name': 'Target Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'General Merchandise Stores'}
  {'symbol': 'NEM', 'name': 'Newmont Mining Corporation', 'category': 'Materials', 'subCategory': 'Gold'}
  {'symbol': 'ABC', 'name': 'AmerisourceBergen Corp', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'BMY', 'name': 'Bristol-Myers Squibb', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'CAH', 'name': 'Cardinal Health Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'ESRX', 'name': 'Express Scripts', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'HSIC', 'name': 'Henry Schein', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'MCK', 'name': 'McKesson Corp.', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'WAT', 'name': 'Waters Corporation', 'category': 'Health Care', 'subCategory': 'Health Care Distributors'}
  {'symbol': 'ABT', 'name': 'Abbott Laboratories', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'A', 'name': 'Agilent Technologies Inc', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BCR', 'name': 'Bard (C.R.) Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BAX', 'name': 'Baxter International Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BDX', 'name': 'Becton Dickinson', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'BSX', 'name': 'Boston Scientific', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'DHR', 'name': 'Danaher Corp.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'EW', 'name': 'Edwards Lifesciences', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'HOLX', 'name': 'Hologic', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'IDXX', 'name': 'IDEXX Laboratories', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'ISRG', 'name': 'Intuitive Surgical Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'JNJ', 'name': 'Johnson & Johnson', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'MDT', 'name': 'Medtronic plc', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'PKI', 'name': 'PerkinElmer', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'RMD', 'name': 'ResMed', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'SYK', 'name': 'Stryker Corp.', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'TMO', 'name': 'Thermo Fisher Scientific', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'VAR', 'name': 'Varian Medical Systems', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'ZBH', 'name': 'Zimmer Biomet Holdings', 'category': 'Health Care', 'subCategory': 'Health Care Equipment'}
  {'symbol': 'DVA', 'name': 'DaVita Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Facilities'}
  {'symbol': 'HCA', 'name': 'HCA Holdings', 'category': 'Health Care', 'subCategory': 'Health Care Facilities'}
  {'symbol': 'UHS', 'name': 'Universal Health Services, Inc.', 'category': 'Health Care', 'subCategory': 'Health Care Facilities'}
  {'symbol': 'HCP', 'name': 'HCP Inc.', 'category': 'Real Estate', 'subCategory': 'Health Care REITs'}
  {'symbol': 'VTR', 'name': 'Ventas Inc', 'category': 'Real Estate', 'subCategory': 'Health Care REITs'}
  {'symbol': 'HCN', 'name': 'Welltower Inc.', 'category': 'Real Estate', 'subCategory': 'Health Care REITs'}
  {'symbol': 'EVHC', 'name': 'Envision Healthcare', 'category': 'Health Care', 'subCategory': 'Health Care Services'}
  {'symbol': 'LH', 'name': 'Laboratory Corp. of America Holding', 'category': 'Health Care', 'subCategory': 'Health Care Services'}
  {'symbol': 'DGX', 'name': 'Quest Diagnostics', 'category': 'Health Care', 'subCategory': 'Health Care Services'}
  {'symbol': 'ALGN', 'name': 'Align Technology', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'COO', 'name': 'The Cooper Companies', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'XRAY', 'name': 'Dentsply Sirona', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'PDCO', 'name': 'Patterson Companies', 'category': 'Health Care', 'subCategory': 'Health Care Supplies'}
  {'symbol': 'CERN', 'name': 'Cerner', 'category': 'Health Care', 'subCategory': 'Health Care Technology'}
  {'symbol': 'ATVI', 'name': 'Activision Blizzard', 'category': 'Information Technology', 'subCategory': 'Home Entertainment Software'}
  {'symbol': 'EA', 'name': 'Electronic Arts', 'category': 'Information Technology', 'subCategory': 'Home Entertainment Software'}
  {'symbol': 'LEG', 'name': 'Leggett & Platt', 'category': 'Consumer Discretionary', 'subCategory': 'Home Furnishings'}
  {'symbol': 'MHK', 'name': 'Mohawk Industries', 'category': 'Consumer Discretionary', 'subCategory': 'Home Furnishings'}
  {'symbol': 'HD', 'name': 'Home Depot', 'category': 'Consumer Discretionary', 'subCategory': 'Home Improvement Retail'}
  {'symbol': 'LOW', 'name': 'Lowe\'s Cos.', 'category': 'Consumer Discretionary', 'subCategory': 'Home Improvement Retail'}
  {'symbol': 'DHI', 'name': 'D. R. Horton', 'category': 'Consumer Discretionary', 'subCategory': 'Homebuilding'}
  {'symbol': 'LEN', 'name': 'Lennar Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Homebuilding'}
  {'symbol': 'PHM', 'name': 'Pulte Homes Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Homebuilding'}
  {'symbol': 'HST', 'name': 'Host Hotels & Resorts', 'category': 'Real Estate', 'subCategory': 'Hotel & Resort REITs'}
  {'symbol': 'CCL', 'name': 'Carnival Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'HLT', 'name': 'Hilton Worldwide Holdings Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'MAR', 'name': 'Marriott Int\'l.', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'NCLH', 'name': 'Norwegian Cruise Line', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'RCL', 'name': 'Royal Caribbean Cruises Ltd', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'WYN', 'name': 'Wyndham Worldwide', 'category': 'Consumer Discretionary', 'subCategory': 'Hotels, Resorts & Cruise Lines'}
  {'symbol': 'SNA', 'name': 'Snap-On Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Household Appliances'}
  {'symbol': 'SWK', 'name': 'Stanley Black & Decker', 'category': 'Consumer Discretionary', 'subCategory': 'Household Appliances'}
  {'symbol': 'WHR', 'name': 'Whirlpool Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Household Appliances'}
  {'symbol': 'CHD', 'name': 'Church & Dwight', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'CLX', 'name': 'The Clorox Company', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'CL', 'name': 'Colgate-Palmolive', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'KMB', 'name': 'Kimberly-Clark', 'category': 'Consumer Staples', 'subCategory': 'Household Products'}
  {'symbol': 'NWL', 'name': 'Newell Brands', 'category': 'Consumer Discretionary', 'subCategory': 'Housewares & Specialties'}
  {'symbol': 'RHI', 'name': 'Robert Half International', 'category': 'Industrials', 'subCategory': 'Human Resource & Employment Services'}
  {'symbol': 'COST', 'name': 'Costco Wholesale Corp.', 'category': 'Consumer Staples', 'subCategory': 'Hypermarkets & Super Centers'}
  {'symbol': 'WMT', 'name': 'Wal-Mart Stores', 'category': 'Consumer Staples', 'subCategory': 'Hypermarkets & Super Centers'}
  {'symbol': 'AES', 'name': 'AES Corp', 'category': 'Utilities', 'subCategory': 'Independent Power Producers & Energy Traders'}
  {'symbol': 'NRG', 'name': 'NRG Energy', 'category': 'Utilities', 'subCategory': 'Independent Power Producers & Energy Traders'}
  {'symbol': 'MMM', 'name': '3M Company', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'GE', 'name': 'General Electric', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'HON', 'name': 'Honeywell Int\'l Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'ROP', 'name': 'Roper Technologies', 'category': 'Industrials', 'subCategory': 'Industrial Conglomerates'}
  {'symbol': 'APD', 'name': 'Air Products & Chemicals Inc', 'category': 'Materials', 'subCategory': 'Industrial Gases'}
  {'symbol': 'PX', 'name': 'Praxair Inc.', 'category': 'Materials', 'subCategory': 'Industrial Gases'}
  {'symbol': 'CMI', 'name': 'Cummins Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'DOV', 'name': 'Dover Corp.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'FLS', 'name': 'Flowserve Corporation', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'FTV', 'name': 'Fortive Corp', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'GWW', 'name': 'Grainger (W.W.) Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'ITW', 'name': 'Illinois Tool Works', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'IR', 'name': 'Ingersoll-Rand PLC', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'PH', 'name': 'Parker-Hannifin', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'PNR', 'name': 'Pentair Ltd.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'XYL', 'name': 'Xylem Inc.', 'category': 'Industrials', 'subCategory': 'Industrial Machinery'}
  {'symbol': 'DRE', 'name': 'Duke Realty Corp', 'category': 'Real Estate', 'subCategory': 'Industrial REITs'}
  {'symbol': 'PLD', 'name': 'Prologis', 'category': 'Real Estate', 'subCategory': 'Industrial REITs'}
  {'symbol': 'AON', 'name': 'Aon plc', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'AJG', 'name': 'Arthur J. Gallagher & Co.', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'MMC', 'name': 'Marsh & McLennan', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'WLTW', 'name': 'Willis Towers Watson', 'category': 'Financials', 'subCategory': 'Insurance Brokers'}
  {'symbol': 'CVX', 'name': 'Chevron Corp.', 'category': 'Energy', 'subCategory': 'Integrated Oil & Gas'}
  {'symbol': 'XOM', 'name': 'Exxon Mobil Corp.', 'category': 'Energy', 'subCategory': 'Integrated Oil & Gas'}
  {'symbol': 'HES', 'name': 'Hess Corporation', 'category': 'Energy', 'subCategory': 'Integrated Oil & Gas'}
  # {'symbol': 'T', 'name': 'AT&T Inc', 'category': 'Telecommunication Services', 'subCategory': 'Integrated Telecommunication Services'}
  {'symbol': 'CTL', 'name': 'CenturyLink Inc', 'category': 'Telecommunication Services', 'subCategory': 'Integrated Telecommunication Services'}
  {'symbol': 'VZ', 'name': 'Verizon Communications', 'category': 'Telecommunication Services', 'subCategory': 'Integrated Telecommunication Services'}
  # {'symbol': 'AMZN', 'name': 'Amazon.com Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'EXPE', 'name': 'Expedia Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'PCLN', 'name': 'Priceline.com Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'TRIP', 'name': 'TripAdvisor', 'category': 'Consumer Discretionary', 'subCategory': 'Internet & Direct Marketing Retail'}
  {'symbol': 'AKAM', 'name': 'Akamai Technologies Inc', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'GOOGL', 'name': 'Alphabet Inc Class A', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'GOOG', 'name': 'Alphabet Inc Class C', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'ADP', 'name': 'Automatic Data Processing', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'CTXS', 'name': 'Citrix Systems', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'EBAY', 'name': 'eBay Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'FB', 'name': 'Facebook, Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'FIS', 'name': 'Fidelity National Information Services', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'FISV', 'name': 'Fiserv Inc', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'INTU', 'name': 'Intuit Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'MA', 'name': 'Mastercard Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'NTAP', 'name': 'NetApp', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'NFLX', 'name': 'Netflix Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'PAYX', 'name': 'Paychex Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'CRM', 'name': 'Salesforce.com', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'TSS', 'name': 'Total System Services', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'VRSN', 'name': 'Verisign Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'V', 'name': 'Visa Inc.', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'WU', 'name': 'Western Union Co', 'category': 'Information Technology', 'subCategory': 'Internet Software & Services'}
  {'symbol': 'SCHW', 'name': 'Charles Schwab Corporation', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'ETFC', 'name': 'E*Trade', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'GS', 'name': 'Goldman Sachs Group', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'MS', 'name': 'Morgan Stanley', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'RJF', 'name': 'Raymond James Financial Inc.', 'category': 'Financials', 'subCategory': 'Investment Banking & Brokerage'}
  {'symbol': 'ACN', 'name': 'Accenture plc', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'CTSH', 'name': 'Cognizant Technology Solutions', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'CSRA', 'name': 'CSRA Inc.', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'DXC', 'name': 'DXC Technology', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'IT', 'name': 'Gartner Inc', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'IBM', 'name': 'International Business Machines', 'category': 'Information Technology', 'subCategory': 'IT Consulting & Other Services'}
  {'symbol': 'HAS', 'name': 'Hasbro Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Leisure Products'}
  {'symbol': 'MAT', 'name': 'Mattel Inc.', 'category': 'Consumer Discretionary', 'subCategory': 'Leisure Products'}
  {'symbol': 'AFL', 'name': 'AFLAC Inc', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'BHF', 'name': 'Brighthouse Financial Inc', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'MET', 'name': 'MetLife Inc.', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'PFG', 'name': 'Principal Financial Group', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'PRU', 'name': 'Prudential Financial', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'TMK', 'name': 'Torchmark Corp.', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'UNM', 'name': 'Unum Group', 'category': 'Financials', 'subCategory': 'Life & Health Insurance'}
  {'symbol': 'IQV', 'name': 'IQVIA Holdings Inc.', 'category': 'Health Care', 'subCategory': 'Life Sciences Tools & Service'}
  {'symbol': 'ILMN', 'name': 'Illumina Inc', 'category': 'Health Care', 'subCategory': 'Life Sciences Tools & Services'}
  {'symbol': 'MTD', 'name': 'Mettler Toledo', 'category': 'Health Care', 'subCategory': 'Life Sciences Tools & Services'}
  {'symbol': 'AET', 'name': 'Aetna Inc', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'ANTM', 'name': 'Anthem Inc.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'CNC', 'name': 'Centene Corporation', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'CI', 'name': 'CIGNA Corp.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'HUM', 'name': 'Humana Inc.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'UNH', 'name': 'United Health Group Inc.', 'category': 'Health Care', 'subCategory': 'Managed Health Care'}
  {'symbol': 'BLL', 'name': 'Ball Corp', 'category': 'Materials', 'subCategory': 'Metal & Glass Containers'}
  {'symbol': 'HOG', 'name': 'Harley-Davidson', 'category': 'Consumer Discretionary', 'subCategory': 'Motorcycle Manufacturers'}
  {'symbol': 'AIZ', 'name': 'Assurant Inc', 'category': 'Financials', 'subCategory': 'Multi-line Insurance'}
  {'symbol': 'LNC', 'name': 'Lincoln National', 'category': 'Financials', 'subCategory': 'Multi-line Insurance'}
  {'symbol': 'L', 'name': 'Loews Corp.', 'category': 'Financials', 'subCategory': 'Multi-line Insurance'}
  # {'symbol': 'BRK.B', 'name': 'Berkshire Hathaway', 'category': 'Financials', 'subCategory': 'Multi-Sector Holdings'}
  {'symbol': 'LUK', 'name': 'Leucadia National Corp.', 'category': 'Financials', 'subCategory': 'Multi-Sector Holdings'}
  {'symbol': 'AEE', 'name': 'Ameren Corp', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'CNP', 'name': 'CenterPoint Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'CMS', 'name': 'CMS Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'DTE', 'name': 'DTE Energy Co.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'ES', 'name': 'Eversource Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'EXC', 'name': 'Exelon Corp.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'NEE', 'name': 'NextEra Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'NI', 'name': 'NiSource Inc.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'PCG', 'name': 'PG&E Corp.', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'PNW', 'name': 'Pinnacle West Capital', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'SCG', 'name': 'SCANA Corp', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'SRE', 'name': 'Sempra Energy', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'XEL', 'name': 'Xcel Energy Inc', 'category': 'Utilities', 'subCategory': 'Multi-Utilities'}
  {'symbol': 'ARE', 'name': 'Alexandria Real Estate Equities Inc', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'BXP', 'name': 'Boston Properties', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'SLG', 'name': 'SL Green Realty', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'VNO', 'name': 'Vornado Realty Trust', 'category': 'Real Estate', 'subCategory': 'Office REITs'}
  {'symbol': 'HP', 'name': 'Helmerich & Payne', 'category': 'Energy', 'subCategory': 'Oil & Gas Drilling'}
  {'symbol': 'BHGE', 'name': 'Baker Hughes, a GE Company', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'HAL', 'name': 'Halliburton Co.', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'NOV', 'name': 'National Oilwell Varco Inc.', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'SLB', 'name': 'Schlumberger Ltd.', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'FTI', 'name': 'TechnipFMC', 'category': 'Energy', 'subCategory': 'Oil & Gas Equipment & Services'}
  {'symbol': 'APC', 'name': 'Anadarko Petroleum Corp', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'APA', 'name': 'Apache Corporation', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'COG', 'name': 'Cabot Oil & Gas', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'CHK', 'name': 'Chesapeake Energy', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'XEC', 'name': 'Cimarex Energy', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'CXO', 'name': 'Concho Resources', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'COP', 'name': 'ConocoPhillips', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'DVN', 'name': 'Devon Energy Corp.', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'EOG', 'name': 'EOG Resources', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'EQT', 'name': 'EQT Corporation', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'MRO', 'name': 'Marathon Oil Corp.', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'NFX', 'name': 'Newfield Exploration Co', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'NBL', 'name': 'Noble Energy Inc', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'OXY', 'name': 'Occidental Petroleum', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'PXD', 'name': 'Pioneer Natural Resources', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'RRC', 'name': 'Range Resources Corp.', 'category': 'Energy', 'subCategory': 'Oil & Gas Exploration & Production'}
  {'symbol': 'ANDV', 'name': 'Andeavor', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'MPC', 'name': 'Marathon Petroleum', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'PSX', 'name': 'Phillips 66', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'VLO', 'name': 'Valero Energy', 'category': 'Energy', 'subCategory': 'Oil & Gas Refining & Marketing'}
  {'symbol': 'KMI', 'name': 'Kinder Morgan', 'category': 'Energy', 'subCategory': 'Oil & Gas Storage & Transportation'}
  {'symbol': 'OKE', 'name': 'ONEOK', 'category': 'Energy', 'subCategory': 'Oil & Gas Storage & Transportation'}
  {'symbol': 'WMB', 'name': 'Williams Cos.', 'category': 'Energy', 'subCategory': 'Oil & Gas Storage & Transportation'}
  {'symbol': 'CPB', 'name': 'Campbell Soup', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'CAG', 'name': 'Conagra Brands', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'GIS', 'name': 'General Mills', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'HSY', 'name': 'The Hershey Company', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'HRL', 'name': 'Hormel Foods Corp.', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'SJM', 'name': 'JM Smucker', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'K', 'name': 'Kellogg Co.', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'KHC', 'name': 'Kraft Heinz Co', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'MKC', 'name': 'McCormick & Co.', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'MDLZ', 'name': 'Mondelez International', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'TSN', 'name': 'Tyson Foods', 'category': 'Consumer Staples', 'subCategory': 'Packaged Foods & Meats'}
  {'symbol': 'AVY', 'name': 'Avery Dennison Corp', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'IP', 'name': 'International Paper', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'PKG', 'name': 'Packaging Corporation of America', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'SEE', 'name': 'Sealed Air', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'WRK', 'name': 'WestRock Company', 'category': 'Materials', 'subCategory': 'Paper Packaging'}
  {'symbol': 'COTY', 'name': 'Coty, Inc', 'category': 'Consumer Staples', 'subCategory': 'Personal Products'}
  {'symbol': 'EL', 'name': 'Estee Lauder Cos.', 'category': 'Consumer Staples', 'subCategory': 'Personal Products'}
  {'symbol': 'PG', 'name': 'Procter & Gamble', 'category': 'Consumer Staples', 'subCategory': 'Personal Products'}
  {'symbol': 'ABBV', 'name': 'AbbVie Inc.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'AGN', 'name': 'Allergan, Plc', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'LLY', 'name': 'Lilly (Eli) & Co.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'MRK', 'name': 'Merck & Co.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'MYL', 'name': 'Mylan N.V.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'PRGO', 'name': 'Perrigo', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'PFE', 'name': 'Pfizer Inc.', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'ZTS', 'name': 'Zoetis', 'category': 'Health Care', 'subCategory': 'Pharmaceuticals'}
  {'symbol': 'ALL', 'name': 'Allstate Corp', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'AIG', 'name': 'American International Group, Inc.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'CB', 'name': 'Chubb Limited', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'CINF', 'name': 'Cincinnati Financial', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'HIG', 'name': 'Hartford Financial Svc.Gp.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'PGR', 'name': 'Progressive Corp.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'TRV', 'name': 'The Travelers Companies Inc.', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'XL', 'name': 'XL Capital', 'category': 'Financials', 'subCategory': 'Property & Casualty Insurance'}
  {'symbol': 'NWSA', 'name': 'News Corp. Class A', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'NWS', 'name': 'News Corp. Class B', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'FOXA', 'name': 'Twenty-First Century Fox Class A', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'FOX', 'name': 'Twenty-First Century Fox Class B', 'category': 'Consumer Discretionary', 'subCategory': 'Publishing'}
  {'symbol': 'CSX', 'name': 'CSX Corp.', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'KSU', 'name': 'Kansas City Southern', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'NSC', 'name': 'Norfolk Southern Corp.', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'UNP', 'name': 'Union Pacific', 'category': 'Industrials', 'subCategory': 'Railroads'}
  {'symbol': 'CBG', 'name': 'CBRE Group', 'category': 'Real Estate', 'subCategory': 'Real Estate Services'}
  {'symbol': 'BBT', 'name': 'BB&T Corporation', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'CFG', 'name': 'Citizens Financial Group', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'FITB', 'name': 'Fifth Third Bancorp', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'HBAN', 'name': 'Huntington Bancshares', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'KEY', 'name': 'KeyCorp', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'MTB', 'name': 'M&T Bank Corp.', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'PNC', 'name': 'PNC Financial Services', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'RF', 'name': 'Regions Financial Corp.', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'STI', 'name': 'SunTrust Banks', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'ZION', 'name': 'Zions Bancorp', 'category': 'Financials', 'subCategory': 'Regional Banks'}
  {'symbol': 'RE', 'name': 'Everest Re Group Ltd.', 'category': 'Financials', 'subCategory': 'Reinsurance'}
  {'symbol': 'EFX', 'name': 'Equifax Inc.', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'INFO', 'name': 'IHS Markit Ltd.', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'NLSN', 'name': 'Nielsen Holdings', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'VRSK', 'name': 'Verisk Analytics', 'category': 'Industrials', 'subCategory': 'Research & Consulting Services'}
  {'symbol': 'AIV', 'name': 'Apartment Investment & Management', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'AVB', 'name': 'AvalonBay Communities, Inc.', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'EQR', 'name': 'Equity Residential', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'ESS', 'name': 'Essex Property Trust, Inc.', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'MAA', 'name': 'Mid-America Apartments', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'UDR', 'name': 'UDR Inc', 'category': 'Real Estate', 'subCategory': 'Residential REITs'}
  {'symbol': 'CMG', 'name': 'Chipotle Mexican Grill', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'DRI', 'name': 'Darden Restaurants', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'MCD', 'name': 'McDonald\'s Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'SBUX', 'name': 'Starbucks Corp.', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'YUM', 'name': 'Yum! Brands Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Restaurants'}
  {'symbol': 'FRT', 'name': 'Federal Realty Investment Trust', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'GGP', 'name': 'General Growth Properties Inc.', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'KIM', 'name': 'Kimco Realty', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'MAC', 'name': 'Macerich', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'O', 'name': 'Realty Income Corporation', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'REG', 'name': 'Regency Centers Corporation', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'SPG', 'name': 'Simon Property Group Inc', 'category': 'Real Estate', 'subCategory': 'Retail REITs'}
  {'symbol': 'AMAT', 'name': 'Applied Materials Inc', 'category': 'Information Technology', 'subCategory': 'Semiconductor Equipment'}
  {'symbol': 'KLAC', 'name': 'KLA-Tencor Corp.', 'category': 'Information Technology', 'subCategory': 'Semiconductor Equipment'}
  {'symbol': 'LRCX', 'name': 'Lam Research', 'category': 'Information Technology', 'subCategory': 'Semiconductor Equipment'}
  {'symbol': 'AMD', 'name': 'Advanced Micro Devices Inc', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'ADI', 'name': 'Analog Devices, Inc.', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'AVGO', 'name': 'Broadcom', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'INTC', 'name': 'Intel Corp.', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'MCHP', 'name': 'Microchip Technology', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'MU', 'name': 'Micron Technology', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'NVDA', 'name': 'Nvidia Corporation', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'QRVO', 'name': 'Qorvo', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'QCOM', 'name': 'QUALCOMM Inc.', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'SWKS', 'name': 'Skyworks Solutions', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'TXN', 'name': 'Texas Instruments', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'XLNX', 'name': 'Xilinx Inc', 'category': 'Information Technology', 'subCategory': 'Semiconductors'}
  {'symbol': 'KO', 'name': 'Coca-Cola Company (The)', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'DPS', 'name': 'Dr Pepper Snapple Group', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'MNST', 'name': 'Monster Beverage', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'PEP', 'name': 'PepsiCo Inc.', 'category': 'Consumer Staples', 'subCategory': 'Soft Drinks'}
  {'symbol': 'AMT', 'name': 'American Tower Corp A', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'CCI', 'name': 'Crown Castle International Corp.', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'DLR', 'name': 'Digital Realty Trust Inc', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'EQIX', 'name': 'Equinix', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'EXR', 'name': 'Extra Space Storage', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'IRM', 'name': 'Iron Mountain Incorporated', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'PSA', 'name': 'Public Storage', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'SBAC', 'name': 'SBA Communications', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'WY', 'name': 'Weyerhaeuser Corp.', 'category': 'Real Estate', 'subCategory': 'Specialized REITs'}
  {'symbol': 'ALB', 'name': 'Albemarle Corp', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'ECL', 'name': 'Ecolab Inc.', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'IFF', 'name': 'Intl Flavors & Fragrances', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'LYB', 'name': 'LyondellBasell', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'PPG', 'name': 'PPG Industries', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'SHW', 'name': 'Sherwin-Williams', 'category': 'Materials', 'subCategory': 'Specialty Chemicals'}
  {'symbol': 'AZO', 'name': 'AutoZone Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'KMX', 'name': 'Carmax Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'GPC', 'name': 'Genuine Parts', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'ORLY', 'name': 'O\'Reilly Automotive', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'SIG', 'name': 'Signet Jewelers', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'TSCO', 'name': 'Tractor Supply Company', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'ULTA', 'name': 'Ulta Salon Cosmetics & Fragrance Inc', 'category': 'Consumer Discretionary', 'subCategory': 'Specialty Stores'}
  {'symbol': 'NUE', 'name': 'Nucor Corp.', 'category': 'Materials', 'subCategory': 'Steel'}
  {'symbol': 'CA', 'name': 'CA, Inc.', 'category': 'Information Technology', 'subCategory': 'Systems Software'}
  {'symbol': 'MSFT', 'name': 'Microsoft Corp.', 'category': 'Information Technology', 'subCategory': 'Systems Software'}
  {'symbol': 'RHT', 'name': 'Red Hat Inc.', 'category': 'Information Technology', 'subCategory': 'Systems Software'}
  {'symbol': 'AAPL', 'name': 'Apple Inc.', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'HPE', 'name': 'Hewlett Packard Enterprise', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'HPQ', 'name': 'HP Inc.', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'STX', 'name': 'Seagate Technology', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'WDC', 'name': 'Western Digital', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'XRX', 'name': 'Xerox Corp.', 'category': 'Information Technology', 'subCategory': 'Technology Hardware, Storage & Peripherals'}
  {'symbol': 'PBCT', 'name': 'People\'s United Financial', 'category': 'Financials', 'subCategory': 'Thrifts & Mortgage Finance'}
  {'symbol': 'GT', 'name': 'Goodyear Tire & Rubber', 'category': 'Consumer Discretionary', 'subCategory': 'Tires & Rubber'}
  {'symbol': 'MO', 'name': 'Altria Group Inc', 'category': 'Consumer Staples', 'subCategory': 'Tobacco'}
  {'symbol': 'PM', 'name': 'Philip Morris International', 'category': 'Consumer Staples', 'subCategory': 'Tobacco'}
  {'symbol': 'URI', 'name': 'United Rentals, Inc.', 'category': 'Industrials', 'subCategory': 'Trading Companies & Distributors'}
  {'symbol': 'JBHT', 'name': 'J. B. Hunt Transport Services', 'category': 'Industrials', 'subCategory': 'Trucking'}
  {'symbol': 'AWK', 'name': 'American Water Works Company Inc', 'category': 'Utilities', 'subCategory': 'Water Utilities'}
]




# Run ML
inputs = [
  {"dividendYield":0,"roe":0.0907}
]

# Meteor.call 'trainML', inputs[0], (error, result) ->
#   alert result.risk

# Meteor.call 'runMLQC', inputs[0], (error, result) ->
#   alert result.risk





  # result.run(inputs[0])

# Meteor.call 'runMLQC', inputs[0], (error, result) ->
#   $("#ticker_searchbox").val(result[0])

# {"dividendYield":0.012744941999999999,"roe":0.2325}


# runML = (input) ->
#   alert "running ML: " + JSON.stringify(net.run(input))
#     # alert "runServerTest"
#     # Session.set("runServerTest", "hohoho")
#   return net.run(input)

transformMLDataFormat = (quote) ->
  # console.log "******************************** transformMLdata begins ****************************************"
  # console.log Session.get(quote.symbol)


  price_current = parseFloat Session.get(quote.symbol+"_price")
  price_day50 = parseFloat Session.get(quote.symbol).day50MovingAvg
  dividend = parseFloat Session.get(quote.symbol).dividendYield
  roe = parseFloat Session.get(quote.symbol).returnOnEquity
  # date = "Today"
  # sector = Session.get(quote.symbol+"_company").sector
  # industry = Session.get(quote.symbol+"_company").industry
  # company_name = Session.get(quote.symbol+"_company").companyName

  # mlTrainingData = []
  mlTrainingData.push({input: {dividendYield: dividend/100, roe: roe/100}, output: {monitor: 1 }})

  # console.log "-------------------------------- transformMLdata ends ----------------------------------------"
  # quotes_position.forEach (quote) ->
  #   console.log "Running: transformMLdata xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    # alert data.dividendyield
    # alert Session.get(quote.symbol).dividendYield
  return

# ---
# generated by js2coffee 2.2.0

# ---
# generated by js2coffee 2.2.0


# Meteor.call 'transformData'

# Meteor.call 'trainMLQC'

# Meteor.call 'evaluateMLQC'


# Run Open position quotes

quotes_position.forEach (quote) ->
  # console.log quote
  Meteor.call 'getIEXDataStats', quote.symbol, 'price', (error, result) ->
    Session.set(quote.symbol+"_price", result.data)

  Meteor.call 'getIEXDataStats', quote.symbol, 'stats', (error, result) ->
    Session.set(quote.symbol, result.data)
    # transform ML training data into right format in json array
    transformMLDataFormat(quote)

  Meteor.call 'getIEXDataStats', quote.symbol, 'company', (error, result) ->
    Session.set(quote.symbol+"_company", result.data)


  # inputs = [
  #   {"dividendYield":20/100,"roe":20/100}
  # ]

  # Meteor.call 'runMLQC', inputs[0], (error, result) ->
  #   Session.set(quote.symbol+"_status", result.risk)
    # alert JSON.stringify(result)

# Run SP500 quotes
# Slow here
quotes_sp500.forEach (quote) ->
  Meteor.call 'getIEXDataStats', quote.symbol, 'price', (error, result) ->
    Session.set(quote.symbol+"_price", result.data)

  Meteor.call 'getIEXDataStats', quote.symbol, 'stats', (error, result) ->
    Session.set(quote.symbol, result.data)
    # transform ML training data into right format in json array
    transformMLDataFormat(quote)

  Meteor.call 'getIEXDataStats', quote.symbol, 'company', (error, result) ->
    Session.set(quote.symbol+"_company", result.data)






  # Meteor.call 'getTickerData', quote, 'close_price', (error, result) ->
  #   Session.set(quote+"_"+"close_price", result.data)
  # Meteor.call 'getTickerData', quote, 'dividendyield', (error, result) ->
  #   Session.set(quote+"_"+"dividendyield", result.data)



# Meteor.call 'getGradedData', 'https://api.intrinio.com', (error, result) ->
#   console.log result

# Meteor.call 'getTickerData', 'AAPL', 'close_price', (error, result) ->
#   console.log result
#   Session.set("AAPL"+"_"+"close_price", result.data)

# Meteor.call 'getTickerData', 'AAPL', 'dividendyield', (error, result) ->
#   console.log result
#   Session.set("AAPL"+"_"+"dividendyield", result.data)

# Meteor.call 'getTickerData', 'MSFT', 'close_price', (error, result) ->
#   console.log result
#   Session.set("MSFT", result.data)



# Meteor.call 'getTicker', "AAPL", (error, result) ->
#   console.log "getTicker result:"
#   console.log result


getMe = (quote, ticker_tag) ->
    console.log calling "get Meeeeeeee"
    if ticker_tag is "close_price"
      # console.log "getting close_price"
      Meteor.call 'getTickerData', 'https://api.intrinio.com', (error, result) ->
        # console.log result
        Session.set(quote, result.data)
      return 169.3
    if ticker_tag is "dividendyield"
      # console.log "getting dividendyield"
      return 0.5
    return 0

# ---
# generated by js2coffee 2.2.0


# ---
# generated by js2coffee 2.2.0


Template.body.helpers tasks: [
  { text: 'This is task 1' }
  { text: 'This is task 2' }
  { text: 'This is task 3' }
]

# Template.dashboard.helpers: ->
#   Session.get 'enemy'

# Session.set 'enemy', 'Eastasia'
# # Page will say "We've always been at war with Eastasia"
# Session.set 'enemy', 'Eurasia'
# # Page will change to say "We've always been at war with Eurasia"


# ---
# generated by js2coffee 2.2.0


# Template.myTemplate.helpers myHelper: (index) ->
#   myArray = [
#     'foo'
#     'bar'
#   ]
#   myArray[index]

# # ---
# # generated by js2coffee 2.2.0

# global_portfolioValue = 0

Template.dashboard.helpers portfolioValue: ->

  # Run open position quotes
  value = 0
  quotes_position.forEach (quote) ->

    price_current = parseFloat Session.get(quote.symbol+"_price")
    exec_price = parseFloat quote.execPrice
    size = parseFloat quote.size
    value = (value + price_current * size)

  Session.set("portfolioValue", value.toFixed(2))
  value.toFixed(2)

Template.dashboard.helpers portfolioCost: ->
  # Run open position quotes
  cost = 0
  quotes_position.forEach (quote) ->

    price_current = parseFloat Session.get(quote.symbol+"_price")
    exec_price = parseFloat quote.execPrice
    size = parseFloat quote.size
    cost = cost + exec_price * size
  Session.set("portfolioCost", cost) 
  cost

Template.dashboard.helpers portfolioDelta: ->
  value = Session.get("portfolioValue")
  cost = Session.get("portfolioCost")
  delta = (value - cost).toFixed(2)
  Session.set("portfolioDelta", delta) 
  delta

Template.dashboard.helpers portfolioDeltaPercent: ->
  value = Session.get("portfolioValue")
  cost = Session.get("portfolioCost")
  deltaPercent = (100*(value - cost)/cost).toFixed(2)
  Session.set("portfolioDelta", deltaPercent) 
  deltaPercent

Template.dashboard.helpers tickers: (index) -> 

  quotes_table_arr = []


  # Run open position quotes
  quotes_position.forEach (quote) ->

    try
      price_current = parseFloat Session.get(quote.symbol+"_price")
      price_day50 = parseFloat Session.get(quote.symbol).day50MovingAvg
      dividend = parseFloat Session.get(quote.symbol).dividendYield
      date = "Today"
      roe = parseFloat Session.get(quote.symbol).returnOnEquity
      sector = Session.get(quote.symbol+"_company").sector
      industry = Session.get(quote.symbol+"_company").industry
      company_name = Session.get(quote.symbol+"_company").companyName
      exec_price = parseFloat quote.execPrice
      size = parseFloat quote.size
      yieldPercent = (100 * (price_current-exec_price)/price_current).toFixed(2)
      yieldGain = ((price_current-exec_price) * size ).toFixed(2)
      ml_status = Session.get(quote.symbol+"_status")
      # status = Session.get(quote.symbol+"_status")

    catch err
      console.log "Error: " + err
      price_current = "-"
      price_day50 = "-"
      dividend = "-"
      date = "-"
      roe = "-"
      sector = "-"
      industry = "-"
      company_name = "-"
      yieldPercent = "-"
      yieldGain = "-"
      ml_status = "-"


    quote_table_row = {ticker: { "symbol":quote.symbol, "name":company_name, "category":sector, "subCategory":industry, "date": date, "currentPrice": price_current, "price_day50": price_day50, "dividend": dividend, "roe": roe, "position": quote.position, "size": quote.size, "execPrice": quote.execPrice, "yieldPercent": yieldPercent, "yieldGain": yieldGain, "status": ml_status}}
    quotes_table_arr.push(quote_table_row)    


    # # run ML
    # inputs = [
    #   {"dividendYield":dividend/100,"roe":roe/100}
    # ]


    # Meteor.call 'runMLQC', inputs[0], (error, result) ->
    #   console.log result

    # if Math.round(parseFloat(result.risk)) is 1


    # Meteor.call 'trainML', inputs[0], (error, result) ->
    #   if Math.round(parseFloat(result.risk)) is 1
        
      # alert result.risk  


  # Run SP500 quotes
  quotes_sp500.forEach (quote) ->
    # quote_table_row = {ticker: { "name":quote, "price":Session.get(quote+"_close_price").value, "dividend":100*parseFloat(Session.get(quote+"_dividendyield").value)}}
    # quotes_table_arr.push(quote_table_row)    

    try
      price_current = parseFloat Session.get(quote.symbol+"_price")
      price_day50 = parseFloat Session.get(quote.symbol).day50MovingAvg
      dividend = parseFloat Session.get(quote.symbol).dividendYield
      date = "Today"
      roe = Session.get(quote.symbol).returnOnEquity
      sector = Session.get(quote.symbol+"_company").sector
      industry = Session.get(quote.symbol+"_company").industry
      company_name = Session.get(quote.symbol+"_company").companyName
      ml_status = Session.get(quote.symbol+"_status")

      # price = Object.values(Session.get(quote.symbol)["Monthly Adjusted Time Series"])[0]["4. close"]
      # dividend = Object.values(Session.get(quote.symbol)["Monthly Adjusted Time Series"])[0]["7. dividend amount"]
      # date = Object.keys(Session.get(quote.symbol)["Monthly Adjusted Time Series"])[0]
    catch err
      console.log "Error: " + err
      price_current = "-"
      price_day50 = "-"
      dividend = "-"
      date = "-"
      roe = "-"
      sector = "-"
      industry = "-"
      company_name = "-"
      ml_status = "-"


    # price = 123
    # dividend = 456

    quote_table_row = {ticker: { "symbol":quote.symbol, "name":company_name, "category":sector, "subCategory":industry, "date": date, "currentPrice": price_current, "price_day50": price_day50, "dividend": dividend, "roe": roe, "status": ml_status}}
    quotes_table_arr.push(quote_table_row)    
    # quote_table_row = {ticker: { "name":quote, "price":123, "dividend":123}}
  

    # console.log "xxxxx:" + quote
    # Session.get("AAPL")["Meta Data"]["2. Symbol"]
  return quotes_table_arr

  # quotes = [
  # 'AAPL'
  # 'MSFT'
  # 'IBM'
  # 'FB'
  # ]

  # return [
  # # {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
  # {ticker: { "name":"AAPL", "price":123, "dividend":456}}
  # {ticker: { "name":"IBM", "price":123, "dividend":456}}
  # {ticker: { "name":"MSFT", "price":123, "dividend":456}}
  # {ticker: { "name":"MSFT", "price":123, "dividend":456}}
  # {ticker: { "name":"MSFT", "price":123, "dividend":456}}
  # ]


# Template.dashboard.helpers tickers: (index) ->
#   tickers_arr = [
#     {ticker: { "name":"AAPL", "price":123, "dividend":456}}
#     {ticker: { "name":"AAPL", "price":789, "dividend":999}}
#   ]
#   tickers_arr[index]

# Template.dashboard.helpers tickers: [
#   # {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   {ticker: { "name":"AAPL", "price":Session.get("AAPL_close_price").value, "dividend":Session.get("AAPL_dividendyield").value}}
#   ]

  # { "name":"AT&T", "price":getMe("AAPL", "close_price"), "dividend":123 }
  # { "name":"AT&T", "price":30, "dividend":123 }
  # { 'name':'AAPL', 'price':getTickerData('AAPL', 'close_price'), 'dividend': getTickerData('AAPL', 'dividendyield')}

# Template.dashboard.events 'input #ticker_searchbox': (event) ->
#   console.log( "Handler for .keypress() called." )
#   alert 'you hit enter'
#   console.log event
#   if event.which is 13
#     console.log "enterrrrrrrr"
#     alert "hahahaha"
#   return

Template.body.events 'keypress #ticker_searchbox': (event) ->
  # Prevent default browser form submit
  # alert "hahahaha"
  console.log event.which
  if event.which is 13
    # alert "hahahaha"
    symbol = $('#ticker_searchbox').val()
    # window.open("https://www.w3schools.com");
    win = window.open("https://finance.yahoo.com/quote/"+symbol, "_blank", "height=600,width=900")
    # win.focus()
  return

Template.body.events 'click #ticker_table_header': (event) ->
  # Prevent default browser form submit
  # alert "hahahaha"
  # alert "hahahaha"
  $('#ticker_table').trigger("update");
  return


Template.body.events 'click #ml_model_button': (event) ->
  alert JSON.stringify(mlTrainingData)


Template.body.events 'click .follow_button': (event) ->
  console.log "event: "
  # grey (Follow) -> blue (Unfollow) -> green (strong) -> red (risk)
  if $("#"+event.target.id)[0].classList.contains("btn-outline-secondary")
    $("#"+event.target.id)[0].classList.remove("btn-outline-secondary")
    $("#"+event.target.id)[0].classList.add("btn-outline-info")
    $("#"+event.target.id).text("Unfollow")
  else if $("#"+event.target.id)[0].classList.contains("btn-outline-info")
    $("#"+event.target.id)[0].classList.remove("btn-outline-info")
    $("#"+event.target.id)[0].classList.add("btn-outline-secondary") 
    $("#"+event.target.id).text("Follow")

Template.body.events 'click .status_button': (event) ->
  console.log "event: "
  # $("#"+event.target.id)
  # grey (unwatch) -> yellow (watch) -> green (strong) -> red (risk)
  if $("#"+event.target.id)[0].classList.contains("btn-outline-secondary")
    $("#"+event.target.id)[0].classList.remove("btn-outline-secondary")
    $("#"+event.target.id)[0].classList.add("btn-outline-warning")
    $("#"+event.target.id).text("Monitor")
  else if $("#"+event.target.id)[0].classList.contains("btn-outline-warning")
    $("#"+event.target.id)[0].classList.remove("btn-outline-warning")
    $("#"+event.target.id)[0].classList.add("btn-outline-success") 
    $("#"+event.target.id).text("Buy")
  else if $("#"+event.target.id)[0].classList.contains("btn-outline-success")
    $("#"+event.target.id)[0].classList.remove("btn-outline-success")
    $("#"+event.target.id)[0].classList.add("btn-outline-danger") 
    $("#"+event.target.id).text("Risk")
  else if $("#"+event.target.id)[0].classList.contains("btn-outline-danger")
    $("#"+event.target.id)[0].classList.remove("btn-outline-danger")
    $("#"+event.target.id)[0].classList.add("btn-outline-secondary") 
    $("#"+event.target.id).text("-")

  # $("#"+event.target.id)[0].classList.remove("btn-outline-secondary")
  # $("#"+event.target.id)[0].classList.add("btn-outline-success")

  # console.log event
  # console.log event.target.id
  # console.log "this: "
  # console.log this
  # Prevent default browser form submit
  # alert "hahahaha"
  # alert "hahahaha"


  return

# ---
# generated by js2coffee 2.2.0


# $('#someTextBox').keypress (event) ->
#   console.log "clicccccccccccked"
#   # keycode = if event.keyCode then event.keyCode else event.which
#   # if keycode == '13'
#   #   alert 'You pressed a "enter" key in textbox'
#   # #Stop the event from propogation to other handlers
#   # #If this line will be removed, then keypress event handler attached
#   # #at document level will also be triggered
#   event.stopPropagation()
#   return

# ---
# generated by js2coffee 2.2.0


# ---
# generated by js2coffee 2.2.0

# ---
# generated by js2coffee 2.2.0

# $('#ticker_searchbox').keypress (event) ->
#   console.log( "Handler for .keypress() called." )

# ---
# generated by js2coffee 2.2.0

$(document).ready ->
  $('#ticker_table').tablesorter()
  console.log "ticker table ready sortableeeeeeeeeeee"

  # # Run ML
  # console.log "Running ML"
  # inputs = [
  #   {"dividendYield":20/100,"roe":20/100}
  # ]


  # Meteor.call 'trainML', inputs[0], (error, result) ->
  #   console.log "********* run MLQC client start **************"
  #   alert result.risk
  #   console.log "********* run MLQC client end **************"

  # Meteor.call 'runMLQC', inputs[0], (error, result) ->
  #   console.log "********* run MLQC client start **************"
  #   console.log result
  #   console.log "********* run MLQC client end **************"

  return

# ---
# generated by js2coffee 2.2.0

Template.hello.onCreated ->
  # counter starts at 0
  @counter = new ReactiveVar(0)
  return
Template.hello.helpers counter: ->
  Template.instance().counter.get()
Template.hello.events 'click button': (event, instance) ->
  # increment the counter when button is clicked
  console.log "client: hello world"
  instance.counter.set instance.counter.get() + 1
  return





# ---
# generated by js2coffee 2.2.0