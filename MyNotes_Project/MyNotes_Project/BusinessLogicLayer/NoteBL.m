//
//  NoteBL.m
//  MyNotes_Project
//
//  Created by PX_Tan on 16/3/9.
//  Copyright © 2016年 xindongai. All rights reserved.
//

#import "NoteBL.h"
#import "Note.h"
#import "NoteDAO.h"

@implementation NoteBL

//插入备忘录的方法
- (NSMutableArray *)createNote:(Note *)model{
    NoteDAO *dao = [NoteDAO shareManager];
    [dao create:model];
    
    return [dao findAll];
}

//删除备忘录的方法
- (NSMutableArray *)remove:(Note *)model{
    NoteDAO *dao = [NoteDAO shareManager];
    [dao remove:model];
    
    return [dao findAll];
}

//查询所有数据的方法
-(NSMutableArray *)findAll{
    NoteDAO *dao = [NoteDAO shareManager];
    return [dao findAll];
}

@end
