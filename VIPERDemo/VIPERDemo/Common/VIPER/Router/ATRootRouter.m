//
//  ATRootRouter.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATRootRouter.h"

@implementation ATRootRouter

- (void)showRootViewController:(UIViewController *)viewController
                      inWindow:(UIWindow *)window
{
    window.rootViewController = [[UINavigationController alloc] initWithRootViewController:viewController];
}


//- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window
//{
//    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
//
//    return navigationController;
//}

@end
