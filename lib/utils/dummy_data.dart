import 'package:spod_app/model/field_facility.dart';
import 'package:spod_app/model/field_order.dart';
import 'package:spod_app/model/sport_category.dart';
import 'package:spod_app/model/sport_field.dart';
import 'package:spod_app/model/user.dart';

var sampleUser = UserModel(
    id: "khaledbelal",
    name: "khaled belal",
    email: "khaledbelal@gmail.com",
    accountType: "Premium",
    imageProfile: "assets/images/user_profile_example.png");

var _basketball = SportCategory(
  name: "Basketball",
  image: "assets/icons/basketball.png",
);
var _FootBall = SportCategory(
  name: "FootBall",
  image: "assets/icons/soccer.png",
);
var _volley = SportCategory(
  name: "Volley",
  image: "assets/icons/volley.png",
);
var _tableTennis = SportCategory(
  name: "Table Tennis",
  image: "assets/icons/table_tennis.png",
);
var _tennis = SportCategory(
  name: "Tennis",
  image: "assets/icons/tennis.png",
);

List<SportCategory> sportCategories = [
  _basketball,
  _tennis,
  _volley,
  _FootBall,
  _tableTennis,
];

var _wifi = FieldFacility(name: "WiFi", imageAsset: "assets/icons/wifi.png");
var _toilet =
    FieldFacility(name: "Toilet", imageAsset: "assets/icons/toilet.png");
var _changingRoom = FieldFacility(
    name: "Changing Room", imageAsset: "assets/icons/changing_room.png");
var _canteen =
    FieldFacility(name: "Canteen", imageAsset: "assets/icons/canteen.png");
var _locker =
    FieldFacility(name: "Lockers", imageAsset: "assets/icons/lockers.png");
var _chargingArea = FieldFacility(
    name: "Charging Area", imageAsset: "assets/icons/charging.png");
SportField futsalRiono = SportField(
  id: "01",
  name: "Fifth Settlement Youth Center",
  address: " XCWH+95V، رقم 11، قسم أول القاهرة الجديدة، محافظة القاهرة  4722265",
  category: _FootBall,
  facilities: [_wifi, _toilet],
  phoneNumber: "01151077429",
  openDay: "Monday to Sunday",
  openTime: "08.00",
  closeTime: "16.00",
  imageAsset: "assets/images/pringsewu_futsal.jpg",
  price: 50,
  author: "Go to the stadium",
  authorUrl: "https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%B4%D8%A8%D8%A7%D8%A8+%D8%A7%D9%84%D8%AA%D8%AC%D9%85%D8%B9+%D8%A7%D9%84%D8%AE%D8%A7%D9%85%D8%B3%E2%80%AD/@29.9815909,31.6098949,11z/data=!4m10!1m2!2m1!1z2YXZhNin2LnYqCDYrdis2LIg2YPZiNix2Ycg2YLYr9mFINin2YTYqtit2YXYuSDYp9mE2K7Yp9mF2LM!3m6!1s0x14583cbc7b7f91bb:0xaa95498390edad3e!8m2!3d29.9959757!4d31.4279366!15sCjvZhdmE2KfYudioINit2KzYsiDZg9mI2LHZhyDZgtiv2YUg2KfZhNiq2K3Zhdi5INin2YTYrtin2YXYs1o9IjvZhdmE2KfYudioINit2KzYsiDZg9mI2LHZhyDZgtiv2YUg2KfZhNiq2K3Zhdi5INin2YTYrtin2YXYs5IBC3Nwb3J0c19jbHVimgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU41TkdSMVNGUlJFQUXgAQA!16s%2Fg%2F123594k4k",
  imageUrl: "https://unsplash.com/photos/oXCgQRsb2ug",
);

