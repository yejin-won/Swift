//
//  main.swift
//  Day07
//
//  Created by TJ on 2022/08/06.
//

import Foundation

// Structure <-> Class (Class는 상속 가능, Structure 상속 불가, 그 외 거의 유사)
// Structure는 상속기능이 없으므로 메모리를 많이 차지하지 않음

// 구조체
// 구조체는 Swift에서 Type을 정의한다.
// 참고] code들의 집합 = func. func.들의 집합 =. Structure or Class
// => 이런 것들을 "객체지향 언어" 라고 함

// 구조체 정의
struct Sample{ // Structure or Class 대문자로 써야 함
    var sampleProperty: Int = 10 // 가변 property
    let fixedSampleProperty: Int = 100 // 불변 property
    static var typeProperty: Int = 1000 // 타입 property
    
    func instanceMethod(){
        print("instance Method")
    }
    static func typeMethod(){
        print("type Method")
    }
}

// 구조체 사용

var samp: Sample = Sample()
print(samp.sampleProperty)
samp.sampleProperty = 100
print(samp.sampleProperty)
//samp.fixedSampleProperty = 1000 // let이므로 새로운 값 할당 불가
var samp1: Sample = Sample()
print(samp1.sampleProperty) // 데이터 공유가 안됨 => static 사용으로 해결
// static은 따로 samp와 같은 instance를 생성하지 않고 직접 씀
Sample.typeProperty = 300
print(Sample.typeProperty) // static 사용 예 : id,pw를 다른 화면에서도 가지고 다녀야 하므로 static 사용해야 함 (앱의 경우)
// 참고] 웹의 경우는 메모리에 저장될 수 있으므로 static을 사용하지 않아야 함 서버에 부하

samp.instanceMethod()
Sample.typeMethod()

// 학생 구조체
struct Student{
    var name: String = "unknown"
    var `class`: String = "Swift" // `keyword` 할 경우, 변수로 사용 가능
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
//        print("저는 \(`class`)반 \(name) 입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}
// 타입 확인 : Static
Student.selfIntroduce()

// Instance
var student: Student = Student()
student.name = "James"
student.class = "스위프트"
student.selfIntroduce()

var cathy: Student = Student()
cathy.name = "Cathy"
cathy.selfIntroduce()

// Class

class Sample1{ // Structure or Class 대문자로 써야 함
    var sampleProperty: Int = 10 // 가변 property
    let fixedSampleProperty: Int = 100 // 불변 property
    static var typeProperty: Int = 1000 // 타입 property
    
    func instanceMethod(){
        print("instance Method")
    }
    static func typeMethod(){
        print("type Method")
    }
}

var sampc: Sample1 = Sample1()
sampc.sampleProperty = 500

// ----
samp.sampleProperty = 200
print(samp.sampleProperty)

var samp2: Sample = Sample()
samp2.sampleProperty = 500

print(samp.sampleProperty)
print(samp2.sampleProperty)

samp = samp2
print(samp.sampleProperty)
print(samp2.sampleProperty)

// ----
class StudentC{
    var name: String = "unknown"
    var `class`: String = "Swift" // `keyword` 할 경우, 변수로 사용 가능
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
//        print("저는 \(`class`)반 \(name) 입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

let james: StudentC = StudentC()
james.name = "James"
james.selfIntroduce()

// 클래스와 구조체
// : 프로그램의 코드를 조직화하기 위해 일반적으로 사용합니다.

//참고] Interlaced방식=> NTSC 짝수 값만(미국) PAL 홀수 값만(유럽)
//     FrameRate방식
struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var someResolution: Resolution = Resolution()
var someVideoMode = VideoMode()
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
someResolution.width = 1920 // someResolution과 someVideoMode는 다른 변수라 같은 이름이라도 값이 변하는 걸 알 수 없음 => 값을 변경하기위해서 아래와 같이 작성해야함
someVideoMode.resolution.width = 1920
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

let vga = Resolution(width: 640, height: 480)
var cinema = vga
print("cinema is now \(cinema.width) pixels wide.")

//---
class Exam{
    var name = ""
    var score:[Int] = []
    var tot = 0, avg = 0
    
    func input(_ nn:String, _ jj:Int...){
        name = nn
        score = jj
        calc()
        result()
    }
    func calc(){
        tot = 0
        for i in score{
            tot += i
        }
        avg = tot / score.count
    }
    
    func result(){
        print(name,score,tot,avg)
    }
}

let st1: Exam = Exam()
let st2: Exam = Exam()
let st3: Exam = Exam()
let st4: Exam = Exam()

st1.input("유비", 77,78,71)
st2.input("관우", 90,80,65,43)
st3.input("장비", 97,98)
st4.input("조조", 67,68,69)

//---
class Shape{
    var kind = ""
    var area = 0.0
    var border = 0.0
    
    // 오버로딩을 이용한 함수
    func input(_ r:Double){
        kind = "원"
        let pi = 3.14
        area = pi * r * r
        border = 2 * pi * r
        result()
    }
    
    func input(_ w:Double,_ h:Double){
        kind = "직사각형"
        area = w * h
        border = 2 * (w + h)
        result()
    }
    
    func input(_ w:Double,_ h:Double,_ d:Double){
        kind = "직각 삼각형"
        area = (w * h) / 2
        border = w + h + d
        result()
    }
    
    func result(){
        print("\(kind) : \(Int(area)), \(Int(border))")
    }
}
let sh1: Shape = Shape() // 원
let sh2 = Shape() // 직사각형
let sh3 = Shape() // 직각 삼각형

sh1.input(5)
sh2.input(5,6)
sh3.input(3,4,5)

// class 생성자

class Shape1{
    var area = 0.0
    let pi = 3.14
    
    init(){ // 생성자 기본 설정
        print("계산 시작!")
    }
    
    init(radius: Double){ // 생성자
        area = radius * radius * pi
        result()
    }
    
    func input(_ r:Double){
        area = r * r * pi
        result()
    }
    
    func result(){
        print("원의 면적은 \(Int(area))입니다.")
    }
}

let sh4:Shape1=Shape1()
sh4.input(5)

let sh5:Shape1=Shape1(radius: 5)


// 원, 직사각형, 직각삼각형 넓이,둘레 구하기
class Shape2{
    var kind = ""
    var area = 0.0
    var border = 0.0
    
    // 생성자와 오버로딩
    init(_ r:Double){
       let pi = 3.14
       kind = "원"
       area = r * r * pi
       border = 2 * pi * r
       result()
    }
    
    init(_ w:Double, _ h:Double){
        kind = "직사각형"
        area = w * h
        border = 2 * (w + h)
        result()
    }
    
    init(_ w:Double, _ h:Double, _ l:Double){
        kind = "직각삼각형"
        area = (w * h) / 2
        border = w + h + l
        result()
    }
    
    func result(){
        print("\(kind)의 둘레는 \(Int(border))이고, 넓이는 \(Int(area))입니다.")
    }
}


let sh6:Shape2 = Shape2(5)
let sh7:Shape2 = Shape2(5,6)
let sh8:Shape2 = Shape2(3,4,5)

