//
//  MainViewController.m
//  CustomHeader_MJ_Refresh
//
//  Created by app on 16/5/13.
//  Copyright © 2016年 scp. All rights reserved.
//

#import "MainViewController.h"
#import "MJRefresh.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tb.header = [CustomRefreshHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
}

-(void)loadData
{
    [self performSelector:@selector(endLoad) withObject:nil afterDelay:3];
}

-(void)endLoad
{
    [self.tb.header endRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UItableViewDataSourse
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    return cell;
    
}

@end
