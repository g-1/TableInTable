//
//  SubTableViewCollection.h
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SubTableViewCollection : NSObject

+ (SubTableViewCollection*)sharedManager;

- (void)clear;

@property(nonatomic, retain) NSMutableArray *subTables;

@end
