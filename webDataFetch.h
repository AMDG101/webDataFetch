//
//  webDataFetch.h
//  webDataFetch
//
//  Created by NR on 2/28/15.
//

#import <Foundation/Foundation.h>

@interface webDataFetch : NSObject <NSURLConnectionDelegate> {
    NSMutableData *dataStr;
}

@property (strong, nonatomic) NSMutableData *dataStr;

-(void)fetchDataWithURL:(NSURL *)dataURL;

@end
