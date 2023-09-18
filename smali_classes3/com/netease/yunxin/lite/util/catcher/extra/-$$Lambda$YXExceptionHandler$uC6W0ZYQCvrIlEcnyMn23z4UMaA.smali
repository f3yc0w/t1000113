.class public final synthetic Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

.field public final synthetic f$1:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;->f$0:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    iput-object p2, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;->f$1:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;->f$0:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;->f$1:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->lambda$addComponent$0$YXExceptionHandler(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V

    return-void
.end method
