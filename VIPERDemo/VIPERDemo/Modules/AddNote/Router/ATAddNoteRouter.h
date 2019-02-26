//
//  ATAddNoteRouter.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@class ATAddNotePresenter;
@interface ATAddNoteRouter : NSObject

@property (nonatomic, strong) ATAddNotePresenter *addPresenter;

- (void)presentAddInterfaceFromViewController:(UIViewController *)viewController;
- (void)dismissAddInterface;

@end

NS_ASSUME_NONNULL_END
