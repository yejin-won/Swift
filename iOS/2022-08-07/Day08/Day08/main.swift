//
//  main.swift
//  Day08
//
//  Created by TJ on 2022/08/07.
//

import Foundation

// Extension
// : 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있는 기능입니다. (Switf에만 있음)

// Int 타입에 extension 기능 추가하기

extension Int{
    var isEven: Bool{
        return self % 2 == 0 // ture => 짝수
    }
    var isOdd: Bool{
        return self % 2 == 1 // ture => 홀수
    }
}

print(1.isEven)
print(2.isEven)

var number: Int = 3
print(number.isEven)

// Extension -> Delegate(대리자) -> Class


// Closure
// : 이름이 없는 함수

// 함수
func sumFunction(a:Int,b:Int)->Int{
    return (a+b)
}

var sumResult: Int = sumFunction(a: 10, b: 20)
print(sumResult)

// 함수 -> Closure
var sumClosure: (Int,Int) -> Int = {(a:Int,b:Int)->Int in
    return a + b
}

sumResult = sumClosure(10,20)
print(sumResult)
