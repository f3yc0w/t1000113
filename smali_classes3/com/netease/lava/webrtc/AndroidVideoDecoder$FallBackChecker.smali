.class Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;
.super Ljava/lang/Object;
.source "AndroidVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/AndroidVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FallBackChecker"
.end annotation


# static fields
.field private static final kDropRateThreshold:F = 0.15f

.field private static final kInputFrameCount:F = 30.0f

.field private static final kSensitivity:F = 0.8f

.field private static final kWindowSizeMs:J = 0x7d0L


# instance fields
.field private curretTime:J

.field private dropRate:F

.field private final fallBackCheckerLock:Ljava/lang/Object;

.field private inputCount:J

.field private outputCount:J

.field final synthetic this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)V
    .locals 2

    .line 964
    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->fallBackCheckerLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 965
    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->curretTime:J

    const-wide/16 v0, 0x0

    .line 966
    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->inputCount:J

    .line 967
    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->outputCount:J

    const/4 p1, 0x0

    .line 968
    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->dropRate:F

    return-void
.end method

.method private processLogicalUnit()V
    .locals 6

    .line 1003
    iget-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->curretTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->curretTime:J

    .line 1007
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->curretTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->inputCount:J

    long-to-float v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1008
    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->dropRate:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    const v3, 0x3e4ccccc    # 0.19999999f

    iget-wide v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->outputCount:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    mul-float v4, v4, v3

    long-to-float v0, v0

    div-float/2addr v4, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->dropRate:F

    const-wide/16 v0, 0x0

    .line 1009
    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->inputCount:J

    .line 1010
    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->outputCount:J

    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->curretTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public getDropRate()F
    .locals 5

    .line 994
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->fallBackCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AndroidVideoDecoder"

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " inpinpuCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->inputCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " outputCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->outputCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->dropRate:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 997
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFallBack()Z
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->fallBackCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_0
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->processLogicalUnit()V

    .line 988
    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->dropRate:F

    const v2, 0x3e19999a    # 0.15f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 989
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 990
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportInput()V
    .locals 5

    .line 972
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->fallBackCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_0
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->processLogicalUnit()V

    .line 974
    iget-wide v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->inputCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->inputCount:J

    .line 975
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportOutput()V
    .locals 5

    .line 979
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->fallBackCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->outputCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->outputCount:J

    .line 981
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->processLogicalUnit()V

    .line 982
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
