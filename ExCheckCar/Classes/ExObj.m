//
//  ExObj.m
//  ExCheckCar
//
//  Created by exsun on 2020/12/16.
//

#import "ExObj.h"
#import <AFNetworking/AFNetworking.h>
@implementation ExObj
+(void)print:(NSString *)text
{
    NSLog(@"%@",text);
}

+(void)getWithUrl:(NSString *)url para:(NSDictionary * )dic
{
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    [manager GET:url parameters:dic headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success = %@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"fail = %@",error);
    }];
}
@end
