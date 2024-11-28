//JS에서 사용할 수 있는 데이터 타입
//1.숫자 number
//2.문자열 string
//3.논리 boolean
//4.미정의 undefined
//5. 객체 object
//6. 함수 function

//단항, 이항, 삼항
//타입확인 연산자: typeof


// 변수선언 키워드 변수명;
// var let const/상수
//` : back-tick

var num = `10`;
num = true;
console.log(typeof num);
num =10;
console.log(typeof num);
//js의 데이터 타입은 값이 지정되는 순간 결정된다.
//literal: 문자의

var n = undefined;
console.log(typeof n);


//객체 리터럴
//객체는 key를 통해 value를 기억
var obj = {no:1, name:'한주연'};
// no 는 obj의 property
// obj.no의 타입은? number
obj.score = 90;
console.log(obj.score);

// 객체의 property를 제거하는 연산자
delete obj.no;
console.log(obj);

//자바스크립트 문법에서 {} >>객체 리터럴
//[] 배열 리터럴
function a() {
    console.log("hello");
    console.log("world");
    
}
a();
a();
a();

var b = function() {};

var c = () => {};

var obj2= {
    a:{
        b:10,
        c:true,
        d:10
    },
    b:20
};
console.log(obj2.a.b);


