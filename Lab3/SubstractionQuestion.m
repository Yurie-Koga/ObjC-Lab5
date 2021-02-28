//
//  SubstractionQuestion.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-28.
//

#import "SubstractionQuestion.h"

@implementation SubstractionQuestion

- (instancetype) init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion
{
    super.question = [NSString stringWithFormat: @"%ld - %ld ?", (long)super.rightValue, (long)super.leftValue];
    super.answer = (NSInteger)super.rightValue - (NSInteger)super.leftValue;
}

@end
