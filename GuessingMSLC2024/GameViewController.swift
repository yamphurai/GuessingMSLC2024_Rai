//
//  GameViewController.swift
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 8/28/24.
//

import UIKit

class GameViewController: UIViewController {

    var guessModel:GuessModel = GuessModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(self.guessModel.makeGuess(50)){
            print("Its was 50")
        }else{
            print("it was NOT 50")
        }
        
    }
    

   

}
