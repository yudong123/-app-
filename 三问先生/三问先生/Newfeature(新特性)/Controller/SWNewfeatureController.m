//
//  SWNewfeatureController.m
//  sanwen
//
//  Created by ma on 15/11/25.
//  Copyright © 2015年 ma. All rights reserved.
//

#import "SWNewfeatureController.h"
#import "SWNewfeatureCell.h"
@interface SWNewfeatureController ()

@property(nonatomic,weak)UIPageControl * control;
@end

@implementation SWNewfeatureController

static NSString * ID =@"Cell";
-(instancetype)init{
//设置cell的属性
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    if (self=[super initWithCollectionViewLayout:layout]) {
        
        layout.itemSize = [UIScreen mainScreen].bounds.size;
        //清空行距
        layout.minimumLineSpacing=0;
        
        //设置滚动的方向
        layout.scrollDirection=UICollectionViewScrollDirectionHorizontal;
    }
     return self;


}
//使用collectionviewController步骤
//1初始化的时候设置布局参数
//2必须要collection要注册
//3自定义cell
- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor=[UIColor redColor];
    
    //注册cell.默认就会创建这个类型的 cell
    [self.collectionView registerClass:[SWNewfeatureCell class] forCellWithReuseIdentifier:ID];
    self.collectionView.pagingEnabled=YES;
    self.collectionView.bounces=NO;
    self.collectionView.showsHorizontalScrollIndicator=NO;
    //添加pageController
    [self setUpPageController];
}


-(void)setUpPageController{
//添加pageCongtroller.只需要设置位置，不需要管理尺寸
    UIPageControl * control = [[UIPageControl alloc]init];
    
    control.numberOfPages = 4;
    
    control.pageIndicatorTintColor = [UIColor blackColor];
    control.currentPageIndicatorTintColor=[UIColor redColor];
    
    //设置center
    control.center=CGPointMake(self.view.width*0.5, self.view.height-20);
    
    _control=control;

    [self.view addSubview:control];

}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
// 获取当前的偏移量，计算当前第几页
    int page = scrollView.contentOffset.x/scrollView.bounds.size.width+0.5;
    
    //设置页数
    _control.currentPage = page;
    
}
//返回多少组
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 1;

}
//返回第section组有多少个cell
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 4;

}

//返回长什么样子
//dequeueReusableCellWithReuseIdentifier
//1首先去缓存池里取cell
//2看下当前是否注册cell,,如果注册了，就会帮你创建
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SWNewfeatureCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    cell.backgroundColor= [UIColor greenColor];
    //给cell传值
    //拼接图片名称
    NSString * imageName = [NSString stringWithFormat:@"new_feature_%ld",indexPath.row+1];
    
   
    cell.image=[UIImage imageNamed:imageName];

    
    [cell setIndexPath:indexPath count:4];
    
    //NSLog(@"%@",cell);


    return cell;
}
@end
