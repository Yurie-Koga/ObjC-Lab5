//
//  QuestionFactory.h
//  Lab3
//
//  Created by Uji Saori on 2021-02-28.
//

#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : Question

@property (nonatomic) NSArray *questionSubclassNames;

- (Question *) generateRandomeQuestion;

@end

NS_ASSUME_NONNULL_END
