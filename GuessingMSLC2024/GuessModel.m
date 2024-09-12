//
//  GuessModel.m
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 9/4/24.
//


//import the header file for "GuessModel" class
#import "GuessModel.h"

@interface  GuessModel ()

@property (strong,nonatomic) NSNumber* correctNum;

@end

//Begins implemenation of the "GuessModel" class
@implementation GuessModel



//getter metho for "correctNum" property that returns correct number as integer
-(NSNumber*)correctNum{
    return _correctNum;
}


//public method "makeGuess" that takes correct number & compares it with "guess" to return appropriate "GuessValue"
-(GuessValue)makeGuess:(NSInteger)guess{
    
    //get the actual correct value from my class & compare it to the guess
    NSInteger tmpCorrect = [self.correctNum integerValue];
    if (guess == tmpCorrect){
        return GuessIsCorrect;
    }else if (guess < tmpCorrect){
        return GuessIsLow;
    }else if (guess > tmpCorrect){
        return GuessIsHigh;
    }
    return false;  //we should not get to this point
}



@end
