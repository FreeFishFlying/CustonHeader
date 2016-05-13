//
//  MainViewController.h
//  CustomHeader_MJ_Refresh
//
//  Created by app on 16/5/13.
//  Copyright © 2016年 scp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tb;

@end
