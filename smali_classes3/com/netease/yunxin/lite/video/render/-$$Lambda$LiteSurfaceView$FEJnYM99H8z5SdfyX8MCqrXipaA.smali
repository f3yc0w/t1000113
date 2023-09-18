.class public final synthetic Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

.field public final synthetic f$1:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;->f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;->f$1:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;->f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;->f$1:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->lambda$setWatermarkConfig$1$LiteSurfaceView(Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;)V

    return-void
.end method
