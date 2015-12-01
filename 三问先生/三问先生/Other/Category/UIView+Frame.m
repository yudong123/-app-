//
//  UIView+Frame.m
//  sanwen
//
//  Created by ma on 15/11/22.
//  Copyright © 2015年 ma. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame=frame;

}

-(CGFloat)x{

    return self.frame.origin.x;
}

-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y= y;
    self.frame = frame;
}

-(CGFloat)y{

    return self.frame.origin.y;
}

-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width=width;
    self.frame = frame;
}

-(CGFloat)width{
 
    return self.frame.size.width;

}
-(CGFloat)height{

    return self.frame.size.height;
}

-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame =frame;

}

@end
