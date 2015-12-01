//
//  UIImage+image.m
//  sanwen
//
//  Created by ma on 15/11/21.
//  Copyright © 2015年 ma. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)

+(instancetype)imageWithOriginalName:(NSString *)imageName{

UIImage *  selImage = [UIImage imageNamed:imageName];
return [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

}

+(instancetype)imageWithStretchableName:(NSString *)imageName{
    UIImage * image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height* 0.5];
}
@end
