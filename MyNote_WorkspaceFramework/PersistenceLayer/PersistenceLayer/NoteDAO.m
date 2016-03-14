//
//  NoteDAO.m
//  MyNotes_Project
//
//  Created by PX_Tan on 16/3/9.
//  Copyright © 2016年 xindongai. All rights reserved.
//

#import "NoteDAO.h"
#import "Note.h"

@implementation NoteDAO

static NoteDAO *shareManager = nil;
+ (NoteDAO *)shareManager{
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        
        NSDate *date1 = [dateFormatter dateFromString:@"2016-02-10 00:16:03"];
        Note *note1 = [[Note alloc] init];
        note1.date = date1;
        note1.content = @"Welcome to MyNotes.";
        
        NSDate *date2 = [dateFormatter dateFromString:@"2016-03-09 12:33:33"];
        Note *note2 = [[Note alloc] init];
        note2.date = date2;
        note2.content = @"欢迎使用MyNotes...";
        
        shareManager = [[self alloc] init];
        shareManager.listData = [[NSMutableArray alloc] init];
        [shareManager.listData addObject:note1];
        [shareManager.listData addObject:note2];
    });
    return shareManager;
}

//插入备忘录的方法
- (int)create:(Note *)model{
    [self.listData addObject:model];
    return 0;
}

//删除备忘录的方法
- (int)remove:(Note *)model{
    for (Note *note in self.listData){
        //比较日期主键是否相等
        if ([note.date isEqualToDate:model.date]){
            [self.listData removeObject:note];
            break;
        }
    }
    return 0;
}

//修改备忘录的方法
-(int)modify:(Note *)model{
    for (Note *note in self.listData) {
        //比较日期主键是否相等
        if ([note.date isEqualToDate:model.date]){
            note.content = model.content;
            break;
        }
    }
    return 0;
}

//查询所有数据的方法
-(NSMutableArray *)findAll{
    return self.listData;
}

//按照主键查询数据的方法
- (Note *)findById:(Note *)model{
    for (Note *note in self.listData) {
        if ([note.date isEqualToDate:model.date]){
            return note;
        }
    }
    return nil;
}

@end
