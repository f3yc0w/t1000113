.class public Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;
.super Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;
.source "NewDynamicBitrateAdjuster.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewDynamicBitrateAdjuster"


# instance fields
.field private final dynamicBitrateAdjusterLock:Ljava/lang/Object;

.field private enable_dynamic_adjust_max_bitrate_pct:Z

.field private max_adjusted_bitrate_pct:F

.field private min_adjusted_bitrate_pct:F

.field private nativeBitrateAdjusterInstance:J


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->min_adjusted_bitrate_pct:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->max_adjusted_bitrate_pct:F

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->enable_dynamic_adjust_max_bitrate_pct:Z

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 18
    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->min_adjusted_bitrate_pct:F

    :cond_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    .line 21
    iput p2, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->max_adjusted_bitrate_pct:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->enable_dynamic_adjust_max_bitrate_pct:Z

    :cond_1
    const-wide/16 p1, 0x0

    .line 25
    iput-wide p1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    return-void
.end method

.method private static native nativeGetAdjustedBitrateBps(J)I
.end method

.method private static native nativeInit(FFZII)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeReportEncodedFrame(JI)V
.end method

.method private static native nativeReportQP(JI)V
.end method

.method private static native nativeSetTargetBitrateBps(JI)V
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 72
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeGetAdjustedBitrateBps(J)I

    move-result v1

    if-gtz v1, :cond_0

    .line 73
    invoke-super {p0}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v1

    monitor-exit v0

    return v1

    .line 74
    :cond_0
    monitor-exit v0

    return v1

    .line 76
    :cond_1
    invoke-super {p0}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(II)V
    .locals 6

    const-string v0, "NewDynamicBitrateAdjuster"

    const-string v1, "init()"

    .line 30
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 33
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeRelease(J)V

    .line 34
    iput-wide v3, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    .line 36
    :cond_0
    iget v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->min_adjusted_bitrate_pct:F

    iget v2, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->max_adjusted_bitrate_pct:F

    iget-boolean v3, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->enable_dynamic_adjust_max_bitrate_pct:Z

    invoke-static {v1, v2, v3, p1, p2}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeInit(FFZII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 6

    const-string v0, "NewDynamicBitrateAdjuster"

    const-string v1, "release()"

    .line 83
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 86
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeRelease(J)V

    .line 87
    iput-wide v3, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    .line 89
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportEncodedFrame(I)V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 54
    invoke-static {v1, v2, p1}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeReportEncodedFrame(JI)V

    .line 56
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reportQP(I)V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 63
    invoke-static {v1, v2, p1}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeReportQP(JI)V

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTargets(II)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->dynamicBitrateAdjusterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeBitrateAdjusterInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 44
    invoke-static {v1, v2, p1}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;->nativeSetTargetBitrateBps(JI)V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->setTargets(II)V

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
