.class public final synthetic Lcom/netease/yunxin/lite/util/-$$Lambda$tBI8Y7Rk0vZfm2HOkgj2vtVOx20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/yunxin/lite/util/ThreadUtils$BlockingOperation;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$tBI8Y7Rk0vZfm2HOkgj2vtVOx20;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$tBI8Y7Rk0vZfm2HOkgj2vtVOx20;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
