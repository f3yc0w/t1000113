.class Lcom/netease/yunxin/lite/util/MainThreadUtils;
.super Ljava/lang/Object;
.source "MainThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;
    }
.end annotation


# static fields
.field private static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/yunxin/lite/util/MainThreadUtils;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(J)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/MainThreadUtils;->nativeRun(J)V

    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeRun(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private static run(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "block"
        }
    .end annotation

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 23
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/MainThreadUtils;->nativeRun(J)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;-><init>(JLcom/netease/yunxin/lite/util/MainThreadUtils$1;)V

    .line 26
    sget-object p0, Lcom/netease/yunxin/lite/util/MainThreadUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_1

    .line 28
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;->access$100(Lcom/netease/yunxin/lite/util/MainThreadUtils$Task;)V

    :cond_1
    :goto_0
    return-void
.end method
