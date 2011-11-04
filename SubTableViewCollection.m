//
//  SubTableViewCollection.m
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SubTableViewCollection.h"

#import "SubTableView.h"

@implementation SubTableViewCollection

@synthesize subTables;

static SubTableViewCollection *shared=nil;

+ (SubTableViewCollection*)sharedManager {  
  @synchronized(self) {  
    if (!shared) {  
      shared = [[self alloc] init];  
    }  
  }  
  return shared;  
}  

+ (id)allocWithZone:(NSZone *)zone {  
  @synchronized(self) {  
    if (!shared) {  
      shared = [super allocWithZone:zone];  
      return shared;  
    }  
  }  
  return nil;  
}  

- (id)copyWithZone:(NSZone*)zone {  
  return self;  // シングルトン状態を保持するため何もせず self を返す  
}  

- (id)retain {  
  return self;  // シングルトン状態を保持するため何もせず self を返す  
}  

- (unsigned)retainCount {  
  return UINT_MAX;  // 解放できないインスタンスを表すため unsigned int 値の最大値 UINT_MAX を返す  
}  

- (oneway void)release {  
  // シングルトン状態を保持するため何もしない  
}  

- (id)autorelease {  
  return self;  // シングルトン状態を保持するため何もせず self を返す  
}

//--本体--

- (id)init{
  self = [super init];
  if( self ){
    self.subTables = [NSMutableArray arrayWithCapacity:10];//キャパは仮
  }
  return self;
}

- (void)dealloc{
  
  [self.subTables removeAllObjects];
  
  self.subTables = nil;
}

- (void)clear{
  [self.subTables removeAllObjects];
}

@end
