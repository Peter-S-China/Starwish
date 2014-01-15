//
//  SettingViewController.h
//  MakeFriend
//
//  Created by dianji on 13-7-16.
//  Copyright (c) 2013年 dianji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"MFViewController.h"
@interface SettingViewController : MFViewController<UITableViewDataSource,UITableViewDelegate>
{
  UITableView *_tableView;
}
@end
