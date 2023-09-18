.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcCore$1;

.field public final synthetic f$1:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;

.field public final synthetic f$2:Lcom/netease/lava/webrtc/VideoFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcCore$1;Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;->f$0:Lcom/netease/lava/nertc/impl/NERtcCore$1;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;->f$1:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;->f$2:Lcom/netease/lava/webrtc/VideoFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;->f$0:Lcom/netease/lava/nertc/impl/NERtcCore$1;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;->f$1:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;->f$2:Lcom/netease/lava/webrtc/VideoFrame;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcCore$1;->lambda$onVideoFrameFilter$0$NERtcCore$1(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void
.end method
