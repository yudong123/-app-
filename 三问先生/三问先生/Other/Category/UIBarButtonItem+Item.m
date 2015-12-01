//
//  UIBarButtonItem+Item.m
//  sanwen
//
//  Created by ma on 15/11/22.
//  Copyright © 2015年 ma. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)


+(UIBarButtonItem *)barBuattonItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)targer action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
   
    //btn
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:highImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:targer action:action forControlEvents:controlEvents];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];



}

@end


