.class public final synthetic Lcom/netease/yunxin/lite/util/-$$Lambda$T9LRWRbpQkMLUqTwDYGEZolrmT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/yunxin/lite/util/ThreadUtils$BlockingOperation;


# instance fields
.field public final synthetic f$0:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$T9LRWRbpQkMLUqTwDYGEZolrmT4;->f$0:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$T9LRWRbpQkMLUqTwDYGEZolrmT4;->f$0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method
