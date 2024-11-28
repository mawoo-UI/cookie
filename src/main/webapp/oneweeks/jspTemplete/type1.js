// JS에서 사용할 수 있는 데이터 타입
// 1. 숫자 number
// 2. 문자열 string
// 3. 논리 boolean
// 4. 미정의 undefined
// 5. 객체 object
// 6. 함수 function

// 단항, 이항, 삼항
// 타입확인 연산자 : typeof

// 변수선언키워드 변수명;
// var let const
// ` : back-tick
var num = "10";
num = true;
console.log(typeof num);
num = 10;
console.log(typeof num);
// js의 데이터타입은 값이 지정되는 순간 결정된다.
// literal

var n = undefined;
console.log(typeof n);

// 객체 리터럴
// 객체는 key를 통해 value를 기억
var obj = {no:1, name:'한주연'};
// no는 obj의 property
// obj.no 의 타입은? number
obj.score = 90;
console.log(obj.score);

// 객체의 property를 제거하는 연산자
delete obj.no;
console.log(obj);

// 자바스크립트 문법에서 {} >> 객체
function a() {
    console.log("hello", 1, 2, true)
    console.log("world")
};
a();
a();
var b = function() {};
var c = () => {};

// head, body

var obj2 = {
    d:10, 
    e:20,
    가:30,
    a:{
        b:10,
        c:true,
        d:10
    },
    b:20
};
console.log(obj2.a.b);
// {} 객체 리터럴 : 프로퍼티, object, {} 리터럴
// [] 배열 리터럴 : 인덱스, array(object), [] 리터럴
// 배열의 특징

var arr = [10, 20, 30];
console.log(arr[0]);

// 순번 >> sequence
// 색인 >> index

var boards = [
    {
        pno:1,
        title:"제목",
        content:"내용",
        writer:"redcookie",
        cno:1
    },
    {
        pno:2,
        title:"제목",
        content:"내용",
        writer:"purplecookie",
        cno:1
    }
];

console.log(boards[1].writer)
var jsonStr = JSON.stringify(boards);
console.log(jsonStr);


// 자료구조
// 배열+클래스의 결합을 통해 표현
// List+Map의 결합을 통해 표현
// [{},{},{},{},{}]
// {a:[]}
var jsonStr = '[{"uuid":"08c26586-1a51-40a2-8515-ff211a22ae67.dwg","origin":"Modeling-2009.09.26-1.dwg","path":"2024/11/28","image":false},{"uuid":"c42e42bd-9003-4f33-b99d-87198b38381a.pdf","origin":"modeling-2009.09.26-1-배치1.pdf","path":"2024/11/28","image":false},{"uuid":"1267e404-d3a6-42b1-8805-f6edabb742c2.pdf","origin":"modeling-2011.06.11-3-layout1.pdf","path":"2024/11/28","image":false},{"uuid":"7e358d33-e413-4dfc-99b7-d9db084dfeb3.dwg","origin":"치수연습(tmove 변수) 도면.dwg","path":"2024/11/28","image":false}]';
var upload = JSON.parse(jsonStr);
console.log(upload);

var n = null;
console.log(typeof n);
console.log(typeof []);
console.log(typeof {});

var obj = {a:undefined, b:10, c:null};
console.log(JSON.stringify(obj));


