//
//  ATAddNoteRouter.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNoteRouter.h"
#import "ATAddNoteViewController.h"
#import "ATAddNotePresenter.h"
#import "ATAddNoteInteractor.h"

@interface ATAddNoteRouter ()

@property (nonatomic, strong) ATAddNoteViewController *addViewCtr;

@end

@implementation ATAddNoteRouter

- (instancetype)init
{
    self = [super init];
    if (self) {
        ATAddNotePresenter *addPresenter = [[ATAddNotePresenter alloc] init];
        ATAddNoteInteractor *addInteractor = [[ATAddNoteInteractor alloc] init];
        addInteractor.output = addPresenter;
        addPresenter.addInteractor = addInteractor;
        addPresenter.addRouter = self;
        
        self.addPresenter = addPresenter;
    }
    return self;
}

- (void)presentAddInterfaceFromViewController:(UIViewController *)viewController {
    ATAddNoteViewController *ctr = [[ATAddNoteViewController alloc] init];
    ctr.modalPresentationStyle = UIModalPresentationCustom;
    ctr.eventHandler = self.addPresenter;
    self.addPresenter.viewInterface = ctr;
    self.addViewCtr = ctr;
    
    UINavigationController *navCtr = [[UINavigationController alloc] initWithRootViewController:ctr];
    
    [viewController presentViewController:navCtr animated:YES completion:nil];
}

- (void)dismissAddInterface {
    [self.addViewCtr dismissViewControllerAnimated:YES completion:nil];
}

@end
