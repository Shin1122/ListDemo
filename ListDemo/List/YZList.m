//
//  YZList.m
//  ListDemo
//
//  Created by Lakeside on 2018/5/12.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import "YZList.h"

@interface YZList()<UIScrollViewDelegate>{
    
}

@end

@implementation YZList



#pragma mark- UISCrollView delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (scrollView == self) {
        CGPoint offsetPoint
        = scrollView.contentOffset;
        switch (_scrollDirection) {
            case YZListScrollDirectionDefult:{
            }
                break;
            case YZListScrollDirectionHorizon:{
                if (offsetPoint.y!=0) {
                    scrollView.contentOffset
                    = CGPointMake(offsetPoint.x, 0);
                }
            }
                break;
            case YZListScrollDirectionVertical:{
                if (offsetPoint.x!=0) {
                    scrollView.contentOffset
                    = CGPointMake(0, offsetPoint.y);
                }
            }
                break;
        }
    }
}



@end
