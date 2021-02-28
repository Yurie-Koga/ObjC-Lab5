//
//  QuestionManager.h
//  Lab3
//
//  Created by Uji Saori on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic, assign) NSMutableArray *questions;

- (void) addQuestion:(Question *) question;
- (NSString *) timeOutput;

@end

NS_ASSUME_NONNULL_END
