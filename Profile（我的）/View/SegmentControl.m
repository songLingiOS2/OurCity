//
//  SegmentControl.m
//  FollowMe
//
//  Created by Bruce on 15/7/30.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "SegmentControl.h"

@implementation SegmentControl


- (instancetype)initWithCreatSegmentControlWithTitles:(NSArray *)titles frame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        titleList = titles;
        self.lineColor = [UIColor blackColor];
        self.indicotorColor = [UIColor blackColor];
//        滚动指示条
        indicotorView = [[UIView alloc]initWithFrame:CGRectMake(10+CGRectGetWidth(frame)/titles.count/(titles.count*2), CGRectGetHeight(frame)-3, CGRectGetWidth(frame)/(titles.count*2), 2)];
        indicotorView.backgroundColor = self.indicotorColor;
        [self addSubview:indicotorView];
//        最底下的细线
        UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(frame)-1, CGRectGetWidth(frame), 1)];
        bottomView.backgroundColor = self.lineColor;
        [self addSubview:bottomView];
        
//        分段选择的按钮
        for (int i=0; i<titles.count; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.tag = 100+i;
            button.frame = CGRectMake(CGRectGetWidth(frame)/titles.count*i, 0, CGRectGetWidth(frame)/titles.count, CGRectGetHeight(frame));
            [button setTitle:titles[i] forState:UIControlStateNormal];
            button.titleLabel.font = [UIFont systemFontOfSize:15];
            button.tintAdjustmentMode = UIViewTintAdjustmentModeAutomatic;
            [button setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];
//        *************    拖拽 或 点击    **************
            [button addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventTouchUpInside|UIControlEventTouchDragInside];
            [self addSubview:button];
        }
    }
    
    return self;
}

//点击按钮触发的方法
- (void)changeValue:(UIButton *)sender
{
    NSInteger selectIndex = 0;

    selectIndex = sender.tag-100;

    lastTag = sender.tag;

    
//    self.selectBlock(selectIndex);
    
//    起始位置
    CGFloat beginX =CGRectGetWidth(self.frame)/titleList.count/(titleList.count*2);
//    指示栏的宽
    CGFloat indicotorW = CGRectGetWidth(self.frame)/(titleList.count*2);
    
    [UIView animateWithDuration:0.3 animations:^{
        indicotorView.frame = CGRectMake(beginX+(( indicotorW + indicotorW )*selectIndex + 10), CGRectGetHeight(self.frame)-3, CGRectGetWidth(self.frame)/(titleList.count*2), 2);
    }];
}

@end
