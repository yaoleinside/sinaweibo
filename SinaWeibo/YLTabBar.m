//
//  YLTabBar.m
//  SinaWeibo
//
//  Created by 姚乐 on 16/10/9.
//  Copyright © 2016年 yaole. All rights reserved.
//

#import "YLTabBar.h"

@implementation YLTabBar

-(void)layoutSubviews {
    [super layoutSubviews];
    NSInteger index = 0;
    CGFloat childX = 0;
    CGFloat childY = 0;
    CGFloat childW = self.frame.size.width/5;
    CGFloat childH = self.frame.size.height;
    for (UIView *child in self.subviews) {
        if ([child isKindOfClass:[UIControl class]] && ![child isKindOfClass:[UIButton class]]) {
//            NSLog(@"%@",child);
            childX = index * childW;
            child.frame = CGRectMake(childX, childY, childW, childH);
            index++;
            if(index==2){
                index++;
            }
        }
    }
    
    UIButton *plusBtn = [[UIButton alloc]init];
    [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateSelected];
    [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
    [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateSelected];
    [plusBtn setFrame:CGRectMake(2*childW, 0, childW, childH)];
    [self addSubview:plusBtn];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
