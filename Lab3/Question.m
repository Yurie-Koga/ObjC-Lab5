//
//  Question.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import "Question.h"

@implementation Question


- (instancetype)init {
    self = [super init];
    if (self) {
//        // between 10 and 100
//        int random1 = arc4random_uniform(90) + 10;
//        int random2 = arc4random_uniform(90) + 10;
//        NSString *quest = [NSString stringWithFormat: @"%d + %d ?", random1, random2];
//        _question = quest;
//        _answer = random1 + random2;
//        _startTime = [NSDate date];
        
        // between 10 and 100
        _rightValue = arc4random_uniform(90) + 10;
        _leftValue = arc4random_uniform(90) + 10;
        _question = @"";
        _answer = 0;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger) answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (void) generateQuestion {}

- (NSTimeInterval) answerTime
{
    return [_endTime timeIntervalSinceDate:_startTime];
}
@end
