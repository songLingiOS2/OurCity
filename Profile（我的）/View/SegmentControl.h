//
//  SegmentControl.h
//  FollowMe
//
//  Created by Bruce on 15/7/30.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentControl : UIView
{
    UIView *indicotorView;
    NSInteger lastTag;
    NSArray *titleList;
}

//底部细线的颜色
@property (nonatomic,retain) UIColor *lineColor;
//滚动条的颜色
@property (nonatomic,retain) UIColor *indicotorColor;

//获得  选中按钮的下标
//@property (nonatomic,copy)void(^selectBlock)(NSInteger selectIndex);
/**
 *  初始化分段选择控件
 *
 *  @param titles 分段选择按钮的标题
 *  @param frame  分段选择按钮的坐标
 *
 *  @return 分段选择控件的对象
 */
- (instancetype)initWithCreatSegmentControlWithTitles:(NSArray *)titles frame:(CGRect)frame;

@end
