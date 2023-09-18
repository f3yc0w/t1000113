.class public final synthetic Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$4BgXGBzcBR4Xw2ZVTsoSt9ysFLs;
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

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$4BgXGBzcBR4Xw2ZVTsoSt9ysFLs;->f$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$4BgXGBzcBR4Xw2ZVTsoSt9ysFLs;->f$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->lambda$releaseCapturerObserver$0$LiteNativeCapturerObserver()V

    return-void
.end method
