//
//  webDataFetch.m
//  webDataFetch
//
//  Created by NR on 2/28/15.
//

#import "webDataFetch.h"

@implementation webDataFetch
@synthesize dataStr;

-(void)fetchDataWithURL:(NSURL *)dataURL {
    
    NSURLRequest *request = [NSURLRequest requestWithURL:dataURL];
    __unused NSURLConnection *fetchConn = [[NSURLConnection alloc]initWithRequest:request
                                                                         delegate:self
                                                                 startImmediately:YES];
    
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    if (!dataStr) {
        dataStr = [[NSMutableData alloc]init];
    }
    [dataStr appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSData *finalData = [NSData dataWithData:dataStr];
    dataStr = nil;
    
    //Do any additional work with the data here
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSError *err;
    NSLog(@"Connection failed: %@", [err localizedDescription]);
    dataStr = nil;
}

@end
