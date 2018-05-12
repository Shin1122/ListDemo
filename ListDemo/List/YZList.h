//
//  YZList.h
//  ListDemo
//
//  Created by Lakeside on 2018/5/12.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum : NSUInteger {
    YZListScrollDirectionDefult,
    YZListScrollDirectionVertical,
    YZListScrollDirectionHorizon,
} YZListScrollDirection;


@interface YZList : UIScrollView

@property (nonatomic, assign) YZListScrollDirection scrollDirection ;



@end