SportField futsalRionov = SportField(
  id: "01",
  name: "El Tagamoa Heights Club",
  address: "XCJV+JMM، 3rd Compound، NEW CAIRO، قسم ثالث القاهره الجديده، محافظة القاهرة  4713541",
  category: _FootBall,
  facilities: [_wifi, _toilet],
  phoneNumber: "0227576464",
  openDay: "Monday to Sunday",
  openTime: "08.00",
  closeTime: "16.00",
  imageAsset: "assets/images/pringsewu_futsal.jpg",
  price: 200,
  author: "Go to the stadium",
  authorUrl: "https://www.google.com/maps/place/%D9%86%D8%A7%D8%AF%D9%8A+%D8%A7%D9%84%D8%AA%D8%AC%D9%85%D8%B9+%D9%87%D8%A7%D9%8A%D8%AA%D8%B3%E2%80%AD/@29.9815909,31.6098949,11z/data=!4m10!1m2!2m1!1z2YXZhNin2LnYqCDYrdis2LIg2YPZiNix2Ycg2YLYr9mFINin2YTYqtit2YXYuSDYp9mE2K7Yp9mF2LM!3m6!1s0x14583cab1807a803:0xe95413d2d2f88d4d!8m2!3d29.981576!4d31.444181!15sCjvZhdmE2KfYudioINit2KzYsiDZg9mI2LHZhyDZgtiv2YUg2KfZhNiq2K3Zhdi5INin2YTYrtin2YXYs1o9IjvZhdmE2KfYudioINit2KzYsiDZg9mI2LHZhyDZgtiv2YUg2KfZhNiq2K3Zhdi5INin2YTYrtin2YXYs5IBBGNsdWKaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUkhOVGxwWTBKM0VBReABAA!16s%2Fg%2F1tjp9qzx",
  imageUrl: "https://unsplash.com/photos/oXCgQRsb2ug",
);

SportField basketballVio = SportField(
    id: "02",
    name: "Basketballers Academy",
    address: " 2F75+R68, Unnamed Road, قسم أول القاهرة الجديدة، محافظة القاهرة",
    category: _basketball,
    facilities: [_wifi, _toilet, _changingRoom, _canteen],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com/maps/place/Basketballers+Academy/@30.0179206,31.6351748,12z/data=!4m10!1m2!2m1!1z2YXZhNin2LnYqCDYs9mE2Kkg2YHZiiDYp9mE2YLYp9mH2LHYqQ!3m6!1s0x14582331a6262f47:0x5b919ff21fe7ce2!8m2!3d30.0145251!4d31.4580785!15sCiXZhdmE2KfYudioINiz2YTYqSDZgdmKINin2YTZgtin2YfYsdipkgEQYmFza2V0YmFsbF9jb3VydOABAA!16s%2Fg%2F11fl0_q7fw",
    imageUrl: "https://unsplash.com/photos/zygvOSND4rI",
    phoneNumber: "01000108431",
    openDay: "All Day",
    openTime: "07.00",
    closeTime: "22.00",
    imageAsset: "assets/images/vio_basketball.jpg",
    price: 250);
SportField volleyTanjung = SportField(
    id: "03",
    name: "Volley Ball Court Royal sporting club",
    address: "2G6F+CJ5، قسم أول القاهرة الجديدة، محافظة القاهرة  4760001",
    category: _volley,
    facilities: [_wifi, _toilet, _canteen, _chargingArea, _changingRoom],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com/search?q=Volley+Ball+Court+Royal+sporting+club&tbm=lcl&sxsrf=AJOqlzXonbMNhwjRIqqmuRaDZ5-EpamWHw%3A1678406681620&ei=GXQKZMO4JaakkdUP8um-iAg&ved=0ahUKEwiDqa-QiND9AhUmUqQEHfK0D4EQ4dUDCAk&oq=Volley+Ball+Court+Royal+sporting+club&gs_lcp=Cg1nd3Mtd2l6LWxvY2FsEAwyBwghEKABEAo6BwgjEOoCECdQ-AhY-AhgixVoAXAAeACAAbsBiAG7AZIBAzAuMZgBAKABAaABArABCsABAQ&sclient=gws-wiz-local#rlfi=hd:;si:8641250360748423264;mv:[[30.0130818,31.5322116],[29.992465199999994,31.4222971]]",
    imageUrl: "https://unsplash.com/photos/rgo4m8J0H2M",
    phoneNumber: "01125569587",
    openDay: "All Day",
    openTime: "07.00",
    closeTime: "17.00",
    imageAsset: "assets/images/voli_pantai.jpg",
    price: 115);
