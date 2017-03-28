//
//  HomeTableViewCell.m
//  Framework
//
//  Created by 汤义 on 17/3/15.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "HomeTableViewCell.h"
#import "StyleView.h"
@interface HomeTableViewCell()
@property (nonatomic, weak) StyleView *styleView;
@end
@implementation HomeTableViewCell
+ (instancetype)homeTableViewCell:(UITableView *)tableView {
    static NSString *ID = @"cell";
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HomeTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        [cell initView];
    }
    return cell;
}
//初始化整个view的图层
- (void)initView {
    StyleView *view = [StyleView initView:CGRectMake(0, 0, UI_SCREEN_WIDTH, 100)];
    [self addSubview:_styleView = view];
}
//数据逻辑(对应的给每个view数据，逻辑在这里处理)
- (void)setDataModel:(DataModel *)dataModel {
    _dataModel = dataModel;
    [_styleView initData:_dataModel];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
