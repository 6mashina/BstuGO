const categoriesData = {
    coffeepoints: [
        {
            lat: 52.09564808831621,
            lon: 23.756754666619592,
            name: 'Кофейня 21',
            icon: 'https://cdn-icons-png.flaticon.com/128/3081/3081183.png',
            description: '<p>Местонахождение: возле лестницы на 1-ом этаже 2-го корпуса</p>',
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
            icon: 'https://cdn-icons-png.flaticon.com/128/1725/1725736.png',
            description: '<p>Местонахождение: возле гардероба на 1-ом этаже 2-го корпуса</p>',
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

function init() {
    const myMap = new ymaps.Map("map", {
        center: [52.095648, 23.758507],
        zoom: 17	
    });

    myMap.controls.remove('searchControl'); // удаляем поиск
    myMap.controls.remove('trafficControl'); // удаляем контроль трафика
    myMap.controls.remove('fullscreenControl'); // удаляем кнопку перехода в полноэкранный режим
    myMap.controls.remove('zoomControl'); // удаляем контрол зуммирования
    //myMap.controls.remove('geolocationControl'); // удаляем геолокацию
    //myMap.controls.remove('rulerControl'); // удаляем контрол правил
    //myMap.behaviors.disable(['scrollZoom']); // отключаем скролл карты (опционально)


    function showCategory(category) {
        myMap.geoObjects.removeAll();

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

        activeCategory = category;
    }

    const categoryButtons = document.querySelectorAll('.category_button');
    categoryButtons.forEach((button) => {
        button.addEventListener('click', (e) => {
            const category = e.currentTarget.dataset.category;
            showCategory(category);
        });
    });

};

ymaps.ready(init);