//
//  TYScrollView.m
//  TYPagerControllerDemo
//
//  Created by 徐家沛 on 2019/3/14.
//  Copyright © 2019年 tany. All rights reserved.
//

#import "TYScrollView.h"

@implementation TYScrollView

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
//    CGFloat width = self.contentSize.width - self.frame.size.width;
    
//    NSLog(@"width = %f, offsetX = %f",width, self.contentOffset.x);
//    NSLog(@"offsetX = %f gestureRecognizer = %@, otherGestureRecognizer = %@ ", self.contentOffset.x,gestureRecognizer,otherGestureRecognizer);
    
    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UITableView"]) {
        return NO;
    }
    
    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UICollectionView"]) {
        return NO;
    }
    
    if ([NSStringFromClass(otherGestureRecognizer.view.class) isEqualToString:@"UIScrollView"]) {
        return NO;
    }
    
    if (self.contentOffset.x <= 0) {
        return YES;
    }
    
    return NO;
    
}

@end
