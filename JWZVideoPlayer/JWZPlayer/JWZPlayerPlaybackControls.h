//
//  JWZPlayerPlaybackControls.h
//  JWZPlayer
//
//  Created by J. W. Z. on 16/3/28.
//  Copyright © 2016年 J. W. Z.. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JWZPlayerViewController.h"

/**
 *  播放控制界面。
 */
@interface JWZPlayerPlaybackControls : UIView <JWZPlayerPlaybackControls>

@property (nonatomic, weak) JWZPlayerViewController *playerController;

@end
