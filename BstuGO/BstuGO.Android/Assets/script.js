const categoriesData = {
    coffeepoints: [
        {
            lat: 52.09564808831621,
            lon: 23.756754666619592,
            name: 'Кофейня 21',
            icon: 'https://cdn-icons-png.flaticon.com/128/3081/3081183.png',
            description: '<p>Местонахождение:</p><p>возле лестницы на 1-ом этаже 2-го корпуса</p>',
            work_time: '<p>Время работы: Пн-Пт 9:00-18:00</p>',
            photo: '<img src="https://thumb.tildacdn.com/tild6237-6362-4939-b031-616364343235/-/resize/478x/-/format/webp/photo_2023-03-11_13-.png" width="200" height="250">',
            hint: 'Кофепоинт'
        },
        {
            lat: 52.09654087426673,
            lon: 23.758370426678145,
            name: 'Кофейный автомат',
            icon: 'https://cdn-icons-png.flaticon.com/128/3081/3081183.png',
            description: '',
            work_time: '',
            photo: '',
            hint: 'Кофепоинт'
        },
        {
            lat: 52.09563217698508,
            lon: 23.758714500047724,
            name: 'Кофейный автомат',
            icon: 'https://cdn-icons-png.flaticon.com/128/3081/3081183.png',
            description: '',
            work_time: '',
            photo: '',
            hint: 'Кофепоинт'
        },
    ],
    canteens: [
        {
            lat: 52.094226839478,
            lon: 23.76053080416939,
            name: 'Столовая "Зодчие"',
            icon: 'https://cdn-icons-png.flaticon.com/128/2060/2060777.png',
            description: '',
            work_time: '',
            photo: '',
            hint: 'Столовая'
        },
    ],
    buffets: [
        {
            lat: 52.09564364240153,
            lon: 23.756744938574816,
            name: 'Буфет 2-й Корпус',
            icon: 'https://cdn-icons-png.flaticon.com/128/5589/5589708.png',
            description: '<p>Местонахождение:</p><p>возле гардероба на 1-ом этаже 2-го корпуса</p>',
            work_time: '',
            photo: '',
            hint: 'Буфет'
        },
    ],
    printing_points: [
        {
            lat: 52.09655184182871,
            lon: 23.757886672563842,
            name: 'Пункт печати',
            icon: 'https://cdn-icons-png.flaticon.com/128/3233/3233468.png',
            description: '<p>Местонахождение: библиотека 1-го корпуса</p>',
            work_time: '',
            photo: '',
            hint: 'Пункт печати'
        },
    ],
    deans: [
        {
            lat: 52.09627699661334,
            lon: 23.756373913044893,
            name: 'Деканат ФЭИС',
            icon: 'https://cdn-icons-png.flaticon.com/128/5352/5352126.png',
            description: '',
            work_time: '',
            photo: '',
            hint: 'Деканат'
        },
    ]
};

const inputsData = [
    {
        id: 1,
        coordinates: [52.09669129633542,23.758239508724536],
        offset: [-10, -5],
        name: '1-й корпус'
    },
    {
        id: 2,
        coordinates: [52.0956952076013,23.756876834695724],
        offset: [-15, -8],
        name: '2-й и 3-й корпус'
    },
    {
        id: 3,
        coordinates: [52.09562364354393,23.759130917417963],
        offset: [-7, -6],
        name: '5-й корпус'
    },
    {
        id: 4,
        coordinates: [52.09633501744579,23.759713585667857],
        offset: [0, 0],
        name: 'Спортивный комплекс'
    },
    {
        id: 5,
        coordinates: [52.09453638642828,23.760066780219404],
        offset: [0-3, -5],
        name: 'Общежитие №3'
    },
    {
        id: 6,
        coordinates: [52.094624308673325,23.760859152402446],
        offset: [0, 0],
        name: 'Общежитие №1"'
    },
    {
        id: 7,
        coordinates: [52.09421229300924,23.760716921659053],
        offset: [-5, -3],
        name: 'ТЦ "Зодчие"'
    },
    {
        id: 8,
        coordinates: [52.093857651414346,23.760983067334546],
        offset: [-10, -7],
        name: 'Общежитие №4'
    },
    {
        id: 9,
        coordinates: [52.09442659805926,23.761976695704632],
        offset: [-3, -9],
        name: 'Общежитие №2'
    }
]

