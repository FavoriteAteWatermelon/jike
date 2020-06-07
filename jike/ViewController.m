//
//  ViewController.m
//  jike
//
//  Created by 小仙女 guluoyan.cn on 2020/6/4.
//  Copyright © 2020 小仙女 guluoyan.cn. All rights reserved.
//

#import "ViewController.h"
#import "GTNormalTableViewCell.h"
@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    
    tableView.dataSource = self;
    tableView.delegate = self;
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
//设置高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController  *controller =[[UIViewController alloc]init];
    controller.title = [NSString stringWithFormat:@"%@",@(indexPath.row)];
    [self.navigationController pushViewController:controller animated:YES];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    复用高效实现复用列表
    GTNormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
//    回收
    if (!cell) {
        cell = [[GTNormalTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
//    调用自定义的方法
    [cell layoutTableViewCell];
//    cell.textLabel.text = @"主标题";
//    cell.textLabel.text = [NSString stringWithFormat:@"主题-%@",@(indexPath.row)];
//    cell.detailTextLabel.text = @"副标题";
//    cell.imageView.image = [UIImage imageNamed:@"video_selected.png"];
    return cell;
}



@end
