//
//  ATAddNoteDateModel.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ATAddNoteDateModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSDate *noteDate;
@property (nonatomic, copy) NSString *noteDateStr;

@end

NS_ASSUME_NONNULL_END
