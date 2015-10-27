//
//  TTModel.m
//  TestingNSUserDefaults
//
//  Created by Hack on 27.10.15.
//  Copyright © 2015 ttconsalting. All rights reserved.
//

#import "ASUser.h"

@implementation ASUser


-(instancetype) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    
    if (self != nil) {
        
        self.login    = [aDecoder decodeObjectForKey:@"login"];
        self.password = [aDecoder decodeObjectForKey:@"password"];
    }
    
  return self;
}


-(void) encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:[self login] forKey:@"login"];
    [aCoder encodeObject:[self password] forKey:@"password"];

}



@end
