//
//  telas.m
//  Navigation
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "telas.h"

@implementation telas

static telas *SINGLETON = nil;
static bool isFirstAccess = YES;

+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstAccess = NO;
        SINGLETON = [[super allocWithZone:NULL] init];
    });
    
    return SINGLETON;
}
@end
