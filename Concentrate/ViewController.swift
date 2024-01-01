//
//  ViewController.swift
//  Concentrate
//
//  Created by 정대로 on 1/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    // swift는 강한 타입 추론이 있기때문에 Int를 붙여주지 않더라도 타입을 추측해줌
    var flipCount: Int = 0 {
        // didSet : 속성이 설정될 때마다 이 안의 코드가 실행된다 (property observer)
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    // UIButton의 배열
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices: Array<String> = ["😍","😀","😛","🤩"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    // '_' : 인수가 없다는 뜻임 touchCard는 ios에서 메시지를 보내는 건데 Object-C에서 온거고, 거기에는 내부 외부 이름이 없어서 '_'가 쓰임
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        // optional 끝에 !를 붙이면 optional이 설정되었다고 가정하고 관련된 값을 가져오라는 뜻이다.
//        let cardNumber = cardButtons.index(of: sender)!
        
        if let cardNumber = cardButtons.index(of: sender) {
            print("cardNumber: \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }

        // 영어처럼 읽혀야 함 Flip card with emoji ghost on sender
//        flipCard(withEmoji: "😀", on: sender)
    }
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        flipCount += 1
//        
//        flipCard(withEmoji: "😍", on: sender)
//    }
    // 밑의 함수를 읽을 때 인자까지 하나의 영어문장 처럼 읽어져야 좋은 명명이라고 할 수 있다.
    // withEmoji, on은 호출자가 사용하는 인자이다.

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji): \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
}