SportField tableTennisDCortez = SportField(
    id: "04",
    name: "International Bowling Centre",
    address: "38F5+688، ممر داخل الاستاد، الأستاد، مدينة نصر، محافظة القاهرة 4436021",
    category: _tableTennis,
    facilities: [_wifi, _toilet, _canteen],
    author: "Ivan cortez",
    authorUrl: "https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D8%A8%D9%88%D9%84%D9%8A%D9%86%D8%AC+%D8%A7%D9%84%D8%AF%D9%88%D9%84%D9%8A%E2%80%AD/@30.0730264,31.3083181,15z/data=!4m6!3m5!1s0x14583fb4cc95fe09:0x6ef2f5c6c91e92cd!8m2!3d30.0730264!4d31.3083181!16s%2Fg%2F11cms6krrr",
    imageUrl: "https://unsplash.com/photos/c9aGBqkeoE4",
    phoneNumber: "0222612122",
    openDay: "All Day",
    openTime: "09.00",
    closeTime: "23.00",
    imageAsset: "assets/images/tenis_meja_cortez.jpg",
    price: 150);
SportField basketballKali = SportField(
    id: "05",
    name: "Obour Club basketball court",
    address: "6FQ3+4M8، الحي الترفيهي، العبور،، العبور، محافظة القاهرة ",
    category: _basketball,
    facilities: [_toilet],
    author: "Ilnur kalimullin",
    authorUrl: "https://www.google.com/maps/place/%D9%85%D9%84%D8%B9%D8%A8+%D9%83%D8%B1%D8%A9+%D8%A7%D9%84%D8%B3%D9%84%D8%A9+%D8%A8%D9%86%D8%A7%D8%AF%D9%89+%D8%A7%D9%84%D8%B9%D8%A8%D9%88%D8%B1%E2%80%AD/@30.2458697,31.4872593,14z/data=!4m10!1m2!2m1!1z2YXZhNin2LnYqCDYs9mE2Kkg2YHZiiDYp9mE2YLYp9mH2LHYqQ!3m6!1s0x145805d93fe20959:0x8f978f5e43454c99!8m2!3d30.2377774!4d31.4541881!15sCiXZhdmE2KfYudioINiz2YTYqSDZgdmKINin2YTZgtin2YfYsdipWiciJdmF2YTYp9i52Kgg2LPZhNipINmB2Yog2KfZhNmC2KfZh9ix2KmSARBiYXNrZXRiYWxsX2NvdXJ0mgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVVJqY21KVVVIZG5SUkFC4AEA!16s%2Fg%2F11j7wblj98",
    imageUrl: "https://unsplash.com/photos/kP1AxmCyEXM",
    phoneNumber: "01125569587",
    openDay: "All Day",
    openTime: "06.00",
    closeTime: "18.00",
    imageAsset: "assets/images/kali_basketball.jpg",
    price: 150);

SportField basketballLM = SportField(
    id: "06",
    name: "Cairo Basketball Zone",
    address: "23A يوسف عباس، الشركات، مدينة نصر، محافظة القاهرة  4451020",
    category: _basketball,
    facilities: [_toilet],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com.eg/maps/place/Cairo+Basketball+Zone/@30.0744984,31.3206129,17z/data=!4m10!1m2!2m1!1z2YXZhNin2LnYqCDZg9mI2LHZhyDYs9mE2Ycg2YXYr9mK2YbZhyAg2YbYtdix!3m6!1s0x1458410e0663fccb:0x2d9f4395f9a8f4b2!8m2!3d30.0742988!4d31.3165359!15sCi3ZhdmE2KfYudioINmD2YjYsdmHINiz2YTZhyDZhdiv2YrZhtmHICDZhti12LGSAQ9iYXNrZXRiYWxsX2NsdWLgAQA!16s%2Fg%2F11fkvqbz51",
    imageUrl: "https://unsplash.com/photos/77pAlgB8v_E",
    phoneNumber: "01094292015",
    openDay: "All Day",
    openTime: "09.00",
    closeTime: "18.00",
    imageAsset: "assets/images/lm_basketball.jpg",
    price: 500);

