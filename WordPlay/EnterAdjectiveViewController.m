//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Julian Lee on 1/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdverbViewController *destination = segue.destinationViewController;
    self.story.adjective = self.adjectiveTextField.text;
    destination.story = self.story;
}


@end
