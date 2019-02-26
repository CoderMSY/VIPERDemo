//
//  ATAddNoteDateModel.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNoteDateModel.h"

@implementation ATAddNoteDateModel

- (void)setNoteDate:(NSDate *)noteDate {
    _noteDate = noteDate;
    
    if (noteDate) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyy-MM-dd_HH:mm:ss";
//        formatter.locale = [NSLocale localeWithLocaleIdentifier:@"zh-Hans"];
        self.noteDateStr = [formatter stringFromDate:noteDate];
    }
    else {
        self.noteDateStr = @"";
    }
}

@end
