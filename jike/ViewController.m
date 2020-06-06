//
//  ViewController.m
//  jike
//
//  Created by 小仙女 guluoyan.cn on 2020/6/4.
//  Copyright © 2020 小仙女 guluoyan.cn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    


//    UIView *view = [[UIView alloc] init];
//    view.backgroundColor = [UIColor greenColor];
//    view.frame=CGRectMake(100, 100, 100, 100);
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:view];
////    初始化点击事件
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
////    对应view增加点击事件
//    [view addGestureRecognizer:tapGesture];
//    // Do any additional setup after loading the view.
//}
////对应事件
//- (void) pushController{
//
//    UIViewController *viewController = [[UIViewController alloc]init];
//    viewController.view.backgroundColor = [UIColor whiteColor];
//    viewController.navigationItem.title = @"内容";
////    设置右侧button
//    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧button" style:UIBarButtonItemStylePlain target:self action:nil];
////    执行push事件
//    [self.navigationController pushViewController:viewController animated:YES];
    

    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    复用高效实现复用列表
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
//    回收
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    cell.textLabel.text = @"主标题";
    cell.detailTextLabel.text = @"副标题";
    cell.imageView.image = [UIImage imageNamed:@"video_selected.png"];
    return cell;
}



@end
