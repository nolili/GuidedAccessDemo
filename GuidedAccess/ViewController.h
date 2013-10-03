//
//  ViewController.h
//  GuidedAccess
//
//  Created by nori on 2013/10/03.
//  Copyright (c) 2013年 nori. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *secretButtonRestrictionIdentifier = @"li.noli.guidedaccess.secretButton";

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *secretButton;

- (void)updateRestrictionState;

@end
