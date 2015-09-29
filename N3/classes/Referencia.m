//
//  Referencia.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "Referencia.h"

@implementation Referencia

@synthesize autor;
@synthesize ano;

- (NSString *)description
{
    return [NSString stringWithFormat:@"Referencia: autor = %@, ano = %@", autor, ano];
}

@end
