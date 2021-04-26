import UIKit

var str = "Hello, playground"

//상수와 변수----------------------------------------------------------------------------------------------------
var constant = "상수" //let(상수)로 하면 실행 안됨 var(변수)
var variable = "변수"

constant = "변수"
variable = "변수2"

//문자열 보간법----------------------------------------------------------------------------------------------------
//System.out.println("나의 나이는 " + 30 + "살 입니다." (자바에서 사용하는 형식)
let message = "나의 나이는 \(false)살 입니다."
let age = 30 //숫자. age:Int로 안쳐도 타입을 정수형으로 인식함

print(message) //출력은 dump로도 가능
dump(age)

//컬렉션----------------------------------------------------------------------------------------------------
let bool = false
let intValue:UInt = 0 //UInt은 0부터 시작하는 양수
let msg:String = "" //문자열
let decimal:Float = 0.0 //실수

let arr:Array<Int> = [1, 2, 3, 4, 5] //int형 배열

//name - 이름
var dic:Dictionary<String, String> = Dictionary<String, String>()

//값을 추가
dic["name"] = "chulsoo"

print(dic)

//값을 제거
dic.removeValue(forKey: "name")

print(dic)

//Set----------------------------------------------------------------------------------------------------
var intSet:Set<Int> = [1, 2, 3, 4, 5] //값이 무작위 출력

//값 추가
intSet.insert(66)

print(intSet)

//중복된 값을 삽입
intSet.insert(1) //똑같은 값을 삽입해도 한번만 출력됨

print(intSet)
intSet.remove(66)
print(intSet)

//반복문 조건문----------------------------------------------------------------------------------------------------
//반복문
let values:Array<Int> = [1, 2, 3, 4, 5]

for value in values {
    print(value)
}

//자바스크립트 문법 스위프트에서도 사용
values.forEach { (value:Int) in
    print(value)
}

//조건문----------------------------------------------------------------------------------------------------
//let values:Array<Int> = [1, 2, 3, 4, 5] 위에 let values 있어서 주석처리함

for value in values {
    if value % 2 == 0 {
        print(value)
    }
}

for value in values {
    switch value {
    case 1, 3:
        print("1과 3")
    case 2, 4:
        print("2와 4")
    default:
        print("5")
    }
}

//함수----------------------------------------------------------------------------------------------------
func showAction(place:String, action:String = "공부") -> Void {print("나는 \(place)에서 \(action) 중입니다.")}

showAction(place: "수영장")
showAction(place: "수영장", action: "아크로바틱")

//옵셔널----------------------------------------------------------------------------------------------------
var intVal:Int? = 12

if let value:Int = intVal {
    print(value)
}


//2-2
//구조체(swift 대부분은 구조체 타입, 내부에 프로퍼티, 함수를 선언하고 인스턴스를 만들어서 사용)---------------------------------
import Foundation

struct Example {
    //가변 프로퍼티 var
    var mutableProperty: String = ""
    
    //불변 프로퍼티 let
    let immutableProperty: String = ""
    
    //인스턴스 메소드
    func showPrint() -> Void {
        print(mutableProperty) //위에 보면 값을 안넣었기 때문에 빈칸 출력
    }
}

//불변 인스턴스
let mutableInstance:Example = Example() //mutableInstance.mutableProperty = "변경" (에러발생)
mutableInstance.showPrint()

//가변 인스턴스
var immutableInstance:Example = Example()
immutableInstance.mutableProperty = "변경"
immutableInstance.showPrint()

//구조체 실습
struct Home {
    var type:String = "주택"
    
    var address:String = "부산시 사상구 주례동"
    
    func showHome() -> Void {
        print("이 곳은 \(type), 주소는 \(address) 입니다.")
    }
}

//가변
var home:Home = Home()
home.address = "부산시 사상구 근처 주택"
home.showHome()

//불변. 인스턴스가 불변이라 변경할 수 없음
/*let home1:Home = Home()
 home.address = "부산시 사상구 근처 주택"
 home.showHome()*/

