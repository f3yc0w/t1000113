.class public final synthetic Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/util/ThreadUtils$1Result;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;

.field public final synthetic f$2:Lcom/netease/yunxin/lite/util/ThreadUtils$1CaughtException;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/util/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Lcom/netease/yunxin/lite/util/ThreadUtils$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$0:Lcom/netease/yunxin/lite/util/ThreadUtils$1Result;

    iput-object p2, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$1:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$2:Lcom/netease/yunxin/lite/util/ThreadUtils$1CaughtException;

    iput-object p4, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$0:Lcom/netease/yunxin/lite/util/ThreadUtils$1Result;

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$1:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$2:Lcom/netease/yunxin/lite/util/ThreadUtils$1CaughtException;

    iget-object v3, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$ThreadUtils$WTeYad4eXfWssMWRlBkwhCtVkPo;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->lambda$runOnThreadBlocking$0(Lcom/netease/yunxin/lite/util/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Lcom/netease/yunxin/lite/util/ThreadUtils$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method