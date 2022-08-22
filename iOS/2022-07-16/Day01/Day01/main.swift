//
//  main.swift
//  Day01
//
//  Created by TJ on 2022/07/16.
//

import Foundation

/*
 
 화면 출력
 
 */

// 문자 출력
// swift도 함수형 언어라 가로안에 명령어를 넣어주어야함

//print("안녕하세요!")

//숫자 출력
//print("12345") //따옴표 안에 있으므로 해당 숫자는 문자임
//print(12345) // 숫자로 출력하려면 따옴표 없어야 함

//print(123+456) // 숫자이므로 연산결과 출력됨
//print("123+456") // 문자로 출력됨

/*
 -------------------------
 상수나 변수의 작명 규칙
 -------------------------
 - Camel Case : function, method, variable, constant...
 ex) studentName  ,studentAge ....
 
 - Pascal Case : class,struct, enum, extension
 ex) StudentName, StudnetAge...
 
 - Snake Case: underbar(_)로 연결하여 사용
 ex.)student_name, student_age
 
 * 대소문자 구분
 *첫 글자를 숫자나 특수문자로 시작하면 안되나 _(underbar)는 사용가능
 (* underbar의 용도는 따로 존재함)
 */

// 상수를 이용한 출력
//let message = "안녕하세요"
//message = "Good morning"
//print(message)
//print(message)

/*
 상수(let)와 변수(var)
 
 - 상수 : 한번 선언된 값에 대해 변경이 불가능 (앱 상에서 비밀번호)
 - 변수 : 한번 선언된 값에 대해 변경이 가능
 
 - 상수 선언 방법
 : Basic Method
    let <variable name> : <type> = <value>
 : 추론 방법 <- 값이 명확한 경우
    let <variable name> = <value>
 
 - 변수 선언 방법
 : Basic Method
    var <variable name> : <type> = <value>
 : 추론 방법 <- 값이 명확한 경우
    var <variable name> = <value>
 */

//let intLetNum1 : Int = 200
//let intLetNum2 = 100
//
//var intVarNum1 : Int = 200
//var intVarNum2 = 100

//print(intLetNum1)
//intLetNum1 = 2000 // error 발생 상수의 값을 바꾸려 했으므로...
//intVarNum1 = 2000
//print(intVarNum1) // intVarNum1은 변수이므로 바꾼 결과 출력됨

/*
 상수 선언 후에 나중에 값 할당하기
 - 나중에 할당하려고 하는 상수나 변수는 타입(type)을 꼭 명시해 주어야 합니다.
 */

//let sum : Int // 나중에 값을 할당하려면 타입을 미리 정해줘야 함
//let inputA = 100
//let inputB = 200
//
//sum = inputA + inputB // 한 번 값이 들어가면 상수이기 때문에 바꿀수 없음
//print(sum)
// 자바에서 final이라고 생각하면 됨



//var sum : Int // 위의 문제로 상수(let)을 변수(var)로 바꿔주면 됨
//var inputA = 100
//var inputB = 200
//
//sum = inputA + inputB
//print(sum)

//var nickName : String
//print(nickName) // 데이터가 없으니 출력 불가
//nickName = "유비"
//nickName = "관우"

//var aNum = 9, bNum = 10
//print(aNum,bNum) //,는 자동으로 한 칸을 띄움

/*
 문자열 보간법(String Interpolation)
 : print실행 중 문자열, 변수, 상수의 값을 쉽게 표현하기 위해 사용
 */
//let studentName = "홍길동"

//출력방법
//print("name : " + studentName)
//print("name :",studentName)
//print("name : \(studentName)")

//let studentName2 = "name : \(studentName)"

// ----
//let age : Int = 10

// 저는 10살 입니다.
//print("저는 \(age)살 입니다")

// 저의 형은 14살 입니다.
//print("저의 형은 \(age+4)살 입니다")


// 회원정보를 여러개 받을 경우도 생기니까 var가 나음
//var name1 = "유비"
//var age1 = 34
//var gender1 = "남자"
//print("회원의 이름은 \(name1)이고 나이는 \(age1)이며 성별은 \(gender1)입니다.")
// 회원의 이름은 유비이고 나이는 34이며 성별은 남자입니다.

// 초코파이 5개를 구매하 가격 출력

//var price = 300
//var cnt = 5
//var total = price * cnt
//
//print("초코파이 가격:",price) // 300
//print("수량:",cnt)
//print("합계:",total)

/*
 기본 데이터 타입
 Swift의 기본 데이터 타입
 Int, Bool, Float, Double, Character, String, UInt(unsigned)
 */

// Bool
//var someBool : Bool = true
//someBool = false
//
//// Int
//var someInt : Int = -100
////someInt = 100.1 //에러 발생
//someInt = 100_000 // 100,000로 쓸 경우, 문자로 인식되므로 _사용
//someInt = 100_00_00
//
//// UInt
//var someUInt : UInt = 100
////someUInt = -100 // 양수만 가능하므로 에러 발생
////someUInt = someInt // type이 다른 것들끼리 할당 안됨
//
//
//// Float, Double 둘 다 정수를 받을 수 있음
//// Float
//var someFloat : Float = 3.14
//someFloat = 3
//someFloat = 10_000.44_556
//
//// Double
//var someDouble : Double = 3.14
//someDouble = 3
////someDouble = someFloat // type이 다르므로 에러발생
//someDouble = 10_000.44_556
//
//print("Printing \(type(of: someDouble)) :\(someDouble)")
//
//// 숫자 Type 변환
//let doubleNum = 4.999999
//print(doubleNum)
//var castToInt : Int = Int(doubleNum)
//print(castToInt)
//var roundToInt : Int = Int(doubleNum.rounded())
//print(roundToInt)
//print("Origin : \(doubleNum), After Case : \(castToInt), After Rounded: \(roundToInt)")
//
//let doubleNum1 = 0.1
//let intNum1 = 1
//print(doubleNum1 + Double(intNum1))
//
//// Chracter
//var someCheacter = "A"
////print(type(of: someCheacter)) // String으로 인식함
//someCheacter = "가"
//someCheacter = "🚗"
//print(someCheacter)
//
//
////String
//var someString : String = "하하하 😄"
////someString = someString + "웃으면 복이와요"
//someString += " 웃으면 복이와요"
//someString += " 웃으면 복이와요"
//print(someString)
//
////someString = someCheacter // type이 다르므로 에러발생
//someString = """
//  여러줄 문자열을 사용할 수 있습니다.
//첫 줄과     마지막줄에 사용할 문자를 정의하여야 합니다.
//""" // 따옴표 뒤에 적어야 함 , 따옴표 앞에 적어야 함
//print(someString)
//
//// 문자열과 특수문자
//print("aa\nbb\t\tcc")
//let wiseWords = "\"Imagination is more important than knowledege\" - Einstein"
//print(wiseWords)

/*
 노트북 정보 변수를 선언하고 대입하세요
 이름(문자열), 크기(정수), 무게(실수), 가방유무(Bool),색상(문자)
 */

//var name1 : String
//var size1 : Int
//var weight1 : Double
//var bag1 : Bool
//var color1 : Character
//
//name1 = "맥북프로"
//size1 = 16
//weight1 = 2.56
//bag1 = false
//color1 = "백"
//
//print("이름:",name1)
//print("크기:",size1)
//print("무게:",weight1)
//print("가방:",bag1)
//print("색상:",color1)

