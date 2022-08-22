//
//  main.swift
//  Day05
//
//  Created by TJ on 2022/07/30.
//

import Foundation

// Dictionary
// : key와 value로 구성된 컬렉션
// key가 String 타입이고 value가 Int인 빈 Dictionary 생성

//var scoreDictionary: Dictionary<String,Int> = [String:Int]()
var scoreDictionary: [String:Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

print(scoreDictionary)

print(scoreDictionary["유비"]!)

var airports: [String:String] = ["YYZ":"Toronto Pearson","DUB":"Dublin"]
print(airports.count,airports)

if airports.isEmpty{
    print("The airports dictionary is empty")
}else{
    print("The airports dictionary is not empty")
}

airports["LHR"] = "London"
print(airports.count,airports)


airports["LHR"] = "LONDON"
print(airports.count,airports)

// Set
// Set은 집합연산에 꽤 유용합니다.
// 중복값은 처리하지 않습니다.


var oddDigits : Set = [1,3,5,7,9]
var evenDigits : Set = [0,2,4,6,8]
let singleDigitPrimeNumbers : Set = [2,3,5,7]

oddDigits.insert(1) // 중복 값을 반영하지 않는다.
print(oddDigits.sorted()) // 순서대로 나오게


// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())

// 차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())

// 여집합
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

// ---
let houseAnimals: Set = ["dog","cat"]
let farmAnimals: Set = ["cow","chicken","sheep","dog","cat"]
let cityAnimals: Set = ["duck","rabbit"]

// houseAnimals가 farmAnimals의 부분집합인지 확인 --> true
print(houseAnimals.isSubset(of: farmAnimals)) // is--- 다 bool로 결과 나옴
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals)) // 두 집합간 교집합이 없는 경우

/*
 열거형(enumerate)
 - 연관된 항목들을 묶어서 표현할 수 있는 타입
 - 배열, 딕셔너리, 셋과는 다르게 프로그래머가 정의해준 항목 값외에는 추가, 수정이 불가함
 - 분석에서 사용하는 용어인 범주(category)와 동일한 의미
 */

