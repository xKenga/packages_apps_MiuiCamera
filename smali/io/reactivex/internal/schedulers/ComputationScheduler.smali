.class public final Lio/reactivex/internal/schedulers/ComputationScheduler;
.super Lio/reactivex/Scheduler;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;,
        Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;,
        Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;
    }
.end annotation


# static fields
.field static final MAX_THREADS:I

.field static final NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

.field static final SHUTDOWN_WORKER:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

.field static final THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const-string/jumbo v2, "rx2.computation-threads"

    invoke-static {v2, v4}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lio/reactivex/internal/schedulers/ComputationScheduler;->cap(II)I

    move-result v1

    sput v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->MAX_THREADS:I

    .line 55
    new-instance v1, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string/jumbo v3, "RxComputationShutdown"

    invoke-direct {v2, v3}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 56
    sget-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->dispose()V

    .line 58
    const-string/jumbo v1, "rx2.computation-priority"

    const/4 v2, 0x5

    const/16 v3, 0xa

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 61
    .local v0, "priority":I
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string/jumbo v2, "RxComputationThreadPool"

    invoke-direct {v1, v2, v0, v5}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 63
    new-instance v1, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    sget-object v2, Lio/reactivex/internal/schedulers/ComputationScheduler;->THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {v1, v4, v2}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    .line 64
    sget-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->shutdown()V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lio/reactivex/internal/schedulers/ComputationScheduler;->THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/ComputationScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 136
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 137
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ComputationScheduler;->start()V

    .line 140
    return-void
.end method

.method static cap(II)I
    .locals 0
    .param p0, "cpuCount"    # I
    .param p1, "paramThreads"    # I

    .prologue
    .line 68
    if-gtz p1, :cond_1

    :cond_0
    move p1, p0

    .end local p1    # "paramThreads":I
    :goto_0
    return p1

    .restart local p1    # "paramThreads":I
    :cond_1
    if-gt p1, p0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 145
    new-instance v1, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;

    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->getEventLoop()Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;-><init>(Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;)V

    return-object v1
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->getEventLoop()Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    move-result-object v0

    .line 158
    .local v0, "w":Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    return-object v1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 179
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    .line 180
    .local v0, "curr":Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;
    sget-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    if-eq v0, v1, :cond_1

    .line 183
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->shutdown()V

    .line 185
    return-void

    .line 181
    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    sget v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->MAX_THREADS:I

    iget-object v2, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 171
    .local v0, "update":Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/ComputationScheduler;->NONE:Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->shutdown()V

    goto :goto_0
.end method