SportField tennisDC = SportField(
    id: "07",
    name: "Coachium Tennis Academy",
    address: " لعبور، محافظة القاهرة 6360224",
    category: _tennis,
    facilities: [_wifi, _toilet, _locker],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com/search?q=coachium+tennis+academy&tbm=lcl&sxsrf=AJOqlzVATeKO95Sxob9Dqlp5VI2m_5YYfA%3A1678406406206&ei=BnMKZPGVDIqvkdUPuo6-8AE&oq=Coachium+Tennis+Academy&gs_lcp=Cg1nd3Mtd2l6LWxvY2FsEAEYADIICAAQgAQQywE6AggmUKoIWKoIYKkTaAJwAHgAgAFsiAHVAZIBAzAuMpgBAKABAqABAcABAQ&sclient=gws-wiz-local#rlfi=hd:;si:5191030360441923415;mv:[[30.248269999999998,31.503982500000003],[29.979152700000004,31.2995619]]",
    imageUrl: "https://unsplash.com/@noripurrs",
    phoneNumber: " 0106 888 9647",
    openDay: "All Day",
    openTime: "08.00",
    closeTime: "17.00",
    imageAsset: "assets/images/dc_tennis_court.jpg",
    price: 250);

SportField tennisCoates = SportField(
    id: "08",
    name: "Tennis courts - Al-Zohor Club in the assembly",
    address: "2F9R+24H، المستثمرين الجنوبية،، قسم أول القاهرة الجديدة، محافظة القاهرة",
    category: _tennis,
    facilities: [_toilet, _changingRoom, _chargingArea],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com/search?q=%D9%85%D9%84%D8%A7%D8%B9%D8%A8+%D8%AA%D9%86%D8%B3+-+%D9%86%D8%A7%D8%AF%D9%8A+%D8%A7%D9%84%D8%B2%D9%87%D9%88%D8%B1+%D8%A8%D8%A7%D9%84%D8%AA%D8%AC%D9%85%D8%B9&biw=1366&bih=657&sxsrf=AJOqlzWxHTlmr6xgL5CrFJweip9phRjZRQ:1678408898558&ei=wnwKZOXYIbmnkdUPmbG9oAU&ved=0ahUKEwjlwb6xkND9AhW5U6QEHZlYD1QQ4dUDCAk&uact=5&oq=%D9%85%D9%84%D8%A7%D8%B9%D8%A8+%D8%AA%D9%86%D8%B3+-+%D9%86%D8%A7%D8%AF%D9%8A+%D8%A7%D9%84%D8%B2%D9%87%D9%88%D8%B1+%D8%A8%D8%A7%D9%84%D8%AA%D8%AC%D9%85%D8%B9&gs_lcp=Cg1nd3Mtd2l6LWxvY2FsEAMyAggmOgQIIxAnUKoTWKoTYKYlaANwAHgAgAGJAYgBhAKSAQMwLjKYAQCgAQKgAQHAAQE&sclient=gws-wiz-local&ibp=gwp;0,6#istate=lrl:mlt&rlmlel=1&trex=m_r:1,m_t:gwp,ru_gs_l:maps-nearby..0.142.0.0.0.4122.1.1.0.0.0.0.1720.1720.8-1.1.0....0.....64.maps-nearby..0.1.1715....0.b8hMjEgXTik,ru_gwp:0%252C6,ru_nrby:1,ru_oq:%25D9%2585%25D9%2584%25D8%25A7%25D8%25B9%25D8%25A8%2520%25D8%25AA%25D9%2586%25D8%25B3%2520-%2520%25D9%2586%25D8%25A7%25D8%25AF%25D9%258A%2520%25D8%25A7%25D9%2584%25D8%25B2%25D9%2587%25D9%2588%25D8%25B1%2520%25D8%25A8%25D8%25A7%25D9%2584%25D8%25AA%25D8%25AC%25D9%2585%25D8%25B9,ru_q:%25D9%2585%25D9%2584%25D8%25A7%25D8%25B9%25D8%25A8%2520%25D8%25AA%25D9%2586%25D8%25B3%2520-%2520%25D9%2586%25D8%25A7%25D8%25AF%25D9%258A%2520%25D8%25A7%25D9%2584%25D8%25B2%25D9%2587%25D9%2588%25D8%25B1%2520%25D8%25A8%25D8%25A7%25D9%2584%25D8%25AA%25D8%25AC%25D9%2585%25D8%25B9%25D8%258C%2520%25D9%2582%25D8%25B3%25D9%2585%2520%25D8%25A3%25D9%2588%25D9%2584%2520%25D8%25A7%25D9%2584%25D9%2582%25D8%25A7%25D9%2587%25D8%25B1%25D8%25A9%2520%25D8%25A7%25D9%2584%25D8%25AC%25D8%25AF%25D9%258A%25D8%25AF%25D8%25A9,ru_start:0 ",
    imageUrl: "https://unsplash.com/photos/BDCTRVu7DwY",
    phoneNumber: "01112138399",
    openDay: "All Day",
    openTime: "08.00",
    closeTime: "15.00",
    imageAsset: "assets/images/tennis_coates.jpg",
    price: 600);

