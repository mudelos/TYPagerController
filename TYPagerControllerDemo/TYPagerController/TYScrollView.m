//
//  TYScrollView.m
//  TYPagerControllerDemo
//
//  Created by 徐家沛 on 2019/3/14.
//  Copyright © 2019年 tany. All rights reserved.
//

#import "TYScrollView.h"

@implementation TYScrollView
//这个方法返回YES，第一个手势和第二个互斥时，第一个会失效
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer NS_AVAILABLE_IOS(7_0)
{
//#if DEBUG
//    NSLog(@"x:%@ y:%@", @(self.contentOffset.x), @(self.contentOffset.y));
//    NSLog(@"%@ %@", gestureRecognizer.className, otherGestureRecognizer.className);
//    NSLog(@"v :%@", gestureRecognizer.view.className);
//    NSLog(@"oV:%@", otherGestureRecognizer.view.className);
//#endif

    if ([NSStringFromClass(otherGestureRecognizer.class) isEqualToString:@"_UIParallaxTransitionPanGestureRecognizer"])
    {
        return YES;
    }

    return NO;
}

//这个方法返回YES，第一个和第二个互斥时，第二个会失效
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
//#if DEBUG
//    NSLog(@"x:%@ y:%@", @(self.contentOffset.x), @(self.contentOffset.y));
//    NSLog(@"%@ %@", gestureRecognizer.className, otherGestureRecognizer.className);
//    NSLog(@"v :%@", gestureRecognizer.view.className);
//    NSLog(@"oV:%@", otherGestureRecognizer.view.className);
//#endif
    return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
//    if ([NSStringFromClass(otherGestureRecognizer.class) isEqualToString:@"_UIParallaxTransitionPanGestureRecognizer"])
//    {
//        return YES;
//    }
//    CGFloat width = self.contentSize.width - self.frame.size.width;
//
////    NSLog(@"width = %f, offsetX = %f",width, self.contentOffset.x);
////    NSLog(@"offsetX = %f gestureRecognizer = %@, otherGestureRecognizer = %@ ", self.contentOffset.x,gestureRecognizer,otherGestureRecognizer);
//
////    NSLog(@"otherGestureRecognizer.view = %@", NSStringFromClass(otherGestureRecognizer.view.class));
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UITableView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UICollectionView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"TYScrollView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"PXCollectionView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"TYCollectionView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"PXTableView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UIScrollView"])
//    {
//        return NO;
//    }
//
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//
//    NSArray *allLanguages = [defaults objectForKey:@"AppleLanguages"];
//
//    NSString *preferredLang = [allLanguages objectAtIndex:0];
//
//    if (preferredLang.length >= 2 && [[preferredLang substringToIndex:2] isEqualToString:@"ar"])
//    {
//        if (self.contentOffset.x >= width)
//        {
//            return YES;
//        }
//    }
//    else
//    {
//        if (self.contentOffset.x <= 0)
//        {
//            return YES;
//        }
//    }

    return NO;
}
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
//{
//    CGFloat width = self.contentSize.width - self.frame.size.width;
//
////    NSLog(@"width = %f, offsetX = %f",width, self.contentOffset.x);
////    NSLog(@"offsetX = %f gestureRecognizer = %@, otherGestureRecognizer = %@ ", self.contentOffset.x,gestureRecognizer,otherGestureRecognizer);
//
////    NSLog(@"otherGestureRecognizer.view = %@", NSStringFromClass(otherGestureRecognizer.view.class));
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UITableView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UICollectionView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"TYScrollView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"PXCollectionView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"TYCollectionView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"PXTableView"])
//    {
//        return NO;
//    }
//
//    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UIScrollView"])
//    {
//        return NO;
//    }
//
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//
//    NSArray *allLanguages = [defaults objectForKey:@"AppleLanguages"];
//
//    NSString *preferredLang = [allLanguages objectAtIndex:0];
//
//    if (preferredLang.length >= 2 && [[preferredLang substringToIndex:2] isEqualToString:@"ar"])
//    {
//        if (self.contentOffset.x >= width)
//        {
//            return YES;
//        }
//    }
//    else
//    {
//        if (self.contentOffset.x <= 0)
//        {
//            return YES;
//        }
//    }
//
//    return NO;
//}

@end
