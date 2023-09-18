.class public final synthetic Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$R16BCU7bx8BhgBg3VarDPyqLkd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$R16BCU7bx8BhgBg3VarDPyqLkd0;->f$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$R16BCU7bx8BhgBg3VarDPyqLkd0;->f$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->lambda$releaseCapturerObserver$1$LiteNativeCapturerObserver()V

    return-void
.end method
