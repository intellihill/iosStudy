//
//  Card.swift
//  Concentrate
//
//  Created by 정대로 on 1/3/24.
//


import Foundation
// Card를 구조체로 만듦
/**
 struct :
 보통 다른 언어에서는 자그마한 데이터를 가지고 있는 역할이지만, 스위프트에서는 구조체와 클래스는 거의 똑같다. 메소드도 있고, var도 있다.
 class vs struct
 두가지 차이점이 있다.
 첫번쨰 : 구조체는 상속성이 없다. 클래스는 상속성이 있다.
 두번째 : 구조체는 값 타입이고, 클래스는 참조 타입이다.
 -- struct
 값 타입은 인자로 보내거나 배열에 넣거나 심지어 다른 변수에 할당해도 복사가 된다.(copy)
 배열, 정수형, 문자열, 딕셔너리 : 구조체이다.
 무언가를 전달할 때 모든 내용을 하나하나 전부 복사하지 않는다.
 누군가 내용을 변경했을 때만 실제로 복사하도록 하는 전달 방식을 취한다.(쓰기 시 복사 전달 체계 = copy and write)
 구조체가 받는 공짜 이니셜라이저는 모든 변수를 초기화한다. (Concentration class에서 확인)
 
 -- class
 참조 타입은 힙에 자료형이 담겨 있고 그 자료형에 포인터를 쓸 수 있다. 그걸 여러 군데에서 사용한다면 실제로 그 자료형을 보내는 게 아닌 그 자료형을 가리키는 포인터를 보내는 것이다.
 */

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    // identifier은 외부 이름으로 호출하는 곳에서( Concentration init을 호출할 때 사용한다.)
    // identify는 내부 이름이고 이 안에서 사용한다.
    // init은 내부 이름과 외부 이름이 종종 같은 유일한 메소드이다.여기서는 비교를 위해 다르게 명명
//    init(identifier identify: Int) {
//        // self. 식별자이다.
//        self.identifier = identify
//    }
    
    
    static var identifierFactory = 0
    // swift의 독특한문법
    // 호출될 때마다 이 메소드는 유일한 식별자를 리턴할 것이다.
    // static func : Card 클래스 안에 있지만 Card에게 보낼 수 없다.
    // Card는 이 메세지를 이해하지 못한다.(그냥 type에 붙어있는 func이다)
    // 그래서 이 함수를 부르고 싶으면 타입에게 보낸다.
    static func getUniqueIdentifier() -> Int {
//        Card.identifierFactory += 1
        // static method 안이어서 Card.이 없이도 정적 변수에 접근할 수 있다.
        identifierFactory += 1
        return identifierFactory
    }
    init() {
        // self. 식별자이다.
        self.identifier = Card.getUniqueIdentifier()
    }
}
