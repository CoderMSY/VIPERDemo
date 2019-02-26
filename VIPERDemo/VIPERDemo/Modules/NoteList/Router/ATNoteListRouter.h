//
//  ATNoteListRouter.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ATNoteListPresenter;
@class ATRootRouter;
@class ATAddNoteRouter;

@interface ATNoteListRouter : NSObject

@property (nonatomic, strong) ATNoteListPresenter *listPresenter;
@property (nonatomic, strong) ATRootRouter *rootRouter;
@property (nonatomic, strong) ATAddNoteRouter *addNoteRouter;

- (void)presentListInterfaceFromWindow:(UIWindow *)window;
- (void)presentAddInterface;

@end

NS_ASSUME_NONNULL_END
