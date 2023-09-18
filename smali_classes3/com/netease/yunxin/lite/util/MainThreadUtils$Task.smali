.class Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;
.super Ljava/lang/Object;
.source "MainThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/MainThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private mNativeContext:J

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeContext"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->mNativeContext:J

    .line 40
    iput-wide p1, p0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->mNativeContext:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/netease/yunxin/lite/util/MainThreadUtils$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;-><init>(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->waitDone()V

    return-void
.end method

.method private waitDone()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->mNativeContext:J

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/MainThreadUtils;->access$200(J)V

    .line 46
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
