//
//  HomeTableViewCell.h
//  Framework
//
//  Created by 汤义 on 17/3/15.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTableViewCell : UITableViewCell
@property (nonatomic, strong) DataModel *dataModel;
+ (instancetype)homeTableViewCell:(UITableView *)tableView;
@end
