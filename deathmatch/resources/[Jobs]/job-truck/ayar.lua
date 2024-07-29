isbasiPos = Vector3(0,0,0)
trailerMarkerPos = Vector3(2316.0380859375, -2364.8447265625, 12.546875)
finishPosition = Vector3(2308.0478515625, -2371.2490234375, 14.586224555969)

trailerPositions = {
    [1] = Vector3(2297.966796875, -2386.1015625, 14.584871292114),
    [2] = Vector3(2293.3955078125, -2392.1806640625, 14.581740379333),
    [3] = Vector3(2286.234375, -2399.52734375, 14.580439567566),
    [4] = Vector3(2279.328125, -2405.419921875, 14.584887504578),
    [5] = Vector3(2269.2646484375, -2413.9345703125, 14.580289840698),
}

mission = {
    [1] = "¡Recoge el tráiler del lugar indicado!",
    [2] = "¡Suelta el tráiler en el lugar especificado!",
    [3] = "¡Lleva el tráiler al lugar donde lo compraste!",
}

exped = {
    -- "Name" , Model , Level , Price , Logo , Pos 
    [1] = {"Coca Cola"        , 435 , 1 , 2000  , "cola"   , Vector3(-70.642578125, -1118.7900390625, 1.078125)},
    [2] = {"Fanta"            , 435 , 1 , 2000  , "fanta"  , Vector3(-202.830078125, -279.328125, 1.4296875)},
    [3] = {"iPhone"               , 435 , 1 , 3000  , "iphone" , Vector3(-1967.177734375, -2436.4423828125, 30.625)},
    [4] = {"UPS"        , 435 , 1 , 4000  , "kargo"  , Vector3(-1730.7236328125, -125.333984375, 3.5546875)},
    [5] = {"Shell"            , 435 , 3 , 2000  , "shell"  , Vector3(1605.2294921875, 2215.4521484375, 10.8203125)},
    [6] = {"Vatan Computer" , 450 , 4 , 2000 , "vatan"  , Vector3(2841.318359375, 954.6279296875, 10.75)},
    [7] = {"Volkswagen"       , 450 , 5 , 2000 , "vosvos" , Vector3(1510.7734375, 2229.5693359375, 10.8203125)},
}

truckJob   = 10
truckModel = 515
trailerRot = 45