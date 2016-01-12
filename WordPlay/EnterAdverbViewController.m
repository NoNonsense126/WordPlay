//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Julian Lee on 1/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "EnterNounViewController.h"

@interface EnterAdverbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adverbTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterNounViewController *destination = segue.destinationViewController;
    self.story.adverb = self.adverbTextField.text;
    destination.story = self.story;
}

@end
