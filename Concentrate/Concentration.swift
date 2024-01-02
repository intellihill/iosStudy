//
//  Concentration.swift
//  Concentrate
//
//  Created by 정대로 on 1/3/24.
//

import Foundation

/**
 API : Application Programming Interface
 단지 클래스 안의 모든 메소드와 인스턴스 변수의 리스트이다
 */
class Concentration
{

//    var cards: Array<Card>
    // 구조체나 클래스의 인스턴스 만드는 법
//    var cards = Array<Card>()
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        // CountableRange : ...은 0부터 numberOfPairsOfCards까지 포함
//        for identifier in 0..<numberOfPairsOfCards {
//            let card = Card(identifier: identifier)
//            let matchingCard = Card(identifier: identifier)
            // 구조체를 다른 변수에 할당할 때 복사하기 때문에 card가 바로 구조체이다.
            // 할당하기만하면 복사본을 만듦
//            let matchingCard = card
//            cards.append(card)
//            cards.append(matchingCard)
            // 위의 matchingCard를 제거하고 밑에처럼 만듬
            // 왜냐하면 배열에 넣거나 뺄 때도 카드를 복사하기 때문이다.
//            cards.append(card)
            // append도 모두 제거하고 이렇게 쓸 수 있음
        
        // swift에서 _는 무시하라는 의미이거나 다시 쓰지 않을 거라 어떤 것이어도 상관 없다는 의미이다.
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Suffle the cards
        
    }
}
