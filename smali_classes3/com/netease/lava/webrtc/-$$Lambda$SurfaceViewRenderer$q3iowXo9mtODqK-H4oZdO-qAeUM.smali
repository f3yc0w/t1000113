.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/SurfaceViewRenderer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/SurfaceViewRenderer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;->f$0:Lcom/netease/lava/webrtc/SurfaceViewRenderer;

    iput p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;->f$1:I

    iput p3, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;->f$0:Lcom/netease/lava/webrtc/SurfaceViewRenderer;

    iget v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;->f$1:I

    iget v2, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->lambda$onFrameResolutionChanged$0$SurfaceViewRenderer(II)V

    return-void
.end method
