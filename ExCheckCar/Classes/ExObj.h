//
//  ExObj.h
//  ExCheckCar
//
//  Created by exsun on 2020/12/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExObj : NSObject
+(void)print:(NSString *)text;
+(void)getWithUrl:(NSString *)url para:(NSDictionary * )dic;
@end

NS_ASSUME_NONNULL_END
