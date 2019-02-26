//
//  ATNoteListInteractorIO.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 输入协议
 */
@protocol ATNoteListInteractorInput <NSObject>

/**
 获取note list 数据源
 */
- (void)findListItems;

@end

/**
 输出协议
 */
@protocol ATNoteListInteractorOutput <NSObject>

- (void)foundListItems:(NSArray *)listItems;

@end

NS_ASSUME_NONNULL_END
