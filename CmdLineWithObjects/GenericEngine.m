//
//  GenericEngine.m
//  CmdLineWithObjects
//
//  Created by mazerlodge on 6/2/18.
//  Copyright © 2018 mazerlodge. All rights reserved.
//

#import "GenericEngine.h"

@implementation GenericEngine 

- (id)init {
    self = [super init];
    if (self) {
        randomEngine = [[RandomEngine alloc] init];
        
    }
    
    return self;
}

- (int) goWithParamsArray: (NSArray *) paramsArray {
    
    // TODO: Add Arg Parsing code and invoke here to get second param as loop count.
    
    // If no parameter was specified (beyond param 0, exec name), bail out.
    if (paramsArray.count < 2) {
        printf("Expected a parameter containing text to print, exiting.\n");
        return 0xff;
    }
    
    // Set the member helloMessage based on contents of first parameter
    helloMsg = [paramsArray objectAtIndex:1];
    
    // Call the member example a random number of times (1-6).
    // TODO: dynamically determine loop count range after arg parsing code is added.
    int loopCount = [randomEngine getNextRandInRange:NSMakeRange(1, 6)];
    [self memberMethodExample:loopCount];
    
    return 0;
    
}

- (int) memberMethodExample:(int)parameterExample {
    // repeat the member variable message the number of times specifiied.
    
    for (int x=0; x<parameterExample; x++)
        printf("message [%d] is %s \n", x, [helloMsg UTF8String]);
    
  
    return 0;
    
}

@end


