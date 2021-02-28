//
//  QuestionFactory.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-28.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype) init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubstractionQuestion", @"MltiplicationQuestion", @"DivideQuestion"];
    }
    return self;
}

- (Question *) generateRandomeQuestion
{
    // between 0 and 3
    int random = arc4random_uniform(4);
    NSString *className = _questionSubclassNames[random];
    Question *q = [[NSClassFromString(className) alloc] init];
    return q;
}

@end
