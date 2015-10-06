//
//  ReferenciaLivro.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "ReferenciaLivro.h"

@implementation ReferenciaLivro

@synthesize titulo;
@synthesize pagina;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, %@, %@, pag. %@", [self stringAutores], titulo, [self ano], pagina];
}


@end
