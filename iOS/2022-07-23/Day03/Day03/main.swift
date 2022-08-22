//
//  main.swift
//  Day03
//
//  Created by TJ on 2022/07/23.
//

import Foundation

// 비교 연산자
print(1 == 1)
print(2 != 1)
print(2 > 1)
print(1 < 2)
print(1 >= 1)
//print(1 => 1) 부등호의 순서 중요!
print(2 <= 1)

let name = "world"
if name == "world1"{
    print("Hello, \(name)!")
    
}else{
    print("I'm sorry \(name), but I don't recongnize you.")
}

print((1,"zebra") < (2,"apple"))
// 첫번째 값으로 비교한 후 판단이 되면 최종값으로 bool 출력
// 만약 첫번째 값이 같다면,
print((3,"apple") < (3,"bird"))
// 두번째 값의 a,b로 비교 후 판단이 되면 최종값으로 bool 출력
print((4,"dog") == (4,"dog"))
// print((4,"dog") == (4,"dok")) => false
// 참고 : 공백이 어느 한쪽에 있으면 false
print(("blue",-1) < ("purble",1))
// 첫번째 값의 b,p를 비교 후 판단이 되면 최종값으로 bool 출력
// print(true > false)
// print(true == false) => false
// 다른 언어들과 달리 true: 1, false:0으로 지정된 것이
// 아니라 대소 비교를 할 수 없음

// 일반 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight : Int

// 조건문이라 하나의 식만 실행되니 let(상수)선언해도 무방
if hasHeader { // (= if hasHeader == true)
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 20
}

print(rowHeight)

// 홀짝수 판별
let num = 11

if num % 2 == 0{
    print("짝수")
}else{
    print("홀수")
}

// 삼항 조건 연산자
let contentHeight1 = 40
let hasHeader1 = true
let rowHeight1 = contentHeight1 + (hasHeader1 ? 50 : 20)
// hasHeader1이 true이면 50이 튀어나오고, 그렇지 않으면 20이 튀어나와 연산을 진행함
print(rowHeight1)

// Nil 병합 연산자
let defaultColorName = "red"
var userDefinedColorName : String?
// Optional 변수 , optional -> nil data 허용

var colorNameToUse = userDefinedColorName ?? defaultColorName // 기본값 주는데 사용함 -> ios APP에서는 viewdidload에서 A = nil라고 선언을 해줘야 위와 같이 실행할수있음
// userDefinedColorName이 Nil이면 defaultColorName의 값이 "red"를 넣어라
print(colorNameToUse)

// 범위 연산자
print(1...10)

for i in 2...5{  // 2부터 5까지 출력하기
    print(i)
    print("-----")
}

var sum = 0

for i in 1...10{ // 1부터 10까지 합계구하기
    sum += i // (= sum = sum + 1 )
}
print(sum)

// 구구단 5단 출력
for i in 1...9{ // (= for i in 1...<10)
    print("5 X \(i) = \(5*i)")
}

let names = ["Anna","Alex","Brian","Jack"] // Collection => 배열
let count = names.count

print(count)

// 반 닫힘 범위 연산자
for i in 0..<count{
    print("Person(\(i+1)) : \(names[i])")
}

// 논리 연산자
// 논리 부정 연산자
let allowedEntry = false
if !allowedEntry {
    print("Access Denied")
}

// 논리 곱 연산자
let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan{
    print("Welcome!")
}else{
    print("Access Denied")
}

// 논리 합 연산자
let enteredDoorCode1 = true
let passedRetinaScan1 = false

if enteredDoorCode1 || passedRetinaScan1{
    print("Welcome!")
}else{
    print("Access Denied")
}
