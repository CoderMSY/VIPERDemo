//
//  ATAddNoteModuleInterface.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ATAddNoteModuleInterface <NSObject>

- (void)getAddNoteLists;
- (void)dismissAddNoteCtr;

@end

NS_ASSUME_NONNULL_END