const pathsData = [
    {
        id: 1,
        coordinates: [
            [52.098580617064556,23.75938441703253],
            [52.098414602383,23.759447448944403],
            [52.097166355409556,23.76005186842315],
            [52.09515042627724,23.76102962073066]
        ]
    },
    {
        id: 2,
        coordinates: [
            [52.09646561436229,23.76038985509043],
            [52.096376498505535,23.759878674507455],
            [52.09636658670646,23.759841123581246],
            [52.09635254498733,23.759812289834322],
            [52.09633809027181,23.75979418492348],
            [52.096312484764205,23.75978546774419],
            [52.09587951134966,23.75997276080208],
            [52.09577213220618,23.760019699459846],
            [52.09579360805566,23.760066638117618],
            [52.095812605913835,23.760129670029464],
            [52.095840689689304,23.76022488844947],
            [52.09585886153455,23.760266462689213],
            [52.095900161155164,23.760338882332622],
            [52.09593320082399,23.760377774363324],
            [52.09597615235669,23.760428736334628],
            [52.096005062018754,23.760483721619412],
            [52.0960587513412,23.760534683590713],
            [52.096232025833764,23.761571510788634],
            [52.096341055832326,23.760450347420406],
            [52.09632949205729,23.76033367132827],
            [52.096308016467106,23.76029746150658],
            [52.096283397224326,23.760272084627136],
            [52.096087638372275,23.760111152086242],
            [52.09588279274192,23.759974359426465]
        ]
    },
    {
        id: 3,
        coordinates: [
            [52.095930949503455,23.760649810294872],
            [52.09503265613496,23.76020498958378],
            [52.0949661624273,23.760235164435198],
            [52.094950881250604,23.7602626570776],
            [52.095105478588806,23.76108071195978],
            [52.09490660743952,23.761068463751382],
            [52.09486861093943,23.761071145960397],
            [52.094338375454605,23.76126672460368],
            [52.09425081713249,23.76119430496027],
            [52.094218602234655,23.761011914747247],
            [52.09436893822449,23.76070211960603],
            [52.094511013527146,23.760632382171636],
            [52.09452670786407,23.760726259487175],
            [52.094538272108785,23.760750399368295],
            [52.09455644448726,23.7607664926224],
            [52.09458205100793,23.76076515151788],
            [52.094681998898864,23.760715530651122],
            [52.094948161573726,23.76026696932519]
        ]
    },
    {
        id: 4,
        coordinates: [
            [52.0943656565315,23.76070508124481],
            [52.09397078985666,23.760901044635318]
        ]
    },
    {
        id: 5,
        coordinates: [
            [52.09496541279962,23.760234112264758],
            [52.09493402443044,23.76021533680164],
            [52.0949216342786,23.760218019010654],
            [52.09451694574888,23.760410038253184],
            [52.094490100163256,23.760442895313613],
            [52.09448679609007,23.760499221702915],
            [52.094509511588335,23.760631320496913]
        ]
    },
    {
        id: 6,
        coordinates: [
            [52.09503548563739,23.760203457929073],
            [52.09577329829484,23.7600184974534],
            [52.09556970909488,23.759543803884938],
            [52.095427295336556,23.758834835774906],
            [52.095522267847755,23.75842090280081],
            [52.09557665574661,23.75796388810741],
            [52.09565966847284,23.757810331641313],
            [52.09570220727239,23.757668845115784],
            [52.09578439376962,23.75762391811478],
            [52.096491241084834,23.75725700550988],
            [52.096554841578424,23.75737502270654],
            [52.09673618045405,23.758281974399562],
            [52.0967526999804,23.75831013759421],
            [52.097349369990994,23.758812127519132],
            [52.09822531870109,23.759378073621274],
            [52.09837561349662,23.75942098896551],
            [52.098414432939755,23.7594457993989]
        ]
    },
    {
        id: 7,
        coordinates: [
            [52.094384260570116,23.762075203365896],
            [52.09449398519292,23.762071180052363],
            [52.09516922674435,23.76173411519563],
            [52.095216309040325,23.76166974217926],
            [52.09510562426525,23.76108233840499]
        ]
    },
    {
        id: 8,
        coordinates: [
            [52.097166680406346,23.760049404172538],
            [52.09683641742627,23.758376589642587],
            [52.096847981069224,23.758349097000185],
            [52.096864913540976,23.7583229454623],
            [52.098176617501274,23.75763487827507]
        ]
    },
    {
        id: 9,
        coordinates: [
            [52.09551009008981,23.759251273248235],
            [52.09503465509566,23.76020408463094]
        ]
    },
    {
        id: 10,
        coordinates: [
            [52.098107340963104,23.757306567015327],
            [52.09669092990225,23.758048906820072]
        ]
    },
    {
        id: 11,
        coordinates: [
            [52.09646694931347,23.756663456372635],
            [52.096560784415296,23.757170433862342],
            [52.096555828536616,23.757374281747474]
        ]
    },
    {
        id: 12,
        coordinates: [
            [52.096310296886244,23.755922727432377],
            [52.09633920633067,23.755959607806314],
            [52.09646689720582,23.756662236752508],
            [52.09615043146677,23.75682908277931]
        ]
    },
    {
        id: 13,
        coordinates: [
            [52.095785554613805,23.757622180966116],
            [52.09579381455464,23.75749812879916],
            [52.09582437632238,23.757451860693664],
            [52.09575994878743,23.757122619537082],
            [52.09575829679813,23.757085068610873],
            [52.095769860721965,23.757048188236908],
            [52.095788032596204,23.757029412773818],
            [52.09614981654398,23.75682958820222],
            [52.096463684581025,23.757143132534146],
            [52.09649176794453,23.757259808626284]
        ]
    },
]

