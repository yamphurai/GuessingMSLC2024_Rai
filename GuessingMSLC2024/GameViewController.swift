//
//  GameViewController.swift
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 8/28/24.
//

//necessary interfaces for building IOS apps
import UIKit


//class "GameViewController" that is a subset of "UIViewController"
class GameViewController: UIViewController {
    
    
    var guessModel: GuessModel = GuessModel()
    
    
    //override "viewDidLoad" method that gets called after view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.make(guess: 50)   //Guess 50 (say)
    }
    
    //method "make" that takes integer "guess"
    func make(guess:Int) {
        
        //"guess_feedback" of type "GuessValue"
        let guess_feedback:GuessValue = self.guessModel.makeGuess(guess)
        switch guess_feedback {
        case GuessIsCorrect:
            print("Correct Guess")
        case GuessIsLow:
            print("Gues was too low")
        case GuessIsHigh:
            print("Guess was too hight")
        default:
            print("Should never get here")
        }
        
    }
    
}
