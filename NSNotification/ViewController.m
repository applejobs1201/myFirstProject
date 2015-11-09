//
//  ViewController.m
//  NSNotification
//
//  Created by Raki on 11/2/15.
//  Copyright (c) 2015 rize. All rights reserved.
//

#import "ViewController.h"
#import "SecondController.h"
@interface ViewController ()

@end

@implementation ViewController
- (IBAction)notifiy:(id)sender {
    
    
    SecondController *secVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondController"];
    [self.navigationController pushViewController:secVC animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(showMainMenu:)
                                                 name:@"loginComplete" object:nil];
    
    //Passing Object
    NSString *message = @"You will be Successfull";
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:message];
    
}


- (void)showMainMenu:(NSNotification *)note {
    NSLog(@"Received Notification - Someone seems to have logged in");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
