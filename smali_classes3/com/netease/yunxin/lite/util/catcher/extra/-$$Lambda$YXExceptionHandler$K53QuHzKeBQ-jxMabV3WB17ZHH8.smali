.class public final synthetic Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;->f$0:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    iput-object p2, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;->f$0:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;->f$1:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->lambda$uncaughtException$1$YXExceptionHandler(Ljava/lang/Throwable;)V

    return-void
.end method
