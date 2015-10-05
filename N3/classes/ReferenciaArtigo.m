//
//  ReferenciaArtigo.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "ReferenciaArtigo.h"

@implementation ReferenciaArtigo
@synthesize autor;
@synthesize local;
@synthesize titulo;
@synthesize numeroVolume;

- (NSString *)description
{
    return [NSString stringWithFormat:@"Referencia: autor = %@, titulo = %@, disponivel em = <%@>", autor, titulo, local];
}
@end
