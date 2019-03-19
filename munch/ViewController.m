//
//  ViewController.m
//  munch
//
//  Created by Stephanie Lampotang on 3/19/19.
//  Copyright © 2019 Stephanie Lampotang. All rights reserved.
//

#import "ViewController.h"
#import <Firebase/Firebase.h>

@interface ViewController ()
@property (strong, nonatomic) FIRDatabaseReference *ref;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.ref = [[FIRDatabase database] reference];
    [[[self.ref child:@"users"] child:@"amazing"]
     setValue:@{@"username": @"slampo"}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
