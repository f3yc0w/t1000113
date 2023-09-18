.class public final Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED:F = 1.03f

.field public static final DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED:F = 0.97f

.field public static final DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED:J = 0x14L

.field public static final DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR:F = 0.999f

.field public static final DEFAULT_MIN_UPDATE_INTERVAL_MS:J = 0x3e8L

.field public static final DEFAULT_PROPORTIONAL_CONTROL_FACTOR:F = 0.1f

.field public static final DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS:J = 0x1f4L


# instance fields
.field private adjustedPlaybackSpeed:F

.field private currentTargetLiveOffsetUs:J

.field private final fallbackMaxPlaybackSpeed:F

.field private final fallbackMinPlaybackSpeed:F

.field private idealTargetLiveOffsetUs:J

.field private lastPlaybackSpeedUpdateMs:J

.field private final maxLiveOffsetErrorUsForUnitSpeed:J

.field private maxPlaybackSpeed:F

.field private maxTargetLiveOffsetUs:J

.field private mediaConfigurationTargetLiveOffsetUs:J

.field private minPlaybackSpeed:F

.field private final minPossibleLiveOffsetSmoothingFactor:F

.field private minTargetLiveOffsetUs:J

.field private final minUpdateIntervalMs:J

.field private final proportionalControlFactor:F

.field private smoothedMinPossibleLiveOffsetDeviationUs:J

.field private smoothedMinPossibleLiveOffsetUs:J

.field private targetLiveOffsetOverrideUs:J

.field private final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    .line 278
    iput p2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    .line 279
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    .line 280
    iput p5, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    .line 281
    iput-wide p6, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 282
    iput-wide p8, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    .line 283
    iput p10, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 284
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 285
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 286
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 287
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 288
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 289
    iput p2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 290
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 291
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 292
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 293
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 294
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 295
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl$1;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJF)V

    return-void
.end method

.method private adjustTargetLiveOffsetUs(J)V
    .locals 10

    .line 419
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    add-long v8, v0, v2

    .line 421
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmp-long v3, v0, v8

    if-lez v3, :cond_0

    .line 425
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide p1

    .line 426
    iget v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v2

    long-to-float p1, p1

    mul-float v0, v0, p1

    float-to-long v0, v0

    .line 428
    iget p2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr p2, v2

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v0, p1

    const/4 p1, 0x3

    new-array p1, p1, [J

    const/4 p2, 0x0

    aput-wide v8, p1, p2

    const/4 p2, 0x1

    .line 430
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    aput-wide v2, p1, p2

    const/4 p2, 0x2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v2, v0

    aput-wide v2, p1, p2

    .line 431
    invoke-static {p1}, Lcom/google/common/primitives/Longs;->max([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 436
    iget v1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v1, v2

    .line 437
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v4, p1, v0

    .line 438
    iget-wide v6, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 439
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 440
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 442
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeResetTargetLiveOffsetUs()V
    .locals 7

    .line 370
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 372
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    .line 375
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 378
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 382
    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    return-void

    .line 385
    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 386
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 387
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 388
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 389
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method private static smooth(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float p0, p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private updateSmoothedMinPossibleLiveOffsetUs(JJ)V
    .locals 3

    sub-long/2addr p1, p3

    .line 394
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 395
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 p1, 0x0

    .line 396
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    goto :goto_0

    .line 400
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 403
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p3

    .line 401
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 408
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 409
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 410
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdjustedPlaybackSpeed(JJ)F
    .locals 6

    .line 339
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 343
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->updateSmoothedMinPossibleLiveOffsetUs(JJ)V

    .line 345
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long v0, p3, v2

    if-eqz v0, :cond_1

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr p3, v0

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    .line 347
    iget p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1

    .line 349
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustTargetLiveOffsetUs(J)V

    .line 352
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 353
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 354
    iput v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_0

    .line 356
    :cond_2
    iget p3, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    long-to-float p1, p1

    mul-float p3, p3, p1

    add-float/2addr p3, v4

    .line 357
    iget p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget p2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 358
    invoke-static {p3, p1, p2}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 360
    :goto_0
    iget p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1
.end method

.method public getTargetLiveOffsetUs()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public notifyRebuffer()V
    .locals 7

    .line 326
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 329
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 330
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 332
    iput-wide v4, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 334
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;)V
    .locals 2

    .line 300
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 301
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 302
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 304
    iget v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 305
    iget v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_0

    .line 306
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    :goto_0
    iput v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 308
    iget v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 309
    iget p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_1

    .line 310
    :cond_1
    iget p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    :goto_1
    iput p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 311
    iget v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 313
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .locals 0

    .line 320
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 321
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method