SportField futsalJaya = SportField(
    id: "09",
    name: "Nesta Stadium  ",
    address: "XCJG+795، مدينة نصر، محافظة القاهرة4713141",
    category: _FootBall,
    facilities: [_toilet, _canteen],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com/maps/place/%D9%85%D9%84%D8%B9%D8%A8+%D9%86%D9%8A%D8%B3%D8%AA%D8%A7%E2%80%AD/@29.9815909,31.6098949,11z/data=!4m10!1m2!2m1!1z2YXZhNin2LnYqCDYrdis2LIg2YPZiNix2Ycg2YLYr9mFINin2YTYqtit2YXYuSDYp9mE2K7Yp9mF2LM!3m6!1s0x14583bb02455ffa9:0x832574e3e2562fdc!8m2!3d29.9806369!4d31.4259735!15sCjvZhdmE2KfYudioINit2KzYsiDZg9mI2LHZhyDZgtiv2YUg2KfZhNiq2K3Zhdi5INin2YTYrtin2YXYs5IBDmZvb3RiYWxsX2ZpZWxk4AEA!16s%2Fg%2F11h1729g4r",
    imageUrl: "https://unsplash.com/photos/siurZcdJGEw",
    phoneNumber: "01111102820",
    openDay: "All Day",
    openTime: "08.00",
    closeTime: "18.00",
    imageAsset: "assets/images/jaya_futsal.jpg",
    price: 150);

SportField tennisWing = SportField(
    id: "010",
    name: "Tennis Court Royal Sporting Club",
    address: "2G6G+J35، قسم أول القاهرة الجديدة، محافظة القاهرة 4760001",
    category: _tennis,
    facilities: [_toilet, _changingRoom, _locker, _canteen],
    author: "Go to the stadium",
    authorUrl: "https://www.google.com/maps/place/Tennis+Court+Royal+Sporting+Club/@30.0115249,31.5252468,15z/data=!4m6!3m5!1s0x145823ddc834bea7:0x6d60d54b29115f5c!8m2!3d30.0115249!4d31.5252468!16s%2Fg%2F11f7qz91dt",
    imageUrl: "https://unsplash.com/photos/Bt-oCv_YI3E",
    phoneNumber: "01141548843",
    openDay: "All Day",
    openTime: "09.00",
    closeTime: "17.00",
    imageAsset: "assets/images/wing_tennis.jpg",
    price: 150);


List<SportField> sportFieldList = [
  futsalRionov,
  basketballVio,
  volleyTanjung,
  tableTennisDCortez,
  basketballKali,
  basketballLM,
  tennisDC,
  tennisCoates,
  futsalJaya,
  tennisWing,
  futsalRiono,
];

List<SportField> recommendedSportField = [
  basketballVio,
  tennisWing,
  volleyTanjung,
  tableTennisDCortez,
  futsalRionov
];

List<FieldOrder> dummyUserOrderList = [];

List<String> timeToBook = [
  "06.00",
  "07.00",
  "08.00",
  "09.00",
  "10.00",
  "11.00",
  "12.00",
  "13.00",
  "14.00",
  "15.00",
  "16.00",
  "17.00",
  "18.00",
  "19.00",
  "20.00",
  "21.00",
  "22.00",
  "23.00"
];
