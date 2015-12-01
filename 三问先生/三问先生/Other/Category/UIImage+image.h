//
//  UIImage+image.h
//  sanwen
//
//  Created by ma on 15/11/21.
//  Copyright © 2015年 ma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)

//默认会识别当前是哪个类或者对象调用，就回转换成对应的类的对象


//加载最原始的图片,没有渲染
+(instancetype)imageWithOriginalName:(NSString *)imageName;

+(instancetype)imageWithStretchableName:(NSString *)imageName;

@end
