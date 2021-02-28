//
//  Question.h
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger *answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger *rightValue;
@property (nonatomic) NSInteger *leftValue;

- (void) generateQuestion;
- (NSTimeInterval) answerTime;

@end

NS_ASSUME_NONNULL_END
