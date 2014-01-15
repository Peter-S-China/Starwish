//
//  SettingViewController.m
//  MakeFriend
//
//  Created by dianji on 13-7-16.
//  Copyright (c) 2013年 dianji. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"设置";
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"settingbackgroundView.png"]];
    //创建登陆页面
    _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //设置tableview的背景颜色，ios6只能这么设定
    UIView* groundView = [[[UIView alloc]initWithFrame:_tableView.bounds] autorelease];
    UIImageView*back=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"settingbackgroundView.png"]];
    back.frame=groundView.bounds;
    [groundView addSubview:back];
    [back release];
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    _tableView.separatorColor=[UIColor blackColor];
    _tableView.backgroundView = groundView;
    _tableView.delegate=self;
    _tableView.dataSource=self;
    _tableView.frame=CGRectMake(0, 0, 320, self.view.bounds.size.height -44);
    [self.view addSubview:_tableView];
    [_tableView release];
    

    
    
}
-(void)personalMessage:(UIButton*)sender
{

}
-(void)accountManagement:(UIButton*)sender
{
    
}
-(void)moneyManagement:(UIButton*)sender
{
    
}
-(void)myWish:(UIButton*)sender
{
    
}
-(void)myGift:(UIButton*)sender
{
    
}

#pragma mark --tableViewDelegate
//tableview的必须实现的方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    if (section==1) {
        return 2;
    }
    if (section == 2) {
        return 2;
    }
    return 0;
}
//设置cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[[[UITableViewCell alloc]init]autorelease];
    cell.userInteractionEnabled=YES;
    cell.backgroundColor=[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    //设置用户名和密码是lable，后面是textfield
    if (indexPath.section==0) {
        if (indexPath.row==0) {
            UIButton*personalMessage=[UIButton buttonWithType:UIButtonTypeCustom];
            [personalMessage setTitle:@"个人信息" forState:UIControlStateNormal];
            [personalMessage addTarget:self action:@selector(personalMessage:) forControlEvents:UIControlEventTouchUpInside];
            personalMessage.titleLabel.font=[UIFont systemFontOfSize:18];
            [personalMessage setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            personalMessage.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            personalMessage.frame=CGRectMake(25, 0, cell.frame.size.width-25, cell.frame.size.height);
            [cell.contentView addSubview:personalMessage];
            
            UIImageView*imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right.png"]];
            imageview.frame=CGRectMake(260, 20, 7, 10);
            imageview.backgroundColor=[UIColor clearColor];
            [cell addSubview:imageview];
            [imageview release];
            
            
        }
            }
    //意见反馈和分享给朋友
    if (indexPath.section==1) {
        
        if (indexPath.row==0) {
            
            UIButton*accountManagement=[UIButton buttonWithType:UIButtonTypeCustom];
            [accountManagement setTitle:@"我的帐户管理" forState:UIControlStateNormal];
            [accountManagement addTarget:self action:@selector(accountManagement:) forControlEvents:UIControlEventTouchUpInside];
            accountManagement.titleLabel.font=[UIFont systemFontOfSize:18];
            [accountManagement setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [accountManagement.titleLabel setTextAlignment:NSTextAlignmentLeft];
            accountManagement.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            accountManagement.frame=CGRectMake(25, 0, cell.frame.size.width-25, cell.frame.size.height);
            [cell.contentView addSubview:accountManagement];
            
            UIImageView*imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right.png"]];
            imageview.frame=CGRectMake(260, 20, 7, 10);
            imageview.backgroundColor=[UIColor clearColor];
            [cell addSubview:imageview];
            [imageview release];
            
                    }
        //第二行
        if (indexPath.row==1) {
            UIButton*moneyManagement=[UIButton buttonWithType:UIButtonTypeCustom];
            [moneyManagement setTitle:@"资金管理" forState:UIControlStateNormal];
            [moneyManagement addTarget:self action:@selector(moneyManagement:) forControlEvents:UIControlEventTouchUpInside];
            [moneyManagement setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            moneyManagement.titleLabel.font=[UIFont systemFontOfSize:18];
            moneyManagement.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            moneyManagement.frame=CGRectMake(25, 0, cell.frame.size.width-25, cell.frame.size.height);
            [cell.contentView addSubview:moneyManagement];
           
            UIImageView*imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right.png"]];
            imageview.frame=CGRectMake(260, 20, 7, 10);
            imageview.backgroundColor=[UIColor clearColor];
            [cell addSubview:imageview];
            [imageview release];
        
        }
               
    }
    if (indexPath.section==2) {
        if (indexPath.row==0) {
            
            
            UIButton*myWish=[UIButton buttonWithType:UIButtonTypeCustom];
            [myWish setTitle:@"我的愿望" forState:UIControlStateNormal];
            [myWish setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            myWish.titleLabel.font=[UIFont systemFontOfSize:18];
            myWish.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            myWish.frame=CGRectMake(25, 0, cell.frame.size.width-25, cell.frame.size.height);
            [myWish addTarget:self action:@selector(myWish:) forControlEvents:UIControlEventTouchUpInside];
            [cell.contentView addSubview:myWish];
            
            UIImageView*imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right.png"]];
            imageview.frame=CGRectMake(260, 20, 7, 10);
            imageview.backgroundColor=[UIColor clearColor];
            [cell addSubview:imageview];
            [imageview release];
            
        }
        if (indexPath.row==1) {
            UIButton*myGift=[UIButton buttonWithType:UIButtonTypeCustom];
            [myGift setTitle:@"我的礼物" forState:UIControlStateNormal];
            [myGift addTarget:self action:@selector(myGift:) forControlEvents:UIControlEventTouchUpInside];
            [myGift setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            myGift.titleLabel.font=[UIFont systemFontOfSize:18];
            myGift.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
            myGift.frame=CGRectMake(25, 0, cell.frame.size.width-25, cell.frame.size.height);

            [cell.contentView addSubview:myGift];
            
            UIImageView*imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right.png"]];
            imageview.frame=CGRectMake(260, 20, 7, 10);
            imageview.backgroundColor=[UIColor clearColor];
            [cell addSubview:imageview];
            [imageview release];
            
        }

        
        
    }
    return cell;
}

//section头部间距
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;//section头部高度
}
//section头部视图
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    view.backgroundColor = [UIColor clearColor];
    return [view autorelease];
} - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
