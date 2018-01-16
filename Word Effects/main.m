//
//  main.m
//  Word Effects
//
//  Created by Aaron Chong on 1/15/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars [255];
        char inputOperationNumber [255];
        
        printf("Pick an operation to manipulate your string\n\n");
        printf("1. Uppercase\n");
        printf("2. Lowercase\n");
        printf("3. Numberize\n");
        printf("4. Canadianize\n");
        printf("5. Respond\n");
        printf("6. De-Space-It\n\n");
        
        
        while (true) {
            
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            
            printf("Your string is %s \n", inputChars);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSLog(@"Input was: %@", inputString);
            
            printf("Pick an operation from 1-6: ");
            fgets(inputOperationNumber, 255, stdin);
            
            int convertedInt = atoi(inputOperationNumber);
            printf("Your operation choice is: %d \n", convertedInt);
            
            switch (convertedInt) {
                    
                case 1:
                    
                    NSLog(@"Converted string is: %@", [inputString localizedUppercaseString]);
                    
                    break;
                    
                case 2:
                    
                    NSLog(@"Converted string is: %@", [inputString localizedLowercaseString]);
                    
                    break;
                    
                case 3:
                    
                    if ([inputString intValue]) {
                        NSLog (@"Converted string is: %d",[inputString intValue]);
                    } else {
                        NSLog (@"String cannot be converted");
                    }
                    
                    break;
                    
                case 4:
                    
                    NSLog(@"Converted string is: %@", [[inputString stringByAppendingString: @", eh?"]
                                                       stringByReplacingOccurrencesOfString: @"\n" withString:@""]);
                    
                    break;
                    
                case 5:
                    
                    if ([inputString containsString: @"?"]) {
                        
                        NSLog(@"I don't know");
                    } else if ([inputString containsString: @"!"]) {
                        NSLog(@"Whoa, calm down!");
                    } else {
                        NSLog(@"Okay");
                    }
                    
                    break;
                    
                    
                case 6:
                    
                    NSLog(@"Converted string is: %@", [inputString stringByReplacingOccurrencesOfString: @" " withString:@"-"]);
                    
                    break;
                    
                default:
                    
                    NSLog(@"Operation number does not exist");
                    
                    break;
            }
            
        }
    
    }
    return 0;
}