const polygonData = [
    {
        id: 1,
        polygonCoordinates: [
            [52.096445985756695,23.758217054913647],
            [52.09645716142553,23.75826332927346],
            [52.09646916354183,23.758265752736946],
            [52.09653898430223,23.758229284169804],
            [52.09649030221477,23.757990050076526],
            [52.09663743336128,23.757912304032644],
            [52.09689589564927,23.759204053692194],
            [52.09698466975905,23.75916016375939],
            [52.09703133714326,23.759388822077657],
            [52.09679562695191,23.75951341885888],
            [52.09657656161087,23.758419724625067],
            [52.09650848639507,23.75845574722412],
            [52.09649492585156,23.75845421889701],
            [52.09602023006038,23.75870337882364],
            [52.09597326320054,23.75846658494453],
            [52.096445985756695,23.758217054913647]],
        name: '1-й корпус',
        textCoordinates: [52.09671512364851,23.758689136066575],
        fillColor: '#e8e53355',
        strokeColor: '#c4c22b',
        offset: [0,0],
        markerTemplate: 'islands#yellowStretchyIcon'
    },
    {
        id: 2,
        polygonCoordinates: [
            [52.09571818127079,23.756590160266573],
            [52.09572520223125,23.756619664565743],
            [52.09633789699138,23.75628820157297],
            [52.096384152064665,23.756518200995988],
            [52.09563062567057,23.756922083632116],
            [52.09572968067452,23.757406096630692],
            [52.095804781643245,23.757366408319218],
            [52.0958211724548,23.75744528202805],
            [52.09556237761262,23.75758425398267],
            [52.09539913939574,23.756785290972392],
            [52.09553362253693,23.75671052439608],
            [52.09555659562392,23.756711530224464],
            [52.09566696952561,23.756652521626176],
            [52.095661187550625,23.756623017327005],
            [52.09571818127079,23.756590160266573]
        ],
        name: '2-й корпус',
        textCoordinates: [52.095894585176985,23.756666998816936],
        fillColor: '#3498db55',
        strokeColor: '#2980b9',
        offset: [0,0],
        markerTemplate: 'islands#blueStretchyIcon'
    },
    {
        id: 3,
        polygonCoordinates: [
            [52.09539859034486,23.756790477898342],
            [52.095463844404485,23.757109660771118],
            [52.09462021486835,23.757568004520536],
            [52.09455454655992,23.75724882164776],
            [52.09539859034486,23.756790477898342]
        ],
        name: '3-й корпус',
        textCoordinates: [52.09505786347536,23.757160308750276],
        fillColor: '#db343455',
        strokeColor: '#db3434',
        offset: [0,0],
        markerTemplate: 'islands#redStretchyIcon'
    },
    {
        id: 4,
        polygonCoordinates: [
            [52.0958065592465,23.759146959789224],
            [52.09579633757247,23.7591519051121],
            [52.09576546603741,23.758994576789586],
            [52.09577496497349,23.758990218199916],
            [52.095722514300824,23.7587266911642],
            [52.09571260235583,23.758733396686743],
            [52.09569773443399,23.758653265692306],
            [52.09560811379959,23.75869919852182],
            [52.09562463374582,23.758778323687746],
            [52.095564748911684,23.75881118074818],
            [52.095577345383525,23.75886650130912],
            [52.09557249264482,23.758867339499425],
            [52.09561219216199,23.759072947584176],
            [52.09562950664495,23.75906632999819],
            [52.09565921107051,23.759221315505346],
            [52.09564551920821,23.75922953800551],
            [52.095688758181915,23.759453183652223],
            [52.09569263649092,23.75945388714461],
            [52.09570369709073,23.759508938309672],
            [52.0957745519764,23.759474201353008],
            [52.09581796828391,23.759690382699855],
            [52.09589525023903,23.759649784385353],
            [52.09584992389817,23.759419766277748],
            [52.095860042310804,23.759416018881048],
            [52.0958065592465,23.759146959789224]
        ],
        name: '5-й корпус',
        textCoordinates: [52.0957112144053,23.759098457954728],
        fillColor: '#34db6055',
        strokeColor: '#34db60',
        offset: [0,0],
        markerTemplate: 'islands#darkGreenStretchyIcon'
    },
    {
        id: 5,
        polygonCoordinates: [
            [52.095869978863966,23.75766735499047],
            [52.09597157583621,23.758174292494296],
            [52.09581752830356,23.75825542931694],
            [52.095731582689915,23.757839921856476],
            [52.0957410816333,23.75783455743845],
            [52.09572290973989,23.75774470343639],
            [52.095869978863966,23.75766735499047]
        ],
        name: 'Галерея',
        textCoordinates: [52.095840613917844,23.757952574635055],
        fillColor: '#c534db55',
        strokeColor: '#c534db',
        offset: [0,0],
        markerTemplate: 'islands#pinkStretchyIcon'
    },
    {
        id: 6,
        polygonCoordinates: [
            [52.096532007389754,23.75738827545522],
            [52.09663525480333,23.757903930138536],
            [52.09646881985409,23.757991772484054],
            [52.09636639803663,23.757476788352808],
            [52.096532007389754,23.75738827545522]
        ],
        name: 'Актовый зал',
        textCoordinates: [52.09649946952253,23.757697050164982],
        fillColor: '#1518d355',
        strokeColor: '#1518d3',
        offset: [0,0],
        markerTemplate: 'islands#darkBlueStretchyIcon'
    },
    {
        id: 7,
        polygonCoordinates: [
            [52.09610769232424,23.759582560666956],
            [52.09665955299924,23.759292196079105],
            [52.096705394748746,23.759521524949925],
            [52.0958390785136,23.759975574410262],
            [52.09578621491956,23.75970936516553],
            [52.09589477329895,23.75965204173709],
            [52.09609963893884,23.759543026648032],
            [52.09610769232424,23.759582560666956]
        ],
        name: 'Спортивный комплекс',
        textCoordinates: [52.09616862568659,23.759671329976513],
        fillColor: '#d3811555',
        strokeColor: '#d38115',
        offset: [0,0],
        markerTemplate: 'islands#orangeStretchyIcon'
    },
    {
        id: 8,
        polygonCoordinates: [
            [52.09500663461377,23.760659503601403],
            [52.09504628301156,23.760874080322587],
            [52.0943703830019,23.761214509559274],
            [52.09433073400037,23.761003956151598],
            [52.09500663461377,23.760659503601403]
        ],
        name: 'Общежитие №1',
        textCoordinates: [52.094688361687844,23.760931567409827],
        fillColor: '#8234db55',
        strokeColor: '#8234db',
        offset: [0,0],
        markerTemplate: 'islands#violetStretchyIcon'
    },
    {
        id: 9,
        polygonCoordinates: [
            [52.09444945841464,23.761728020516294],
            [52.09446298447413,23.761799392638316],
            [52.09515594762058,23.761464451836048],
            [52.09519518288252,23.76167701690054],
            [52.09449521988712,23.76201582252813],
            [52.09448483268635,23.76196140619588],
            [52.093867985901255,23.762258308372328],
            [52.09382606486641,23.762029691400866],
            [52.09444945841464,23.761728020516294]
        ],
        name: 'Общежитие №2',
        textCoordinates: [52.09451063644836,23.761881830207802],
        fillColor: '#8234db55',
        strokeColor: '#8234db',
        offset: [0,0],
        markerTemplate: 'islands#violetStretchyIcon'
    },
    {
        id: 10,
        polygonCoordinates: [
            [52.09461042133827,23.759805800429397],
            [52.094639331889944,23.759958686343175],
            [52.09484723746681,23.759856762400673],
            [52.094882342947194,23.76004719924046],
            [52.094623224584986,23.760174604168572],
            [52.094599802831844,23.760042277601038],
            [52.094392591978284,23.760143303217827],
            [52.09435314950144,23.759933101933253],
            [52.09461042133827,23.759805800429397]
        ],
        name: 'Общежитие №3',
        textCoordinates: [52.09460185949256,23.75994894968477],
        fillColor: '#8234db55',
        strokeColor: '#8234db',
        offset: [0,0],
        markerTemplate: 'islands#violetStretchyIcon'
    },
    {
        id: 11,
        polygonCoordinates: [
            [52.09411387144938,23.760914859539838],
            [52.09414856449737,23.761108649141264],
            [52.093873910460026,23.761242089039882],
            [52.09384949094939,23.76110772713164],
            [52.09364174387055,23.761210122877092],
            [52.093602868625496,23.761001528418664],
            [52.093860900489524,23.760874961681132],
            [52.09388919200728,23.76102684176612],
            [52.09411387144938,23.760914859539838]
        ],
        name: 'Общежитие №4',
        textCoordinates: [52.093848452917825,23.76100198623656],
        fillColor: '#8234db55',
        strokeColor: '#8234db',
        offset: [0,0],
        markerTemplate: 'islands#violetStretchyIcon'
    },
    {
        id: 12,
        polygonCoordinates: [
            [52.09559735432828,23.75776676932559],
            [52.0957369477138,23.758418546116204],
            [52.09549410450026,23.758552656566962],
            [52.09535533635314,23.757903561985362],
            [52.09559735432828,23.75776676932559]
        ],
        name: 'Парковка №1',
        textCoordinates: [52.09554851099431,23.758150721958366],
        fillColor: '#808080',
        strokeColor: '#444444',
        offset: [0,0],
        markerTemplate: 'islands#grayStretchyIcon'
    },
    {
        id: 13,
        polygonCoordinates: [
            [52.09527788261514,23.758071514612148],
            [52.09540551601555,23.758615063696553],
            [52.09506891923676,23.758826287656476],
            [52.09494091453409,23.75828368109622],
            [52.09527788261514,23.758071514612148]
        ],
        name: 'Парковка №2',
        textCoordinates: [52.09519207959898,23.75844865609265],
        fillColor: '#808080',
        strokeColor: '#444444',
        offset: [0,0],
        markerTemplate: 'islands#grayStretchyIcon'
    },
    {
        id: 14,
        polygonCoordinates: [
            [52.096068471897375,23.760651535846776],
            [52.096201805815454,23.761434315161537],
            [52.096126640988096,23.761472536639996],
            [52.09610681727615,23.76153422744735],
            [52.09543315057537,23.761835794713495],
            [52.0954021755376,23.76179757323504],
            [52.095265690951855,23.761070406058064],
            [52.096068471897375,23.760651535846776]
        ],
        name: 'Парковка №3',
        textCoordinates: [52.09573246630966,23.761270913246236],
        fillColor: '#808080',
        strokeColor: '#444444',
        offset: [0,0],
        markerTemplate: 'islands#grayStretchyIcon'
    },
    {
        id: 15,
        polygonCoordinates: [
            [52.09778951528196,23.759956519393256],
            [52.09802838453831,23.76137522571337],
            [52.09651635585424,23.762112257350413],
            [52.09634663403593,23.761202411002312],
            [52.09643997009805,23.76062694944438],
            [52.09778951528196,23.759956519393256]
        ],
        name: 'Стадион',
        textCoordinates: [52.097149042058945,23.76108560718589],
        fillColor: '#d3811555',
        strokeColor: '#d38115',
        offset: [0,0],
        markerTemplate: 'islands#orangeStretchyIcon'
    },
    {
        id: 16,
        polygonCoordinates: [
            [52.09422945881198,23.760015804548487],
            [52.09435175213908,23.76065493477244],
            [52.09409327703843,23.760787068917335],
            [52.09397192127716,23.76014471520943],
            [52.09422945881198,23.760015804548487]
        ],
        name: 'ТЦ "Зодчие"',
        textCoordinates: [52.09416826578735,23.760414355226644],
        fillColor: '#e8e53355',
        strokeColor: '#c4c22b',
        offset: [0,0],
        markerTemplate: 'islands#yellowStretchyIcon'
    },
    {
        id: 17,
        polygonCoordinates: [
            [52.09672690637777,23.7595174864868],
            [52.096796081867645,23.75951945408721],
            [52.09699343022129,23.75941449952812],
            [52.09712168331967,23.760050370287242],
            [52.09649513698017,23.76035717609427],
            [52.09636372487065,23.759706302831],
            [52.09672690637777,23.7595174864868]
        ],
        name: 'Игровая площадка',
        textCoordinates: [52.09673508058623,23.759923402035138],
        fillColor: '#d3811555',
        strokeColor: '#d38115',
        offset: [0,0],
        markerTemplate: 'islands#orangeStretchyIcon'
    },
    {
        id: 18,
        polygonCoordinates: [
            [52.096339101265336,23.759822348070013],
            [52.09595666909071,23.759984621715503],
            [52.09634075323284,23.76030514569277],
            [52.09641756966248,23.760271618080044],
            [52.096339101265336,23.759822348070013] 
        ],
        name: 'Игровая площадка',
        textCoordinates: [52.09625512218848,23.760081944208203],
        fillColor: '#d3811555',
        strokeColor: '#d38115',
        offset: [0,0],
        markerTemplate: 'islands#orangeStretchyIcon'
    },
]

