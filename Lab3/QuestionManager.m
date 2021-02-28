//
//  QuestionManager.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-26.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype) init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (void) addQuestion:(Question *) question
{
    [_questions addObject:question];
}

- (NSString *) timeOutput
{
    double totalTime = 0;
    for (int i = 0; i < [_questions count]; i++) {
        Question *q = [_questions objectAtIndex:i];
        totalTime += [q answerTime];
    }
    double average = totalTime /[_questions count];
    NSString *output = [NSString stringWithFormat:@"total time: %0.fs, average time: %0.1fs", totalTime, average];
    return output;
}

@end
