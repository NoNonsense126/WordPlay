//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Julian Lee on 1/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"
#import "Story.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.nameTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdjectiveViewController *destination = segue.destinationViewController;
    Story *story = [Story new];
    story.name = self.nameTextField.text;
    destination.story = story;
}


@end
