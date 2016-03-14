//
//  NoteBL.h
//  MyNotes_Project
//
//  Created by PX_Tan on 16/3/9.
//  Copyright © 2016年 xindongai. All rights reserved.
//  业务逻辑层

#import <Foundation/Foundation.h>
@class Note;

@interface NoteBL : NSObject

//插入备忘录的方法
- (NSMutableArray *)createNote:(Note *)model;

//删除备忘录的方法
-(NSMutableArray *)remove:(Note *)model;

//查询所有数据的方法
-(NSMutableArray *)findAll;

@end
