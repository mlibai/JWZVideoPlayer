//
//  ViewController.m
//  JWZVideoPlayer
//
//  Created by MJH on 16/3/13.
//  Copyright © 2016年 MXZ. All rights reserved.
//

#import "ViewController.h"
#import "JWZPlayerController.h"

@interface ViewController () <JWZPlayerControllerDelegate>

@property (nonatomic, strong) NSURL *videoURL;
@property (weak, nonatomic) IBOutlet UIView *playView;

@property (nonatomic, strong) JWZPlayerController *playerVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // @"";http://mp4.68mtv.com/mp42/53184-%E5%AE%8B%E7%A5%96%E8%8B%B1-%E5%BD%A9%E9%BE%99%E8%88%9E%E4%B8%9C%E6%96%B9[68mtv.com].mp4
    self.videoURL = [NSURL URLWithString:@"http://funsbar.file.alimmdn.com/video/activity/20160312114630732.mp4"];
    self.playerVC = [[JWZPlayerController alloc] init];
    [[self playerVC] view];
    self.playerVC.delegate = self;
    
//    [self.playView addSubview:self.playerVC.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender {
    self.playerVC.mediaURL = self.videoURL;
    self.playerVC.thumbnailImageView.image = [UIImage imageNamed:@"thumbnail"];
    [self.playerVC showPlayerOverView:self.playView];
    [self.playerVC play];
}

- (void)playerControllerClicked:(JWZPlayerController *)playerController {
    if (self.playerVC.mode == JWZPlayerControllerModeScreen) {
        [self.playerVC showPlayerOverView:self.playView];
    } else {
        [self.playerVC presentPlayerFromViewController:self];
    }
}

- (void)playerControllerDidFinishPlaying:(JWZPlayerController *)playerController {
    [self.playerVC remove];
}

- (void)playerControllerDidStartPlaying:(JWZPlayerController *)playerController {
    
}

@end
