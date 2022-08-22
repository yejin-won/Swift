//
//  main.swift
//  Day04
//
//  Created by TJ on 2022/07/24.
//

import Foundation

/* Optional
 - nil 값을 포함할 수도 있고, 안할 수도 있다.
  (java 같은 경우 nullException으로 null 값에 ERROR! nil 값을 포함할 수 있게 해서 이런 에러 방지 하게 되는 듯?)
 - Swift에서는 기본적으로 변수 모두 Optional check가 중요~!
 */

var constantNum : Int = 100
//constantNum = nil   ERROR! (can't assign. optional 설정 안했기 때문)

let optionalConstant : Int! = nil // nil 값도, 정수도 받을 수 있는 변수라는 의미!
let optionalConstant1 : Int? = nil

var constantNum1 : Int! = 100
print(constantNum1 + 50)

constantNum1 = nil
// print(constantNum1 + 1) FATAL ERROR! 코드는 틀리지 않아서 경고 안뜨는데, 실행하면 null 값에 더하라는 거니가 에러!

/* Optional Unwrapping
 - Optional Binding : nill Check 하여 안전한 값만 추출(memory안에 변수값이 있는지 확인 후 추출) -> nil이면 뭘로, nil 아니면 뭘로
 - Force Unwrapping : nill Check 안하고 추출 -> 확실히 nil이 아니라는 확신이 있을 때 써야 한다. 아니면 ERROR로 시스템 죽으니까.
 */

// Optional Binding
// - if let / guard let 같은 구성 (if var / guard var 도 됨)
// - if는 항상 느림! guard로 많이 씀.
//var myName : String? = nil
var myName : String? = "James"
if let name = myName{
    print(name)
}else {
    print("myName == nil")
}

var myName2 : String? = "James"
var yourName2 : String? = nil

// yourName2가 nil이라서 실행 안함. else로 뭘 안줬으니까
//if let name = myName2, let friend = yourName2{
//    print("\(name) and \(friend)")
//}

// yourName2에 값을 넣어주면 print() 실행
yourName2 = "cathy"
if let name = myName2, let friend = yourName2{
    print("\(name) and \(friend)")
}

// Force Unwrapping
print(yourName2!)

yourName2 = nil
//print(yourName2!) FATAL ERROR! nil값을 강제로 unwrapping 했으니까.



// --------------
// Collection
// --------------
/*
- 여러 값들을 묶어서 하나의 변수로 사용
1) Array(배열) : 순서가 있는 리스트 컬렉션
2) Dictionary(딕셔너리, Map) : key-value 쌍으로 이루어진 컬렉션
3) Set(집합) : 순서, 중복데이터 없는 집합 연산
 */

// Array
// 빈 Int Array 생성
var intVariable : Array<Int> = Array<Int>() // <type> : 제너릭(generic)
var intVariable1 : [Int] = [Int]()
var intVariable2 : [Int] = []
var intVariable3 = [1,2,3] // Data가 있으면 굳이 타입을 지정하지 않아도 됨


// Data 추가
// 추가한 순서에 따라 리스트 순서 정해짐
intVariable.append(1)
intVariable.append(10)
intVariable.append(100)

print(intVariable)

// 계산
print(intVariable.contains(100))
print(intVariable.contains(99))

// 출력
print(intVariable[0] + intVariable[1])
print(intVariable[0...1])

// 수정
intVariable[0] = 999
print(intVariable)

// 삭제
intVariable.remove(at: 0)
print(intVariable)

intVariable.removeLast()
print(intVariable)

intVariable.removeAll() // (= intVariable = [] )
print(intVariable)

print(intVariable.count)

// 기본값으로 설정된 배열 생성하기
var fiveDoubles : [Double] = [0.0, 0.0, 0.0, 0.0, 0.0]
var fiveDoubles2 = Array(repeating: 0.0, count: 5)
var anotherFiveDouble = Array(repeating: 2.5, count: 5)

// 배열 합치기
var tenDoubles = fiveDoubles + anotherFiveDouble
print(tenDoubles)

// 배열 더하기
var fiveSumDoubles : [Double] = []

for i in 0..<fiveDoubles.count{
    fiveSumDoubles.append(fiveDoubles[i] + anotherFiveDouble[i])
}
print(fiveSumDoubles)

// 문자를 이용한 배열의 생성
var shoppingList : [String] = ["Eggs","Milk"]
print(shoppingList)

var shoppingList2 : [String] = [String](repeating: "abc", count: 3)
print(shoppingList2)

for i in 0..<shoppingList.count{
    print(shoppingList[i])
}

for i in shoppingList{
    print(i)
}

for i in ["a","b","c"]{
    print(i)
}

print("Ther Shopping list contains \(shoppingList.count) items.")

//shoppingList = []

if shoppingList.isEmpty{
    print("The shopping list is empty")
}else{
    print("Ther Shopping list contains \(shoppingList.count) items.")

}

// 베열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count,shoppingList)

shoppingList += ["Baking Powder"]
print(shoppingList.count,shoppingList)

shoppingList += ["Chocolaate Spread","Cheese","Butter"]
print(shoppingList.count,shoppingList)

// 배열의 특정 위치 데이터 불러오기
var firstItem = shoppingList[0]
print(firstItem)

// 배열의 특정 위치 변경 및 제거
print(shoppingList[4...6])
shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList)

// 배열의 특정 위치 데이터 추가
// 참고 ) 이동 = 식제 & 추가
shoppingList.insert("Mapple Syrup", at: 0)
print(shoppingList.count,shoppingList)

for (index,value) in shoppingList.enumerated(){
    print("Item \(index+1) : \(value)")
}

// 배열의 합계 구하기 및 최대값 찾기
let arr = [12,23,45,67,89,13,25,37]

var tot = 0
for i in arr{
    tot += i
}
print(tot)

var max = arr[0]
for i in arr{
    if max < i{
        max = i
    }
}
print("최대값 :\(max)")

print("최대값 :\(arr.max()!)")
