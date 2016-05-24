//
//  DBManager.h
//  sqlite
//
//  Created by Ruiyong.Z on 5/23/16.
//  Copyright © 2016 Ruiyong Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject
{
    NSString *databasePath;
}

+(DBManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL) saveData:(NSString*)username pwd:(NSString*)pwd;
-(NSArray*) findByUsername:(NSString*)username;

@end