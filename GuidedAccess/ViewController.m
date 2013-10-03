//
//  ViewController.m
//  GuidedAccess
//
//  Created by nori on 2013/10/03.
//  Copyright (c) 2013年 nori. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)updateRestrictionState
{
    if (UIGuidedAccessRestrictionStateForIdentifier(@"li.noli.guidedaccess.secretButton") == UIGuidedAccessRestrictionStateDeny){
        self.secretButton.hidden = YES;
    }
    else{
        self.secretButton.hidden = NO;
    }
}

@end
