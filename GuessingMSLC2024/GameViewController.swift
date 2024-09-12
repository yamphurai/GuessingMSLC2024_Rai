//
//  GameViewController.swift
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 8/28/24.
//

//necessary interfaces for building IOS apps
import UIKit


//class "GameViewController" that is a subset of "UIViewController"
//"GameViewController" is the delegate for "UIViewController" to have functionality of hiding the keyboard when not needed on the app
//This means now GameViewController can implement all of the UITextFieldDelegate methods
class GameViewController: UIViewController, UITextFieldDelegate {
    
    
    var guessModel: GuessModel = GuessModel()
    
    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    
    
    //Text field for the user's guess (can't never be nil so use !)
    @IBOutlet weak var guessTextField: UITextField!
    
    
    
    
    //override "viewDidLoad" method that gets called after view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //define GameViewcontroller as the delegate
        self.guessTextField.delegate = self
        
        //to auto hide the keypad once guess has been entered
        self.guessTextField.resignFirstResponder()
        
        //set timer, repeat a function once every sec
        var elapsedTime:Int = 0  //to track the elapsed time for the timer
        let timer:Timer = Timer(timeInterval: 1, repeats: true) { tmp in
            elapsedTime += 1
            self.feedbackLabel.text = "Elapsed: \(elapsedTime)"
        }
        
        //to start the timer
        RunLoop.main.add(timer, forMode: .common)
        
        
        
        
    }
    
    
    //functionality for use to tap on screen to have keypad dissapear
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        self.guessTextField.resignFirstResponder()
    }
    
    
    
    
    //method "make" that takes integer "guess"
    func make(guess:Int) {
        
        //"guess_feedback" of type "GuessValue"
        let guess_feedback:GuessValue = self.guessModel.makeGuess(guess)
        switch guess_feedback {
        case GuessIsCorrect:
            self.feedbackLabel.text = "Correct Guess"
        case GuessIsLow:
            self.feedbackLabel.text = "Gues was too low"
        case GuessIsHigh:
            self.feedbackLabel.text = "Guess was too high"
        default:
            self.feedbackLabel.text = "Should never get here"
        }
        
        //auto clear the guess text field once guess is entered
        self.guessTextField.text = ""
        
    }
    
    
    //after being a delegate, we can now implement this method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //when user press return/done button. If user makes the guess, dismiss the keyboard using "resignFirstResponder" method
        if let userGuess = Int(self.guessTextField.text!) {
            self.make(guess: userGuess)
        }
        self.guessTextField.resignFirstResponder()
        
        return true  //true when user hits the done button (just a protocol but does nothing)
        
    }
    
    //button for action to click to submit the guess
    @IBAction func SubmitGuess(_ sender: UIButton) {
        
        //get the text from the guess and convert it into integer
        if let userGuess = Int(self.guessTextField.text!) {
            self.make(guess: userGuess)
        }
        
    }
    
    
    
}
