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
    
    if (self.contentOffset.x == 0) {
        return YES;
    }
    
    return NO;
    
}

@end
