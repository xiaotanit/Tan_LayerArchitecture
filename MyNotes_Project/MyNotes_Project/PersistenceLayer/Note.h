//
//  Note.h
//  MyNotes_Project
//
//  Created by PX_Tan on 16/3/9.
//  Copyright © 2016年 xindongai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (nonatomic, strong) NSDate *date;
@property (nonatomic, copy) NSString *content;

@end
