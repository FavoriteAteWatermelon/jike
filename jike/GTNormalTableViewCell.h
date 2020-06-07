//
//  GTNormalTableViewCell.h
//  jike
//
//  Created by s on 2020/6/7.
//  Copyright © 2020 小仙女 guluoyan.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GTNormalTableViewCell : UITableViewCell
@property(atomic,strong,readwrite) UILabel *titleLabel;
@property(atomic,strong,readwrite) UILabel *sourceLabel;
@property(atomic,strong,readwrite) UILabel *commentLabel;
@property(atomic,strong,readwrite) UILabel *timeLabel;
@property(atomic,strong,readwrite) UIImageView *rightImageView;
@property(atomic,strong,readwrite) UIButton *deleteButton;
-(void)layoutTableViewCell;
@end

NS_ASSUME_NONNULL_END
