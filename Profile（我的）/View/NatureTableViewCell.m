//
//  NatureTableViewCell.m
//  OurCity
//
//  Created by 郑波波 on 16/4/27.
//  Copyright © 2016年 郑波波. All rights reserved.
//

#import "NatureTableViewCell.h"

@interface NatureTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *natureImage;
@property (weak, nonatomic) IBOutlet UILabel *natureName;

@end

@implementation NatureTableViewCell


+ (instancetype)loadXibWithTableView:(UITableView *)tableView
{
    NSString *cellID = @"Identifier1";
    [tableView registerNib:[UINib nibWithNibName:@"NatureTableViewCell" bundle:nil] forCellReuseIdentifier:cellID];
    NatureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
