//
//  NoteDAO.h
//  MyNotes_Project
//
//  Created by PX_Tan on 16/3/9.
//  Copyright © 2016年 xindongai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Note;

@interface NoteDAO : NSObject

//保存数据列表
@property (nonatomic, strong) NSMutableArray *listData;
+(NoteDAO *)shareManager;
- (int)create:(Note *)model; //插入备忘录的方法

- (int)remove:(Note *)model; //删除备忘录的方法

- (int)modify:(Note *)model; //修改备忘录的方法

- (NSMutableArray *)findAll; //查询所有数据的方法

- (Note *)findById:(Note *)model; //按照住建查询所有数据的方法

@end
