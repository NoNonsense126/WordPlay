//
//  EnterNounViewController.m
//  WordPlay
//
//  Created by Julian Lee on 1/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "EnterNounViewController.h"
#import "ResultsViewController.h"

@interface EnterNounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nounTextField;
@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.nounTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *destination = segue.destinationViewController;
    self.story.noun = self.nounTextField.text;
    destination.story = self.story;
}

@end
