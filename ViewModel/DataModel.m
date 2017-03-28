//
//  DataModel.m
//  Framework
//
//  Created by 汤义 on 17/3/16.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
+ (instancetype)initDataModel:(NSDictionary *)Dictionary {
    
    return [[self alloc] conversionDataModel:Dictionary];
}

- (instancetype)conversionDataModel:(NSDictionary *)Dictionary {
    if (self == [super init]) {
        self.imageName = [NSString stringWithFormat:@"%@", Dictionary[@"imageName"]];
        self.textLbl = [NSString stringWithFormat:@"%@", Dictionary[@"text"]];
        self.contentLbl = [NSString stringWithFormat:@"%@", Dictionary[@"content"]];
    }
    return self;
}
@end
