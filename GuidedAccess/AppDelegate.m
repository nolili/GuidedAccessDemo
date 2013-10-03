//
//  AppDelegate.m
//  GuidedAccess
//
//  Created by nori on 2013/10/03.
//  Copyright (c) 2013年 nori. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (NSArray *)guidedAccessRestrictionIdentifiers
{
    return @[secretButtonRestrictionIdentifier];
}

// Called each time the restriction associated with the identifier changes state.
- (void)guidedAccessRestrictionWithIdentifier:(NSString *)restrictionIdentifier didChangeState:(UIGuidedAccessRestrictionState)newRestrictionState
{
    if ([restrictionIdentifier isEqualToString:secretButtonRestrictionIdentifier]) {
        [(ViewController *)self.window.rootViewController updateRestrictionState];
    }
}

// Returns a localized string that describes the restriction associated with the identifier.
- (NSString *)textForGuidedAccessRestrictionWithIdentifier:(NSString *)restrictionIdentifier
{
    if ([restrictionIdentifier isEqualToString:secretButtonRestrictionIdentifier]) {
         return @"秘密のボタン";
    }
    else {
        return nil;
    }
}

// Returns a localized string that gives additional detail about the restriction associated with the identifier.
- (NSString *)detailTextForGuidedAccessRestrictionWithIdentifier:(NSString *)restrictionIdentifier
{
    if ([restrictionIdentifier isEqualToString:secretButtonRestrictionIdentifier]) {
        return @"秘密のボタンを使用できるようにします";
    }
    else {
        return nil;
    }
}

@end
