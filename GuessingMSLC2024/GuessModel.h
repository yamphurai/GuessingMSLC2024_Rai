//
//  GuessModel.h
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 9/4/24.
//


//to provide essential data types, collections, and operating system services to define the base layer of the functionality for apps & frameworks
#import <Foundation/Foundation.h>

//All the points in the is macro (between BEGIN and end) are non-null unless explicitely marked as nullable
NS_ASSUME_NONNULL_BEGIN


//Enumeration called "enum" with three possible values to let user know if the guess is correct/high/low
typedef enum: NSUInteger {
    GuessIsCorrect,
    GuessIsHigh,
    GuessIsLow,
} GuessValue;


//"GuessModel" is a subclass of NSObject
@interface GuessModel : NSObject


//public method "makeGuess" that takes integer value "guess" and returns "GuessValue"
-(GuessValue)makeGuess:(NSInteger)guess;

@end

NS_ASSUME_NONNULL_END
