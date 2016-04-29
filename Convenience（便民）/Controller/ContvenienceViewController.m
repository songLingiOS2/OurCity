//
//  HomeViewController.m
//  同城帮
//
//  Created by 郑波波 on 16/4/24.
//  Copyright © 2016年 郑波波. All rights reserved.
//

#import "ContvenienceViewController.h"
#import "ContveniceOneCell.h"
#import "ContveniceTwoCell.h"
#import "contveniceThreeCell.h"


@interface ContvenienceViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ContvenienceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = 0;
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    [self.myTableView registerNib:[UINib nibWithNibName:@"ContveniceOneCell" bundle:nil] forCellReuseIdentifier:@"ContveniceOneCell"];
    
    [self.myTableView registerNib:[UINib nibWithNibName:@"ContveniceTwoCell" bundle:nil] forCellReuseIdentifier:@"ContveniceTwoCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"ContveniceThreeCell" bundle:nil]    forCellReuseIdentifier:@"ContveniceThreeCell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 2;
    }
    if (section == 1){
        return 1;
    }
    if (section == 2) {
        return 5;
    }
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return  80;
    }
    if (indexPath.section == 1) {
        return 150;
    }
    if (indexPath.section == 2) {
        return  80;
    }
    return 0;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if (indexPath.section == 0) {
        
        ContveniceOneCell *OneCell = [tableView dequeueReusableCellWithIdentifier:@"ContveniceOneCell" ];
        if (OneCell == nil) {
            OneCell = [[ContveniceOneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ContveniceOneCell"];
        }
        OneCell.image.image = [UIImage imageNamed:@""];
        OneCell.nameLabel.text = @"XXXX";
        OneCell.detailLabel.text = @"12345678";
        return OneCell;
    }
    if (indexPath.section == 1){
        ContveniceTwoCell *TwoCell = [tableView dequeueReusableCellWithIdentifier:@"ContveniceTwoCell"];
        if (TwoCell == nil) {
            TwoCell = [[ContveniceTwoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ContveniceTwoCell"];
        }
        TwoCell.imageOne.backgroundColor = [UIColor blackColor];
        TwoCell.imageTwo.backgroundColor = [UIColor redColor];
        TwoCell.imagThree.backgroundColor = [UIColor blueColor];
        TwoCell.Fourth.backgroundColor = [UIColor yellowColor];
        return TwoCell;
    }
    if (indexPath.section == 2) {

        ContveniceOneCell *OneCell = [tableView dequeueReusableCellWithIdentifier:@"ContveniceOneCell" ];
        if (OneCell == nil) {
            OneCell = [[ContveniceOneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ContveniceOneCell"];
        }
        OneCell.image.backgroundColor = [UIColor redColor];
        OneCell.nameLabel.text = @"XXXX";
        OneCell.detailLabel.text = @"12345678";
        return OneCell;
        
    }
        
        
        
        
    return nil;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
