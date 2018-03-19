//
//  TestUtil.h
//  TestGCD
//
//  Created by wangdacheng on 2018/3/16.
//  Copyright © 2018年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestUtil : NSObject

/**
 * 同步执行 + 并发队列
 * 特点：在当前线程中执行任务，不会开启新线程，执行完一个任务，再执行下一个任务。
 */
- (void)syncConcurrent;

/**
 * 异步执行 + 并发队列
 * 特点：可以开启多个线程，任务交替（同时）执行。
 */
- (void)asyncConcurrent;

/**
 * 同步执行 + 串行队列
 * 特点：不会开启新线程，在当前线程执行任务。任务是串行的，执行完一个任务，再执行下一个任务。
 */
- (void)syncSerial;

/**
 * 异步执行 + 串行队列
 * 特点：会开启新线程，但是因为任务是串行的，执行完一个任务，再执行下一个任务。
 */
- (void)asyncSerial;


/**
 * 同步执行 + 主队列
 * 特点(主线程调用)：互等卡主不执行。
 * 特点(其他线程调用)：不会开启新线程，执行完一个任务，再执行下一个任务。
 */
- (void)syncMain;

/**
 * 异步执行 + 主队列
 * 特点：只在主线程中执行任务，执行完一个任务，再执行下一个任务
 */
- (void)asyncMain;

/**
 * 线程间通信
 */
- (void)communication;

/**
 * 栅栏方法 dispatch_barrier_async
 */
- (void)barrier;

/**
 * 延时执行方法 dispatch_after
 */
- (void)after;

/**
 * 一次性代码（只执行一次）dispatch_once
 */
- (void)once;

/**
 * 快速迭代方法 dispatch_apply
 */
- (void)apply;

/**
 * 队列组 dispatch_group_notify
 */
- (void)groupNotify;

/**
 * 队列组 dispatch_group_wait
 */
- (void)groupWait;

/**
 * 队列组 dispatch_group_enter、dispatch_group_leave
 */
- (void)groupEnterAndLeave;

/**
 * semaphore 线程同步
 */
- (void)semaphoreSync;

/**
 * 非线程安全：不使用 semaphore
 * 初始化火车票数量、卖票窗口(非线程安全)、并开始卖票
 */
- (void)initTicketStatusNotSave;

/**
 * 线程安全：使用 semaphore 加锁
 * 初始化火车票数量、卖票窗口(线程安全)、并开始卖票
 */
- (void)initTicketStatusSave;

@end
