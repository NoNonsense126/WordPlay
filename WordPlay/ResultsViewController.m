//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Julian Lee on 1/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "ResultsViewController.h"


@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self storyMaker];
    
}

- (void)storyMaker
{
    
    NSString *fullStory = [NSString stringWithFormat:@"Hi my name is %@ and I'm %@. I work %@ if there is %@ in the room.", self.story.name, self.story.adjective, self.story.adverb, self.story.noun];

    
    NSRange rangeName = [fullStory rangeOfString:self.story.name];
    NSRange rangeAdjective = [fullStory rangeOfString:self.story.adjective];
    NSRange rangeAdverb = [fullStory rangeOfString:self.story.adverb];
    NSRange rangeNoun = [fullStory rangeOfString:self.story.noun];
    
    UIFont *fontText = [UIFont boldSystemFontOfSize:20];
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];
    
    NSMutableAttributedString *mutAttrTextViewString = [[NSMutableAttributedString alloc] initWithString:fullStory];
    [mutAttrTextViewString setAttributes:dictBoldText range:rangeName];
    [mutAttrTextViewString addAttributes:dictBoldText range:rangeAdjective];
    [mutAttrTextViewString addAttributes:dictBoldText range:rangeAdverb];
    [mutAttrTextViewString addAttributes:dictBoldText range:rangeNoun];
    
    [self.resultsTextView setAttributedText:mutAttrTextViewString];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
