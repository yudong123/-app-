//
//  UIBarButtonItem+Item.h
//  sanwen
//
//  Created by ma on 15/11/22.
//  Copyright © 2015年 ma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)
+(UIBarButtonItem *)barBuattonItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)targer action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
@end
