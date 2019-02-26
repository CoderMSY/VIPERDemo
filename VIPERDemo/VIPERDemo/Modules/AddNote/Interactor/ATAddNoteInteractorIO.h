//
//  ATAddNoteInteractorIO.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ATAddNoteInteractorInput <NSObject>

- (void)findAddNoteList;

@end

@protocol ATAddNoteInteractorOutput <NSObject>

- (void)outputAddNoteList:(NSArray *)list;

@end

NS_ASSUME_NONNULL_END
