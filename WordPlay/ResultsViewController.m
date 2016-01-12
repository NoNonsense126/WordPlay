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
    NSMutableAttributedString *mutableAttString = [[NSMutableAttributedString alloc] init];
    
    
    UIFont *fontText = [UIFont boldSystemFontOfSize:20];
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];
    
    NSArray *stringsToConvert = [NSArray arrayWithObjects:@"Hi my name is ", self.story.name, @" and I'm ", self.story.adjective, @". I work ", self.story.adverb, @" if there is ", self.story.noun, @" in the room.", nil];
    
    for(int i=0; i < stringsToConvert.count; i++){
        if(i%2==1)
        {
            NSAttributedString *newAttString = [[NSAttributedString alloc] initWithString:[stringsToConvert objectAtIndex:i] attributes:dictBoldText];
            [mutableAttString appendAttributedString:newAttString];
        }
        else
        {
            NSAttributedString *newAttString = [[NSAttributedString alloc] initWithString:[stringsToConvert objectAtIndex:i]];
            [mutableAttString appendAttributedString:newAttString];
        }
    }

    [self.resultsTextView setAttributedText:mutableAttString];
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
