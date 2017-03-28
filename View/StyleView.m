//
//  StyleView.m
//  Framework
//
//  Created by 汤义 on 17/3/16.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "StyleView.h"
#define image_HW 80
@interface StyleView()
@property (nonatomic, weak) UIImageView *imageViews;
@property (nonatomic, weak) UILabel *nameLbl;
@property (nonatomic, weak) UILabel *contentLbl;
@end
@implementation StyleView
+ (instancetype)initView:(CGRect)frame {
    StyleView *view = [[StyleView alloc] initWithFrame:frame];
    return view;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}
//在view初始化控件，(这里就如同web开发中的thml页面，也就是web中mvc中的view)
- (void)initView {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, image_HW, image_HW)];
    [self addSubview:_imageViews = imageView];
    
    UILabel *nameLbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, 100, 40)];
    [self addSubview:_nameLbl = nameLbl];
    
    UILabel *contentLbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 55, UI_SCREEN_WIDTH - image_HW -10, image_HW - 55)];
    [self addSubview:_contentLbl = contentLbl];
}

//这里就是这个页面的数据导入
- (void)initData:(DataModel *)dataModel {
    _imageViews.image = [UIImage imageNamed:dataModel.imageName];
    _nameLbl.text = dataModel.textLbl;
    _contentLbl.text = dataModel.contentLbl;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
