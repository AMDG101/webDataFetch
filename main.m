//
//  main.m
//  webDataFetch
//
//  Created by NR on 2/28/15.
//

#import <Foundation/Foundation.h>
#import "webDataFetch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Initialization code:
        
        webDataFetch *fetcher = [[webDataFetch alloc]init];
        
        NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
        
        [fetcher fetchDataWithURL:url];
        
    }
    return 0;
}
