//
//  MltiplicationQuestion.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-28.
//

#import "MltiplicationQuestion.h"

@implementation MltiplicationQuestion

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
    super.question = [NSString stringWithFormat: @"%ld * %ld ?", (long)super.rightValue, (long)super.leftValue];
    super.answer = (NSInteger)super.rightValue * (NSInteger)super.leftValue;
}

@end
