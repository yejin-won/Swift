//
//  main.swift
//  Day02
//
//  Created by TJ on 2022/07/17.
//

import Foundation

// 문자열과 문자의 결합
let String1 = "hello"
let String2 = " there" // 공백도 문자로 인식함
var welcome = String1 + String2
print(welcome)

var instruction = "look over"
instruction += String2
print(instruction)

let exclamationMark1 : String = "!"
// 메모리를 줄이기 위해서 Character type으로 선언함
// 앱 용량 커지면 등록 시, deny될 수 있음
welcome.append(exclamationMark1)
print(welcome)
// String은 여러 개의 Character로 구성되어 있음
// => 그래서 위의 타입을 바꿔도 출력이 됨

// 문자열 길이
let str : String = "12345,6789"
print(str.count)
// 예시) 아이디 입력 안 했을 경우 알림띄우는 정도
// 조건문(if문)
if str.count == 0{ // (condition) or condition 상관없음
    print("Data가 없습니다.")
}else{
    print("Data는 \(str)입니다.")
}

var str1 : String = ""
if str1.isEmpty{
    print("Check please")
}

// Any
var someAny : Any = 100
print(someAny)
someAny = "어떤 타입도 수용 가능합니다."
print(someAny)
someAny = 123.12
print(someAny)

var someDouble : Double = 12.11
//print(someAny + someDouble) // Any끼리만 연산가능
// Any를 Double로 변환
let someAny1 : Double = someAny as! Double // Double(someAny)불가하므로 as!를 이용(nil값인지 모르니 !필요)
print(someDouble + someAny1) // 결과를 보면 수치에 대한 오류 발생

// nil : null, NULL, Null, NA, NaN
/*
 - nil은 없음을 의미하는 키워드(""은 nil은 의미하는 게 아님)
   => 변수명은 있으나 데이터가 없는 상태를 의미
 nil을 해결 -> !(optional)
 */

// Tuple
// Tuple 사용전 선언 및 출력방법
var dialCode = 82
var isoCode = "KR"
var name = "Korea"
print(dialCode,isoCode,name)

// Tuple 사용
var country = (82, "KR", "Korea")
print(country)
print(country.0,country.1,country.2)
// 변수를 많이 쓰지 않아도 되니 메모리 낭비를 줄일 수 있음 => 앱 성능에도 영향을 미침

var country1 = (dialCode1:82, isoCode1:"KR", name:"Korea")
print(country1.name)
print(country1.2)

let person1 = ("John Doe","201 Main Street", 35 ) // *John Doe : (이름모르는)무명씨
// John Doe lives at 201 Main Street and is 35 years old.
print("\(person1.0) lives at \(person1.1) and is \(person1.2) years old.")

// Type 별칭(alias)
// 기존 Type이든 사용자 Type이든 별칭을 사용할 수 있음.

typealias MyInt = Int
let age : MyInt = 20

//기존 type을 별칭을 붙여 사용하기보다는 튜플에서 사용

typealias person = (name1:String, height:Int, marrige:Bool)
var t1 : person = ("유비",180,true)
var t2 : person = ("관우",185,true)
print(t1.0)

/*
 Tuple을 사용하여 직사각형의 넓이와 둘레를 계산하시오
 - 직사각형의 속성 : 이름, 가로, 세로, 넓이, 둘레
 - 넓이 : 가로 * 세로
 - 둘레 : (가로 + 세로) * 2
 */
typealias rectangle = (name2:String,w:Int,h:Int,area:Int,border:Int)

var r1 : rectangle = ("직사각형1",5,6,0,0)
var r2 : rectangle = ("직사각형1",15,7,0,0)

r1.area = r1.w * r1.h
r1.border = (r1.w + r1.h) * 2

r2.area = r2.w * r2.h
r2.border = (r2.w + r2.h) * 2

print("r1의 넓이는 \(r1.area), r1의 둘레는 \(r1.border)입니다.")
print("r2의 넓이는 \(r2.area), r2의 둘레는 \(r2.border)입니다.")

//----------
// 기본 연산자
//----------

// 할당 연산자
let a = 2

// Tuple을 이용한 할당 연산자
let (x1,x2) = (1,2)
var (x3,x4) = (3,"kim")

// 사칙연산자
print(1 + 2)
print(3 - 2)
print(4 * 3)
print(10 / 3) // 정수 나눗셈 : 나눗셈의 몫만 출력됨
print(10 % 3) // 나눗셈의 나머지 값
print(10.0 / 3.0)
print(10 / 3.0)
print(10.0 / 3)
print(10 / Double(3))
print(Double(10/3)) // 이미 계산된 결과가 정수이므로 3.333이 아닌 3.0으로 출력

// 단항 음수 연산자
let one = 1
let minusOne = -one // -1
let plusOne = -minusOne // -(-1) = 1

// 합성 할당 연산자
var xx = 1
xx += 2 // 누적