//클래스 (구조체랑 같이 코드 적으면 오류나서 주석처리) (내부에 프로퍼티 또는 함수를 선언하고 인스턴스를 만들어서 사용. 다중상속 불가능)
/*import Foundation

class Example {
    //가변 프로퍼티
    var mutableProperty: String = ""
    //불변 프로퍼티
    let immutableProperty: String = ""
    //인스턴스 메소드
    func showPrint() -> Void {
        print("출력")
    }
}
 
//불변 인스턴스
 let mutableInstance.Example = Example()
 mutableInstance.mutableProperty = "변경"
 mutableInstance.showPrint()
 //가변 인스턴스
 var immutableInstance:Example = Example()
 immutableInsatance.mutableProperty = "변경"
 immutableInstance.showPrint()
 */

//열거형(유사한 종류의 여러 값을 한 곳에 모아 정의한 것. enum 자체가 하나의 데이터 타입. 각각의 case는 그 자체가 고유의 값-----------------------------
import Foundation

enum Day {
    case sun, mon, tue, wed, thu, fri, sat
    /*enum Day:String {
        case sun = "일", mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토"*/ //이건 string으로 글자 기본값 부여한 것
    func showToday() -> Void {
        switch self {
        case .sun:
            print("일요일")
        case .mon:
            print("월요일")
        case .tue:
            print("화요일")
        case .wed:
            print("수요일")
        case .thu:
            print("목요일")
        case .fri:
            print("금요일")
        case .sat:
            print("토요일")
        }
    }
}

let today:Day = .mon

switch  today {
case .sun, .sat:
    print("주말")
default:
    print("평일")
}
today.showToday()
//print(today.rawValue) 이건 string으로 기본값 부여하고 enum의 원시값 부여할때


//클로저(한번만 사용하는 일회용 함수, 실행가능한 코드블럭을 의미, 함수와 달리 클로저는 이름정의 필요 없음)-------------------------------------
import  Foundation

let checkAudlt = { (age:Int) -> String in  // 변수선언-필요한 매개변수 기재-반환타입 기재
    return age < 20 ? "청소년" : "성인" // 필요한 반환값 기재
}

func checkAudlt(age:Int) -> String{  // 클로저를 함수로 변경한것.
    return age < 20 ? "청소년" : "성인"
}

print("이 고객은 \(checkAudlt(10))입니다")


//가드(if문 대체, 조건 참일시 통과하고 거짓일시 else 실행 후 종료, else내부에는 return이나 break 무조건 있어야함 ----------------------
func showAudltWithGuard(age: Int?) -> Void { //age는 매개변수
    
    guard let age:Int = age, age < 130, age >= 20 else {
        print("나이값이 잘못되었거나 성인이 아닙니다.")
        return
    }
    
 /*   if let age:Int = age {.         //guard문 쓰는게 간결함
        if age < 130, age >= 20 {
            print("당신은 성인입니다.")
        } else {
            print("나이값이 잘못되었거나 성인이 아닙니다.")
        }
    }*/
    print("당신은 성인입니다.")
}

showAudltWithGuard(age: 100)


//상속(다중상속 지원X, 클래스, 프로토콜에서 가능하며 열거형이나 구조체는 상속불가)--------------------------------------------------------
class Car {
    var type:String = "승용차"
    
    func showMyCar() -> Void {}
}

class Brand: Car {
    var brand:String = "메르세데스 벤츠"
    
    override func showMyCar() {
        print("나의 차는 \(type), 브랜드는 \(brand) 입니다.")
    }
}

let brand:Brand = Brand()
brand.showMyCar()

//프로토콜(특정 작업 또는 기능에 적합한 메소드, 속성 및 기타 요구사항의 청사진, 자바의 interface와 유사, 객체 혹은 인터페이스 대신 프로토콜 중심으로 설계)
import Foundation

@objc protocol SchoolProtocol {
    @objc optional var name:String { get }
    
    //필수 정의 함수
    func showSchoolName() -> Void
    
    //선택 정의 함수
    @objc optional func setSchoolName(name: String) -> Void
}

//프로토콜 상속
class School: SchoolProtocol {
    func showSchoolName() {
        print("동서대학교")
    }
    
    // optional로 정의할 경우 함수를 호출하지 않아도 됨
}

let school:School = School()
school.showSchoolName()
