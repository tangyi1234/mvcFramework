//
//  HomeViewController.m
//  Framework
//
//  Created by 汤义 on 17/3/15.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
@interface HomeViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *MutableArray;
@property (nonatomic, strong) NSMutableArray *modelArray;
@end

@implementation HomeViewController

- (NSMutableArray *)MutableArray {
    if (_MutableArray == nil) {
        _MutableArray = [NSMutableArray array];
    }
    return _MutableArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    //数据请求和转模型
    [self initRequest];
    //这里用tableView做例子
    [self initTabelView];
    
}
//用于仿制请求数据转模型
- (void)initRequest {
    NSDictionary *Dictionary1 = @{@"imageName":@"image",@"text":@"小明",@"content":@"刚回家好看好看构建个你圣诞节发送"};
    NSDictionary *Dictionary2 = @{@"imageName":@"image",@"text":@"小话",@"content":@"刚回家好看好"};
    NSDictionary *Dictionary3 = @{@"imageName":@"image",@"text":@"小红",@"content":@"刚回家好看好是割发代首个收到"};
    _MutableArray = [NSMutableArray arrayWithObjects:Dictionary1,Dictionary2,Dictionary3, nil];
    _modelArray = [NSMutableArray array];
    for (NSDictionary *dic in _MutableArray) {
        DataModel *model = [DataModel initDataModel:dic];
        [_modelArray addObject:model];
    }
}

- (void)initTabelView {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT - 64) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeTableViewCell *cell = [HomeTableViewCell homeTableViewCell:tableView];
    cell.dataModel = _modelArray[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   return 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
