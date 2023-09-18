.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/EglRenderer;

.field public final synthetic f$1:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

.field public final synthetic f$2:Lcom/netease/lava/webrtc/EglRenderer$FrameListener;

.field public final synthetic f$3:F

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$1:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    iput-object p3, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$2:Lcom/netease/lava/webrtc/EglRenderer$FrameListener;

    iput p4, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$3:F

    iput-boolean p5, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$1:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    iget-object v2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$2:Lcom/netease/lava/webrtc/EglRenderer$FrameListener;

    iget v3, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$3:F

    iget-boolean v4, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/lava/webrtc/EglRenderer;->lambda$addFrameListener$3$EglRenderer(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FZ)V

    return-void
.end method
