//
//  ViewController.m
//  TestGCD
//
//  Created by wangdacheng on 2018/3/15.
//  Copyright © 2018年 test. All rights reserved.
//

#import "ViewController.h"
#import "TestUtil.h"

#define TestGCD_SERIAL_QUEUE        "net.test.TestGCD.serialqueue"
#define TestGCD_CONCURRENT_QUEUE    "net.test.TestGCD.concurrentqueue"

@interface ViewController ()

@property (nonatomic, strong)UILabel *label;

@property (nonatomic, strong)TestUtil *testUtil;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"GCD"];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [_label setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:_label];
    
//    [NSThread detachNewThreadSelector:@selector(syncMain) toTarget:self withObject:nil];
    
    _testUtil = [[TestUtil alloc] init];
    
//    [_testUtil initTicketStatusNotSave];
    [_testUtil initTicketStatusSave];
}

- (void)temp
{
    //    //（区分：任务 + 队列 + 同步、异步执行）
    //    //1.同步执行 + 并发队列
    //    //2.异步执行 + 并发队列
    //    //3.同步执行 + 串行队列
    //    //4.异步执行 + 串行队列
    
    //    //5.同步执行 + 主队列
    //    //6.异步执行 + 主队列
    
    //    // 串行队列
    //    dispatch_queue_t serialQueue = dispatch_queue_create(TestGCD_SERIAL_QUEUE, DISPATCH_QUEUE_SERIAL);
    //    // 并发队列
    //    dispatch_queue_t concurrentQueue = dispatch_queue_create(TestGCD_CONCURRENT_QUEUE, DISPATCH_QUEUE_CONCURRENT);
    //    // 主队列（串行）
    //    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    //    // 全局队列（并行）
    //    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    //    区别              并发队列                          串行队列                          主队列
    //    同步(sync)        没有开启新线程，串行执行任务         没有开启新线程，串行执行任务          主线程调用：死锁卡住不执行其他线程调用：没有开启新线程，串行执行任务
    //    异步(async)       有开启新线程，并发执行任务           有开启新线程(1条)，串行执行任务       没有开启新线程，串行执行任务
    
    //    dispatch_async(serialQueue, ^{
    //
    //    });
    //    dispatch_async(concurrentQueue, ^{
    //
    //    });
    //
    //    dispatch_sync(concurrentQueue, ^{
    //
    //    });
    //
    //    dispatch_sync(serialQueue, ^{
    //
    //    });
}





@end
