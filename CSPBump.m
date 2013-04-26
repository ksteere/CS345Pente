//
//  CSPBump.m
//  CS345 Pente
//
//  Created by Kyle Steere on 4/22/13.
//  Copyright (c) 2013 Wells CS345: GUI programming. All rights reserved.
//

#import "CSPBump.h"

@implementation CSPBump
}

int _clickCounter

}

 self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setToSomething];
        
_clickCounter = 0;
    
}
    
   
 return self;
}


-(void) setWhiteStone{
   
    [self setStoneColor:@"White"]; 
    [self setImage:[NSImage imageNamed:@"Pente_White_Stone.png"]];
    
}

-(void) setBlankBump{

    [self setStoneColor:@"Bump"];
    [self setImage:[NSImage imageNamed:@"Pente_Blank_Bump.png"]];
}

-(void) setBlackStone{
    [self setStoneColor:@"Black"];
    [self setImage:[NSImage imageNamed:@"Pente_Black_Stone.png"]];

}

-(void) setToSomething
{
    
if(rand()%2) 
[self setToWhite];
   
 else [self setToBlack];

}

-(void)mouseDown:(NSEvent *)theEvent
{
   
 _clickCounter+=1;
   
 NSLog(@"Click %d", _clickCounter);
   
 if((_clickCounter/10)%2)
   
 {
        
[self setToWhite];
    
} 
else {
       
 [self setToBlack];
   
 }
   
 [self setToBump];

}


- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBlankBump];
    }
    return self;
}
@end
