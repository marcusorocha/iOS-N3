//
//  ReferenciaSite.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "ReferenciaSite.h"

@implementation ReferenciaSite

@synthesize local;
@synthesize titulo;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, %@, disponivel em = <%@>", [self stringAutores], titulo, local];
}

@end
