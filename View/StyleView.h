//
//  StyleView.h
//  Framework
//
//  Created by 汤义 on 17/3/16.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@interface StyleView : UIView
+ (instancetype)initView:(CGRect)frame;
- (void)initData:(DataModel *)dataModel;
@end
