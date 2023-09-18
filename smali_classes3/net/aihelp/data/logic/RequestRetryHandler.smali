.class public Lnet/aihelp/data/logic/RequestRetryHandler;
.super Landroid/os/Handler;
.source "RequestRetryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/logic/RequestRetryHandler$OnRetryRequestListener;
    }
.end annotation


# static fields
.field private static final MAXIMUM_BACKOFF:I = 0x7d00


# instance fields
.field private final maxRetryCount:I

.field private retryCount:I

.field private final retryListener:Lnet/aihelp/data/logic/RequestRetryHandler$OnRetryRequestListener;


# direct methods
.method public constructor <init>(Lnet/aihelp/data/logic/RequestRetryHandler$OnRetryRequestListener;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->retryListener:Lnet/aihelp/data/logic/RequestRetryHandler$OnRetryRequestListener;

    const/4 p1, 0x3

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->maxRetryCount:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->retryListener:Lnet/aihelp/data/logic/RequestRetryHandler$OnRetryRequestListener;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lnet/aihelp/data/logic/RequestRetryHandler$OnRetryRequestListener;->onRetryRequest()V

    :cond_0
    return-void
.end method

.method public handleRetryRequest(I)V
    .locals 4

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p1, v0, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 39
    iget p1, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->retryCount:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->retryCount:I

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e9

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double v2, p1

    add-double/2addr v0, v2

    .line 40
    iget p1, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->retryCount:I

    iget v2, p0, Lnet/aihelp/data/logic/RequestRetryHandler;->maxRetryCount:I

    if-gt p1, v2, :cond_3

    const/4 p1, 0x0

    const-wide v2, 0x40df400000000000L    # 32000.0

    .line 41
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/data/logic/RequestRetryHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/RequestRetryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
