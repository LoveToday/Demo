//
//  XWPresentOneTransition.h
//  TestOC_Swift
//
//  Created by TomatoPeter on 16/6/17.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, XWPresentOneTransitionType) {
    XWPresentOneTransitionTypePresent = 0,//管理present动画
    XWPresentOneTransitionTypeDismiss,//管理dismiss动画
    XWPresentOneTransitionTypePush,
    XWPresentOneTransitionTypePop
};
@interface XWPresentOneTransition : NSObject<UIViewControllerAnimatedTransitioning>
@property(nonatomic, assign)XWPresentOneTransitionType type;
//根据定义的枚举初始化的两个方法
//+ (instancetype)transitionWithTransitionType:(XWPresentOneTransitionType)type;
- (instancetype)initWithTransitionType:(XWPresentOneTransitionType)type;
@end
