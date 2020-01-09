//
//  TYScrollView.m
//  TYPagerControllerDemo
//
//  Created by 徐家沛 on 2019/3/14.
//  Copyright © 2019年 tany. All rights reserved.
//

#import "TYScrollView.h"

@implementation TYScrollView

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    CGFloat width = self.contentSize.width - self.frame.size.width;

//    NSLog(@"width = %f, offsetX = %f",width, self.contentOffset.x);
//    NSLog(@"offsetX = %f gestureRecognizer = %@, otherGestureRecognizer = %@ ", self.contentOffset.x,gestureRecognizer,otherGestureRecognizer);

//    NSLog(@"otherGestureRecognizer.view = %@", NSStringFromClass(otherGestureRecognizer.view.class));

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UITableView"])
    {
        return NO;
    }

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UICollectionView"])
    {
        return NO;
    }

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"TYScrollView"])
    {
        return NO;
    }

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"PXCollectionView"])
    {
        return NO;
    }

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"TYCollectionView"])
    {
        return NO;
    }

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"PXTableView"])
    {
        return NO;
    }

    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UIScrollView"])
    {
        return NO;
    }

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    NSArray *allLanguages = [defaults objectForKey:@"AppleLanguages"];

    NSString *preferredLang = [allLanguages objectAtIndex:0];

    if (preferredLang.length >= 2 && [[preferredLang substringToIndex:2] isEqualToString:@"ar"])
    {
        if (self.contentOffset.x >= width)
        {
            return YES;
        }
    }
    else
    {
        if (self.contentOffset.x <= 0)
        {
            return YES;
        }
    }

    return NO;
}

@end
