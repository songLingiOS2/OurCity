//
//  PriceHeaderCell.m
//  OurCity
//
//  Created by 郑波波 on 16/4/27.
//  Copyright © 2016年 郑波波. All rights reserved.
//

#import "PriceHeaderCell.h"

@interface PriceHeaderCell()
@property (weak, nonatomic) IBOutlet UIButton *userIcon;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UIImageView *dayStuts;
@property (weak, nonatomic) IBOutlet UILabel *today;
@property (weak, nonatomic) IBOutlet UILabel *nextDay;

@property (weak, nonatomic) IBOutlet UILabel *laterTwoDay;
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;

@end

@implementation PriceHeaderCell

+ (instancetype)loadXibWithTableView:(UITableView *)tableView
{
    NSString *cellID = @"Identifier";
    [tableView registerNib:[UINib nibWithNibName:@"PriceHeaderCell" bundle:nil] forCellReuseIdentifier:cellID];
    PriceHeaderCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    _bgImageView.userInteractionEnabled = YES;
    _bgImageView.layer.masksToBounds = YES;
    _bgImageView.image = [UIImage imageNamed:@"timg.jpg"];
    
    _userIcon.layer.masksToBounds = YES;
    _userIcon.layer.borderWidth = 0.5;
    _userIcon.layer.cornerRadius = _userIcon.frame.size.width/2;
    _userIcon.layer.borderColor = [UIColor blackColor].CGColor;
    [_userIcon  setBackgroundImage:[UIImage imageNamed:@"avatar_default_big"] forState:UIControlStateNormal];
    
    _dayStuts.userInteractionEnabled = YES;
    _dayStuts.layer.masksToBounds = YES;
    _dayStuts.layer.borderWidth = 0.5;
    _dayStuts.layer.cornerRadius = _userIcon.frame.size.width/2;
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
