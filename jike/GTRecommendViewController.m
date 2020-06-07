//
//  GTRecommendViewController.m
//  jike
//
//  Created by s on 2020/6/7.
//  Copyright © 2020 小仙女 guluoyan.cn. All rights reserved.
//

#import "GTRecommendViewController.h"

@interface GTRecommendViewController ()<UIScrollViewDelegate>

@end

@implementation GTRecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.delegate = self;
    
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width *
                                        5, self.view.bounds.size.height);
//    创建一个list
      NSArray *colorArray = @[[UIColor redColor],[UIColor grayColor],[UIColor greenColor],[UIColor yellowColor],[UIColor blueColor]];
    for (int i= 0 ;i< 5;i++){
        [scrollView addSubview:({
            UIView *view =[[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width * i, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
            view.backgroundColor =[colorArray objectAtIndex:i];
//            注意这里要写一个view
            view;
        })];
    }
    scrollView.showsHorizontalScrollIndicator = NO;
//    分页
//    scrollView.pagingEnabled= YES;
    [self.view addSubview:scrollView];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//偏移量
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    NSLog(@"scrollViewDidScroll - %@",@(scrollView.contentOffset.y));
}

//开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
//    NSLog(@"begin drag");
    
}
// called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
//结束拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
//    NSLog(@"end drag");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    
}
//减速停止说明滑动结束
// called on finger up as we are moving
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
}    // called when scroll view grinds to a halt
@end