var categoriesIsVisible = {
    coffeepoints: false,
    canteens: false,
    buffets: false,
    printing_points: false,
    deans: false
};

function init() {
    const myMap = new ymaps.Map("map", {
        center: [52.095648, 23.758507],
        zoom: 18	
    });

    myMap.controls.remove('searchControl'); // удаляем поиск
    myMap.controls.remove('trafficControl'); // удаляем контроль трафика
    myMap.controls.remove('fullscreenControl'); // удаляем кнопку перехода в полноэкранный режим
    myMap.controls.remove('zoomControl'); // удаляем контрол зуммирования
    //myMap.controls.remove('geolocationControl'); // удаляем геолокацию
    //myMap.controls.remove('rulerControl'); // удаляем контрол правил
    //myMap.behaviors.disable(['scrollZoom']); // отключаем скролл карты (опционально)


    function showMarkers(category) {
        if (categoriesIsVisible[category]) {
            categoriesData[category].forEach((item) => {
                myMap.geoObjects.each((geoObject) => {
                    if (geoObject.geometry && geoObject.geometry.getCoordinates()[0] === item.lat && geoObject.geometry.getCoordinates()[1] === item.lon) {
                        myMap.geoObjects.remove(geoObject);
                    }
                });
            });
            categoriesIsVisible[category] = false;
        } else {
            categoriesData[category].forEach((item) => {
                const placemark = new ymaps.Placemark([item.lat, item.lon], {
                    balloonContentHeader: item.name,
                    balloonContentBody: item.photo,
                    balloonContentFooter: item.description+item.work_time,
                    hintContent: item.hint
                },
                {
                    iconLayout: 'default#image',
                    iconImageHref: item.icon,
                    iconImageSize: [25, 25],
                    iconImageOffset: [0, 0]
                }
                );
                myMap.geoObjects.add(placemark);
            });
            categoriesIsVisible[category] = true;
        }
    }

    const categoryButtons = document.querySelectorAll('.category_button');
    categoryButtons.forEach((button) => {
        button.addEventListener('click', (e) => {
            const category = e.currentTarget.dataset.category;
            toggleCategory(button, category);
        });
    });

    function toggleCategory(button, category) {
        const isActive = button.classList.toggle('active');
        showMarkers(category);
    }

    const polygonManager = new ymaps.ObjectManager();
    myMap.geoObjects.add(polygonManager);
    
    const pathManager = new ymaps.ObjectManager();
    myMap.geoObjects.add(pathManager);

    const inputsManager = new ymaps.ObjectManager();
    myMap.geoObjects.add(inputsManager);

    document.getElementById('togglePolygons').addEventListener('change', function() {
        if (this.checked) {
            pathsData.forEach((item) => {
                pathManager.add({
                    type: 'Feature',
                    id: item.id,
                    geometry: {
                        type: 'LineString', 
                        coordinates: item.coordinates,
                    },
                    properties: {
                    },
                    options: {
                        strokeColor: "#964b00",
                        strokeWidth: 2,
                        strokeStyle: [5, 2]
                    }
                });
            });


            
            const customBalloonLayout = ymaps.templateLayoutFactory.createClass(
                '<div class="custom-balloon">' +
                '<h3 class="custom-balloon-header">$[properties.balloonContentHeader]</h3>' +
                '<div class="custom-balloon-content">' +
                '<form>' +
                '<label for="imageSelect">Выберите этаж:</label>' +
                '<select id="floorSelect">' +
                '<option value="text">Выберите этаж</option>' +
                '<option value="1 этаж.jpg">Этаж 1</option>' +
                '<option value="2 этаж.jpg">Этаж 2</option>' +
                '<option value="3 этаж.jpg">Этаж 3</option>' +
                '<option value="4 этаж.jpg">Этаж 4</option>' +
                '<option value="5 этаж.jpg">Этаж 5</option>' +
                // Добавьте другие варианты этажей по мере необходимости
                '</select>' +
                '<br>' +
                '<img id="selectedImage" src="" alt="Selected Image">' +
                '</form>' +
                '</div>' +
                '</div>', {
                build: function () {
                    // Вызывается при создании макета балуна
                    // Получаем ссылку на макет
                    customBalloonLayout.superclass.build.call(this);
            
                    // Находим элементы в DOM
                    this._floorSelect = document.getElementById('floorSelect');
                    this._selectedImage = document.getElementById('selectedImage');
            
                    // Подписываемся на событие изменения выбранного значения в списке
                    this._floorSelect.addEventListener('change', this._onFloorSelectChange.bind(this));
                },
            
                clear: function () {
                    // Вызывается при удалении макета балуна
                    // Отписываемся от события
                    this._floorSelect.removeEventListener('change', this._onFloorSelectChange.bind(this));
            
                    // Вызываем метод clear родительского класса
                    customBalloonLayout.superclass.clear.call(this);
                },
            
                _onFloorSelectChange: function () {
                    // Обработчик изменения выбранного значения в списке
                    const selectedValue = this._floorSelect.value;
            
                    if (selectedValue === 'text') {
                        // Если выбран текст "Выберите этаж", скрываем изображение
                        this._selectedImage.style.display = 'none';
                    } else {
                        // Иначе, отображаем изображение соответствующего этажа
                        this._selectedImage.style.display = 'block';
                        this._selectedImage.src = selectedValue;
                    }
                }
            });
            
            const customBalloonContentLayout = ymaps.templateLayoutFactory.createClass(
                '<style>.custom-balloon-content { background-color: white; }</style>' +
                '<h3 class="custom-balloon-header">$[properties.balloonContentHeader]</h3>' +
                '<div class="custom-balloon-content">' +
                'Дополнительный текст балуна: $[properties.balloonContent]' +
                '</div>'
            );
            
            
            
                





            polygonData.forEach((item) => {
                polygonManager.add({
                    type: 'Feature',
                    id: item.id,
                    geometry: {
                        type: 'Polygon',
                        coordinates: [
                            item.polygonCoordinates,
                            []
                        ],
                        fillRule: 'nonZero'
                    },
                    properties: {
                        balloonContentHeader: item.name,
                        hintContent: item.name,
                        labelContent: item.name
                    },
                    options: {
                        fillColor: item.fillColor,
                        strokeColor: item.strokeColor,
                        opacity: 0.75,
                        strokeWidth: 3,
                        strokeStyle: 'solid',
                        labelDefaults: 'dark',
                        labelLayout: '<div style="color: #1c65e8;">$[properties.labelContent]</div>',
                        labelPermissibleInaccuracyOfVisibility: 22,
                        balloonLayout: customBalloonLayout,
                        balloonContentLayout: customBalloonContentLayout
                    }
                });
            });

            const polylabel = new ymaps.polylabel.create(myMap, polygonManager);

            inputsData.forEach((item) => {
                inputsManager.add({
                    type: 'Feature',
                    id: item.id,
                    geometry: {
                        type: 'Point',
                        coordinates: item.coordinates
                    },
                    properties: {
                        balloonContentHeader: item.name,
                        hintContent: item.name,
                        labelContent: item.name
                    },
                    options: {
                        iconLayout: 'default#image',
                        iconImageHref: 'https://cdn-icons-png.flaticon.com/128/1427/1427060.png',
                        iconImageSize: [20, 20],
                        iconImageOffset: item.offset
                    }
                });
            });

        } else {
            polygonManager.removeAll();
            //polygonManager.objects.remove(polygonManager.objects.getById('1'));
            pathManager.removeAll();
            inputsManager.removeAll();

        }
    });
    
};

ymaps.ready(['polylabel.create']).then(init);