//
//  GTVideoViewController.m
//  jike
//
//  Created by s on 2020/6/6.
//  Copyright © 2020 小仙女 guluoyan.cn. All rights reserved.
//

#import "GTVideoViewController.h"

@interface GTVideoViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation GTVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
//   初始化
    UICollectionViewFlowLayout *flowLayout =[[UICollectionViewFlowLayout alloc]init];
    flowLayout.minimumLineSpacing = 10;
    flowLayout.minimumInteritemSpacing =10;
    flowLayout.itemSize = CGSizeMake((self.view.frame.size.width - 10 ) / 2, 300);
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    collectionView.dataSource = self;
    collectionView.delegate = self;

//    注册cell
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
     [self.view addSubview:collectionView];
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


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor =[UIColor redColor];
    return cell;
     
}
//自定义样式
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.item %3 == 0) {
        return CGSizeMake(self.view.frame.size.width,100);
                          }else {
            return CGSizeMake((self.view.frame.size.width - 10 ) / 2, 300);;
        }
}
@end
