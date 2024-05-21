//
//  ViewController.m
//  iCloudDemo
//
//  Created by zd on 20/5/2024.
//

#import "ViewController.h"

static NSString *const kKey = @"123";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)save_act:(UIButton *)sender {
    NSUbiquitousKeyValueStore *key = [NSUbiquitousKeyValueStore defaultStore];
    NSString *testStr = @"SGVsbG8sdGhpcyBpcyBhIHRlc3Qgc3RyaW5n";
    [key setObject:testStr forKey:kKey];
    [key synchronize];
}

- (IBAction)get_act:(UIButton *)sender {
    NSUbiquitousKeyValueStore *key = [NSUbiquitousKeyValueStore defaultStore];
    NSString *value = [key objectForKey:kKey];
    NSLog(@"%@",value);
}

- (void)removeAllData { //清空key的字符
    NSUbiquitousKeyValueStore *key = [NSUbiquitousKeyValueStore defaultStore];
    [key removeObjectForKey:kKey];
}

@end