enum School: String{
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case colleage = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducation: School = .university
print("저의 최종학력은 \(highestEducation.rawValue) 졸업입니다.")

// ----------------------//
// 조건문
// ---------------------//
let someInteger = 1000

if someInteger == 100{ // 100점이 아니므로 아무런 결과도 나오지 않음
    print("100점")
}
// ---------------------
if someInteger == 100{ // 100점이 아니므로 else의 print 출력
    print("100점")
}else{
    print("100점이 아님")
}
//----------------------
if someInteger < 100{
    print("100미만")
}else if someInteger > 100{
    print("100 초과")
}else{
    print("100점")
}

// Tuple

var isCar = true
var isNew = true

if isCar, isNew { // 둘 다 true인 경우에만 결과 출력됨, ","를 And로 생각하면 됨
    print("New Car")
}

isNew = false
if isCar, isNew{
    print("New Car")
}else{
    print("Old Car")
}

// Switch 조건문
// 범위 연산자를 활용하면 더욱 쉽고 유용합니다.

// Before using switch statement
let personAge = 14

if personAge < 1{
    print("baby")
}else if personAge < 3{
    print("toddler")
}else if personAge < 5{
    print("preschooler")
}else if personAge < 13{
    print("gradeschooler")
}else if personAge < 18{
    print("teen")
}else{
    print("adult")
}

// After using switch statement
switch personAge{
case 0..<1: print("baby")
case 1..<3: print("toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschooler")
case 13..<18: print("teen")
default: print("adult")
}


// ----
let someCharacter: Character = "z"
switch someCharacter{
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

print(someInteger)
switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

switch someCharacter{
case "z","Z":
    print("The letter is Z")
default:
    print("Not the letter z")
}

// Tuple로 사용하기
let somePoint = (1,1)
switch somePoint{
case (0,0):
    print("\(somePoint) is at the origin.")
case (_,0): // _ => 아무거나 하지만 y값은 항상 0
    print("\(somePoint) is at the x-axis.")
case (0,_):
    print("\(somePoint) is at the y-axis.")
case (-2...2,-2...2): //x,y의 범위가 -2~2
    print("\(somePoint) is inside of the box")
default:
    print("\(somePoint) is outside of the box")
}

/*
 직급별 월급을 계산하세요
 - 부장 : 50%, 과장 : 30%, 대리 :20%, 사원 : 10%
 - 월급 : 기본급 + 기본급 * 보너스
 */

let pos = "과장"
let basic = 300
var bonus: Double

switch pos{
case "부장":
    bonus = 0.5
case "과장":
    bonus = 0.3
case "대리":
    bonus = 0.2
default:
    bonus = 0.1
}
let money = Int(Double(basic)*(1 + bonus))
print("\(pos) \(basic) : \(money)만원") // 공통된 출력형을 가질경우 switch문 밖에....

// 출력결과 => 과장 300 : _____만원

// 이름, 국어, 영어, 수학에 대한 총점과 평균 그리고 등급을 출력
let name = "유비"
let kor = 91
let eng = 97
let mat = 95

//if문 이용
var tot = 0
var avg = 0.0

tot = kor + eng + mat
avg = Double(tot) / 3.0

var grade1 : String
if avg >= 90{
    grade1 = "수"
}else if avg >= 80{
    grade1 = "우"
}else if avg >= 70{
    grade1 = "미"
}else if avg >= 60{
    grade1 = "양"
}else{
    grade1 = "가"
}

print("""
이름 : \(name)
국어 : \(kor)
영어 : \(eng)
수학 : \(mat)
총점 : \(tot)
평균 : \(avg)

점수 등급은 \(grade1)입니다.

""")


// switch 문 이용
var total : Int = kor + eng + mat
var mean : Double = round(Double(total) / 3 * 100) / 100

var grade : String
switch mean{
case 90...100:
    grade = "A"
case 80..<90:
    grade = "B"
case 70..<80:
    grade = "C"
case 60..<70:
    grade = "D"
default:
    grade = "F"
}

print("""
이름 : \(name)
국어 : \(kor)
영어 : \(eng)
수학 : \(mat)
총점 : \(total)
평균 : \(mean)

점수 등급은 \(grade)입니다.

""")


// 삼항연산자
grade1 = avg >= 90 ? "수" :
         avg >= 80 ? "우":
         avg >= 70 ? "미":
         avg >= 60 ? "양" : "가"

print("""
이름 : \(name)
국어 : \(kor)
영어 : \(eng)
수학 : \(mat)
총점 : \(tot)
평균 : \(avg)

점수 등급은 \(grade1)입니다.

""")

// 배열과 반복문
var score = [90,  80, 70,  60,  0]
var level = ["수","우","미","양","가"]


for i  in 0..<score.count{
    print(score[i],level[i])
    if avg >= Double(score[i]){
        grade = level[i]
        break // 반복문을 끝내는 용도(해당 조건을 만족하면...)
    }
}

/*
 이름 : 유비
 국어 : 91
 영어 : 97
 수학 : 95
 총점 : __
 평균 : __
 
 점수 등급은 __입니다.
 */


// Scope
var a = 1000
var b = 2000
var c: Int
var bo = false
print("main 1:",a,b,bo) // 전역변수이므로 가능

if bo{
    let aa = 111
    b += 1
    c = 99
    print("if 1: ",a,aa,b,c)
}else{
//    print("else 1: ",a,aa) // aa는 지역변수이므로 if문 외에서 사용불가
    let aa = 5678
    print("else 1:",a,aa)
    a += 10
    print("else 2:",a)
    c = 77
}
//print("main 2:",a,b,aa,c)
print("main 2:",a,b,c)

// 전역변수는 앱이 끝날때까지 메모리 차지, 지역변수는 한번 실행되면 메모리서 사라짐
// 공통된 변수만 지역변수로 사용하는 것이 좋음

// 열거형을 입력 값으로 받는 switch문

enum School2{
    case primary , elementary, middle, high, colleage, university, graduate
}
let 최종학력: School2 = .university

switch 최종학력{
case.primary:
    print("최종 학력은 유치원입니다.")
case.elementary:
    print("최종 학력은 초등학교입니다.")
case.middle:
    print("최종 학력은 중학교입니다.")
case.high:
    print("최종 학력은 고등학교입니다.")
case.colleage,.university:
    print("최종 학력은 대학(교)입니다.")
case.graduate:
    print("최종 학력은 대학원입니다.")
}

// 반복문
// For - In 문 (For - In Loops)
let names = ["Anna","Alex","Brian","Jack"]
print(names[0])
for name in names{
    print("Hello, \(name) ... !")
}

for i in 0...names.count-1{
    print(names[i])
}

for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}

let numberOfLegs:[String:Int] = ["spider":8,"ant":6,"cat":4]

for (animalName,legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...5{ // .reversed불가하므로 변수로 따로 지정해야함
    print("\(index) times 5 is \(index * 5)")
}

let seq = 1...5
for index in seq{
    print("\(index) times 5 is \(index * 5)")
}

for index in seq.reversed(){ // 5,4,...1로 index 출력
    print("\(index) times 5 is \(index * 5)")
}

// 범위를 주는 index

//for index in stride(from: 1, to: 10, by: 2){
//    print("\(index)")
//}

let minutes = 60
let minutesInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minutesInterval){
    print(tickMark) // 60전까지 5씩 늘려 출력 (= 0..<60)
}

for tickMark in stride(from: 0, through: minutes, by: minutesInterval){
    print(tickMark) // 60포함하여 5씩 늘려 출력 (= 0...60)
}

for tickMark in stride(from: minutes, through: 0, by: -5){
    print(tickMark) // 60부터 0포함하여 -5씩 줄여 출력
}

let strings = ["First String", "Second String", "Third String", "Fourth String"]
for string in strings{
    if string.starts(with: "F"){ // F로 시작하면 출력하라
        print(string)
    }
}

// Swift답게 작성
for string in strings where string.starts(with: "F"){
    print(string)
} // 위의 경우는 4번을 돌아야하지만 해당 for문이 2번만 돌면 됨

// break
for string in strings {
    if string.starts(with: "T"){
        break // 조건을 만족하면 반복문 종료(쓸데없는 반복방지) -> 검색할 때 좋음
    }
    print(string) // First___, Second___만 출력됨
}

// continue
for string in strings {
    if string.starts(with: "F"){
        continue // 조건을 만족하면 다시 반복문으로 돌아가 조건을 만족하지 않은 경우에만 출력
    }
    print(string)
}

var intArray : [Int] = []

for i in 1...100{
    if i % 2 == 1{ // 홀수인 경우 다시 반복문으로 돌아가고 조건을 만족하지 않으면 intArray에 i를 계속 추가
        continue
    }
    intArray.append(i)
}
print(intArray)

// While

var startIndex = 0
var endIndex = 100
var sum = 0

while startIndex <= endIndex{
    sum += startIndex
    startIndex += 1
}
print("while :",sum)

// while문을 이용하여 1부터 100까지의 수 중 짝수의 합을 구하시오
// (단, if문을 사용하지 마세요)

startIndex = 0
endIndex = 100
sum = 0
while startIndex <= endIndex{
    sum += startIndex
    startIndex += 2
}
print("while evenSum: ",sum)

// 강사님 코드
var i1 = 2
var tot1 = 0
while true{
    tot1 += i1
    i1 += 2
    if i1 > 100{
        break
    }
}
print("even result:",tot1)
