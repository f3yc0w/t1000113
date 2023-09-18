.class public Lcom/netease/lava/webrtc/VideoEncoder$Settings;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final automaticResizeOn:Z

.field public final bitrateAdjusterType:I

.field public final height:I

.field public final isScreenShare:Z

.field public final maxAdjustedBitratePct:F

.field public final maxFramerate:I

.field public final minAdjustedBitratePct:F

.field public final numberOfCores:I

.field public final numberOfSimulcastStreams:I

.field public final startBitrate:I

.field public final syncMode:Z

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIZZIFFZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->numberOfCores:I

    .line 41
    iput p2, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->width:I

    .line 42
    iput p3, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->height:I

    .line 43
    iput p4, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->startBitrate:I

    .line 44
    iput p5, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxFramerate:I

    .line 45
    iput p6, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->numberOfSimulcastStreams:I

    .line 46
    iput-boolean p7, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    .line 47
    iput-boolean p8, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->syncMode:Z

    .line 48
    iput p9, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->bitrateAdjusterType:I

    .line 49
    iput p10, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->minAdjustedBitratePct:F

    .line 50
    iput p11, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxAdjustedBitratePct:F

    .line 51
    iput-boolean p12, p0, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->isScreenShare:Z

    return-void
.end method
