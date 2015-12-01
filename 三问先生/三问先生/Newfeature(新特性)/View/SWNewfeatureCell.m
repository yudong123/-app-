//
//  SWNewfeatureCell.m
//  sanwen
//
//  Created by ma on 15/11/25.
//  Copyright © 2015年 ma. All rights reserved.
//

#import "SWNewfeatureCell.h"
#import "SWTabBarController.h"

@interface  SWNewfeatureCell()

@property(nonatomic,weak)UIImageView * imageView;
@property(nonatomic,weak)UIButton * startButton;

@end
@implementation SWNewfeatureCell

-(UIButton*)startButton{
    if (!_startButton) {
        UIButton * startBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [startBtn setTitle:@"开始三问" forState:UIControlStateNormal];
        [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button"] forState:UIControlStateNormal];
        [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button_highlighted"] forState:UIControlStateHighlighted];
        [startBtn sizeToFit];
        
        [startBtn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:startBtn];
       
         _startButton =startBtn;
    }
    return _startButton;


}


-(UIImageView *)imageView{

    if (!_imageView) {
        UIImageView * imageV =[[UIImageView alloc]init];
        _imageView=imageV;
        //注意：一定要加到contenView上
        [self.contentView addSubview:imageV];
    }
    return _imageView;
}

-(void)setIndexPath:(NSIndexPath *)indexPath count:(int)count{

    if (indexPath.row == count - 1) {
        self.startButton.hidden=NO;
    }else{
    
        self.startButton.hidden=YES;
    
    }


}

//布局子控件的frame
-(void)layoutSubviews{
    [super layoutSubviews];
    self.imageView.frame =self.bounds;
    self.startButton.center= CGPointMake(self.width*0.5, self.height*0.9);
    

}
-(void)setImage:(UIImage *)image{
    _image =image;
    self.imageView.image=image;


}
-(void)start{
    
    SWTabBarController * tabBarVc = [[SWTabBarController alloc]init];
    SWKeyWindow.rootViewController=tabBarVc;
    


}
@end
