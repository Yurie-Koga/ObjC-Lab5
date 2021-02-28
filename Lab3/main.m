//
//  main.m
//  Lab3
//
//  Created by Uji Saori on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questManager = [[QuestionManager alloc] init];
        QuestionFactory *questFactory = [[QuestionFactory alloc] init];
        
        while (YES) {
            Question *quest = [questFactory generateRandomeQuestion];
            [questManager addQuestion:quest];
            
            NSString *prompt = [NSString stringWithFormat: @"%@: ", quest.question];
            NSString *strInput = [InputHandler getUserInputWithMax: 255 AndPrompt: prompt];
            if ([[strInput lowercaseString] isEqualToString: @"q"]) { break; }
            
            if ([strInput intValue] == (long)quest.answer) {
                NSLog(@"Right");
                score.cntRight++;
            } else {
                NSLog(@"Wrong");
                score.cntWrong++;
            }
            [score displayResult];
            NSLog(@"%@", [questManager timeOutput]);
        }
    }
    return 0;
}

