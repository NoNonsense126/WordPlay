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
    self.resultsTextView.text = [NSString stringWithFormat:@"Hi my name is %@ and I'm %@. I work %@ if there is %@ in the room.", self.story.name, self.story.adjective, self.story.adverb, self.story.noun];
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
