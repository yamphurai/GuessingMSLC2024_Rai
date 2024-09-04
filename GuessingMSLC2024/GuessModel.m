//
//  GuessModel.m
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 9/4/24.
//

#import "GuessModel.h"

@interface  GuessModel ()

@property (strong,nonatomic) NSNumber* correctNum;

@end

@implementation GuessModel


-(NSNumber*)correctNum{
    
    if(!_correctNum){
        _correctNum = @(arc4random_uniform(100)+1);
    }
    
    return _correctNum;
}

-(Boolean)makeGuess:(NSInteger)guess{
    
    if (guess == [self.correctNum integerValue]){
        return true;
    }
    return false;
}



@end
