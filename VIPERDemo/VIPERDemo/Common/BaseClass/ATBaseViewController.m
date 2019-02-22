//
//  ATBaseViewController.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATBaseViewController.h"

@interface ATBaseViewController ()

@end

@implementation ATBaseViewController

#pragma mark - lifecycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)dealloc {
    NSLog(@"msg:%@ dealloc,%s,%d",NSStringFromClass(self.class),__FUNCTION__,__LINE__);
}

#pragma mark - public methods


#pragma mark - private methods


#pragma mark - getter && setter

@end
