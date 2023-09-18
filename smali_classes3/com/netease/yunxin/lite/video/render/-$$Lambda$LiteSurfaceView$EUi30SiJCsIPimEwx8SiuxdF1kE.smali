.class public final synthetic Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

.field public final synthetic f$1:Lcom/netease/lava/webrtc/EglBase$Context;

.field public final synthetic f$2:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;->f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;->f$1:Lcom/netease/lava/webrtc/EglBase$Context;

    iput-object p3, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;->f$2:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;->f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;->f$1:Lcom/netease/lava/webrtc/EglBase$Context;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;->f$2:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    invoke-virtual {v0, v1, v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->lambda$init$0$LiteSurfaceView(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V

    return-void
.end method
