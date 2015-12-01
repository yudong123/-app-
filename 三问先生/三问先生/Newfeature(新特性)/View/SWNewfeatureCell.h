//
//  SWNewfeatureCell.h
//  sanwen
//
//  Created by ma on 15/11/25.
//  Copyright © 2015年 ma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWNewfeatureCell : UICollectionViewCell

@property(nonatomic,strong)UIImage * image;

//判断是否是最后一页
-(void)setIndexPath:(NSIndexPath *)indexPath count:(int)count;
@end
