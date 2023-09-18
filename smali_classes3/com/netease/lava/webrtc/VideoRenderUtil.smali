.class public Lcom/netease/lava/webrtc/VideoRenderUtil;
.super Ljava/lang/Object;
.source "VideoRenderUtil.java"


# instance fields
.field private indexKey:Ljava/lang/String;

.field private nativeVideoRenderUtil:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->indexKey:Ljava/lang/String;

    return-void
.end method

.method public static getRtcTimeMillis()J
    .locals 2

    .line 8
    invoke-static {}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeRtcTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeClearAll(J)V
.end method

.method private static native nativeCreateVideoRenderUtil()J
.end method

.method private static native nativeGetExecuteTime(J)J
.end method

.method private static native nativeGetIndexKey(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeReleaseVideoRenderUtil(J)V
.end method

.method private static native nativeRtcTimeMillis()J
.end method

.method private static native nativeSetEndTime(JLjava/lang/String;J)V
.end method

.method private static native nativeSetStartTime(JLjava/lang/String;J)V
.end method


# virtual methods
.method public clearAll()V
    .locals 5

    .line 53
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeClearAll(J)V

    return-void
.end method

.method public create()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeCreateVideoRenderUtil()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    return-void
.end method

.method public dispose()V
    .locals 5

    .line 19
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeReleaseVideoRenderUtil(J)V

    .line 23
    iput-wide v2, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    return-void
.end method

.method public getExecuteTime()J
    .locals 5

    .line 44
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 47
    :cond_0
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeGetExecuteTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setEndTime(J)V
    .locals 5

    .line 36
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->indexKey:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeSetEndTime(JLjava/lang/String;J)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 5

    .line 27
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v2, "VideoRenderUtil"

    .line 30
    invoke-static {v0, v1, v2}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeGetIndexKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->indexKey:Ljava/lang/String;

    .line 32
    iget-wide v1, p0, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeVideoRenderUtil:J

    invoke-static {v1, v2, v0, p1, p2}, Lcom/netease/lava/webrtc/VideoRenderUtil;->nativeSetStartTime(JLjava/lang/String;J)V

    return-void
.end method
