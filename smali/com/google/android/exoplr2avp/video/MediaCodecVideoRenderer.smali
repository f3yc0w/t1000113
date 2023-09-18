.class public Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

.field private final frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastBufferPresentationTimeUs:J

.field private lastRenderRealtimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

.field private scalingMode:I

.field private surface:Landroid/view/Surface;

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private videoFrameProcessingOffsetCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;I)V
    .locals 11

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 272
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;IF)V
    .locals 7

    move-object v6, p0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZF)V

    move-wide v0, p4

    .line 321
    iput-wide v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p9

    .line 322
    iput v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 324
    new-instance v1, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    .line 325
    new-instance v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p7

    move-object v2, p8

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;)V

    iput-object v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    .line 326
    invoke-static {}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 327
    iput-wide v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, -0x1

    .line 328
    iput v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 329
    iput v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 330
    iput v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    const/4 v0, 0x1

    .line 331
    iput v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->scalingMode:I

    const/4 v0, 0x0

    .line 332
    iput v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;I)V
    .locals 11

    .line 200
    sget-object v2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;I)V
    .locals 11

    .line 234
    sget-object v2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;Lcom/google/android/exoplr2avp/ExoPlaybackException;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Lcom/google/android/exoplr2avp/ExoPlaybackException;)V

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x0

    .line 1357
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1362
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    new-instance v1, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, 0x0

    .line 1387
    iput-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .locals 2

    const-string/jumbo v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1456
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1457
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .locals 2

    .line 1678
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .locals 15

    .line 1735
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0x1c

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gt v0, v7, :cond_9

    .line 1742
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v12, "machuca"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v12, "mulan"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v12, "once"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v12, "magnolia"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v12, "aquaman"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v12, "oneday"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v12, "dangalUHD"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v12, "dangalFHD"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v12, "dangal"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v11

    .line 1758
    :cond_9
    :goto_2
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v12, 0x1b

    if-gt v0, v12, :cond_a

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    const-string v13, "HWEML"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v11

    .line 1763
    :cond_a
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v13, 0x1a

    if-gt v0, v13, :cond_9a

    .line 1783
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    :goto_3
    const/4 v1, -0x1

    goto/16 :goto_4

    :sswitch_9
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x8b

    goto/16 :goto_4

    :sswitch_a
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/16 v1, 0x8a

    goto/16 :goto_4

    :sswitch_b
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    const/16 v1, 0x89

    goto/16 :goto_4

    :sswitch_c
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    const/16 v1, 0x88

    goto/16 :goto_4

    :sswitch_d
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    const/16 v1, 0x87

    goto/16 :goto_4

    :sswitch_e
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    const/16 v1, 0x86

    goto/16 :goto_4

    :sswitch_f
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    const/16 v1, 0x85

    goto/16 :goto_4

    :sswitch_10
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3

    :cond_12
    const/16 v1, 0x84

    goto/16 :goto_4

    :sswitch_11
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_3

    :cond_13
    const/16 v1, 0x83

    goto/16 :goto_4

    :sswitch_12
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v1, 0x82

    goto/16 :goto_4

    :sswitch_13
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_3

    :cond_15
    const/16 v1, 0x81

    goto/16 :goto_4

    :sswitch_14
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_3

    :cond_16
    const/16 v1, 0x80

    goto/16 :goto_4

    :sswitch_15
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_3

    :cond_17
    const/16 v1, 0x7f

    goto/16 :goto_4

    :sswitch_16
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_3

    :cond_18
    const/16 v1, 0x7e

    goto/16 :goto_4

    :sswitch_17
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_3

    :cond_19
    const/16 v1, 0x7d

    goto/16 :goto_4

    :sswitch_18
    const-string/jumbo v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v1, 0x7c

    goto/16 :goto_4

    :sswitch_19
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const/16 v1, 0x7b

    goto/16 :goto_4

    :sswitch_1a
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const/16 v1, 0x7a

    goto/16 :goto_4

    :sswitch_1b
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const/16 v1, 0x79

    goto/16 :goto_4

    :sswitch_1c
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v1, 0x78

    goto/16 :goto_4

    :sswitch_1d
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/16 v1, 0x77

    goto/16 :goto_4

    :sswitch_1e
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v1, 0x76

    goto/16 :goto_4

    :sswitch_1f
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_3

    :cond_21
    const/16 v1, 0x75

    goto/16 :goto_4

    :sswitch_20
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_3

    :cond_22
    const/16 v1, 0x74

    goto/16 :goto_4

    :sswitch_21
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_3

    :cond_23
    const/16 v1, 0x73

    goto/16 :goto_4

    :sswitch_22
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_3

    :cond_24
    const/16 v1, 0x72

    goto/16 :goto_4

    :sswitch_23
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_3

    :cond_25
    const/16 v1, 0x71

    goto/16 :goto_4

    :sswitch_24
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_3

    :cond_26
    const/16 v1, 0x70

    goto/16 :goto_4

    :sswitch_25
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_3

    :cond_27
    const/16 v1, 0x6f

    goto/16 :goto_4

    :sswitch_26
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_3

    :cond_28
    const/16 v1, 0x6e

    goto/16 :goto_4

    :sswitch_27
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_3

    :cond_29
    const/16 v1, 0x6d

    goto/16 :goto_4

    :sswitch_28
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_3

    :cond_2a
    const/16 v1, 0x6c

    goto/16 :goto_4

    :sswitch_29
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_3

    :cond_2b
    const/16 v1, 0x6b

    goto/16 :goto_4

    :sswitch_2a
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_3

    :cond_2c
    const/16 v1, 0x6a

    goto/16 :goto_4

    :sswitch_2b
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_3

    :cond_2d
    const/16 v1, 0x69

    goto/16 :goto_4

    :sswitch_2c
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_3

    :cond_2e
    const/16 v1, 0x68

    goto/16 :goto_4

    :sswitch_2d
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_3

    :cond_2f
    const/16 v1, 0x67

    goto/16 :goto_4

    :sswitch_2e
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_3

    :cond_30
    const/16 v1, 0x66

    goto/16 :goto_4

    :sswitch_2f
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_3

    :cond_31
    const/16 v1, 0x65

    goto/16 :goto_4

    :sswitch_30
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_3

    :cond_32
    const/16 v1, 0x64

    goto/16 :goto_4

    :sswitch_31
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_3

    :cond_33
    const/16 v1, 0x63

    goto/16 :goto_4

    :sswitch_32
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_3

    :cond_34
    const/16 v1, 0x62

    goto/16 :goto_4

    :sswitch_33
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_3

    :cond_35
    const/16 v1, 0x61

    goto/16 :goto_4

    :sswitch_34
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_3

    :cond_36
    const/16 v1, 0x60

    goto/16 :goto_4

    :sswitch_35
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_3

    :cond_37
    const/16 v1, 0x5f

    goto/16 :goto_4

    :sswitch_36
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_3

    :cond_38
    const/16 v1, 0x5e

    goto/16 :goto_4

    :sswitch_37
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_3

    :cond_39
    const/16 v1, 0x5d

    goto/16 :goto_4

    :sswitch_38
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_3

    :cond_3a
    const/16 v1, 0x5c

    goto/16 :goto_4

    :sswitch_39
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_3

    :cond_3b
    const/16 v1, 0x5b

    goto/16 :goto_4

    :sswitch_3a
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_3

    :cond_3c
    const/16 v1, 0x5a

    goto/16 :goto_4

    :sswitch_3b
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_3

    :cond_3d
    const/16 v1, 0x59

    goto/16 :goto_4

    :sswitch_3c
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_3

    :cond_3e
    const/16 v1, 0x58

    goto/16 :goto_4

    :sswitch_3d
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_3

    :cond_3f
    const/16 v1, 0x57

    goto/16 :goto_4

    :sswitch_3e
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_3

    :cond_40
    const/16 v1, 0x56

    goto/16 :goto_4

    :sswitch_3f
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_3

    :cond_41
    const/16 v1, 0x55

    goto/16 :goto_4

    :sswitch_40
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_3

    :cond_42
    const/16 v1, 0x54

    goto/16 :goto_4

    :sswitch_41
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_3

    :cond_43
    const/16 v1, 0x53

    goto/16 :goto_4

    :sswitch_42
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_3

    :cond_44
    const/16 v1, 0x52

    goto/16 :goto_4

    :sswitch_43
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_3

    :cond_45
    const/16 v1, 0x51

    goto/16 :goto_4

    :sswitch_44
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_3

    :cond_46
    const/16 v1, 0x50

    goto/16 :goto_4

    :sswitch_45
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_3

    :cond_47
    const/16 v1, 0x4f

    goto/16 :goto_4

    :sswitch_46
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_3

    :cond_48
    const/16 v1, 0x4e

    goto/16 :goto_4

    :sswitch_47
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_3

    :cond_49
    const/16 v1, 0x4d

    goto/16 :goto_4

    :sswitch_48
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_3

    :cond_4a
    const/16 v1, 0x4c

    goto/16 :goto_4

    :sswitch_49
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_3

    :cond_4b
    const/16 v1, 0x4b

    goto/16 :goto_4

    :sswitch_4a
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_3

    :cond_4c
    const/16 v1, 0x4a

    goto/16 :goto_4

    :sswitch_4b
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_3

    :cond_4d
    const/16 v1, 0x49

    goto/16 :goto_4

    :sswitch_4c
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_3

    :cond_4e
    const/16 v1, 0x48

    goto/16 :goto_4

    :sswitch_4d
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_3

    :cond_4f
    const/16 v1, 0x47

    goto/16 :goto_4

    :sswitch_4e
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_3

    :cond_50
    const/16 v1, 0x46

    goto/16 :goto_4

    :sswitch_4f
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_3

    :cond_51
    const/16 v1, 0x45

    goto/16 :goto_4

    :sswitch_50
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_3

    :cond_52
    const/16 v1, 0x44

    goto/16 :goto_4

    :sswitch_51
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_3

    :cond_53
    const/16 v1, 0x43

    goto/16 :goto_4

    :sswitch_52
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_3

    :cond_54
    const/16 v1, 0x42

    goto/16 :goto_4

    :sswitch_53
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_3

    :cond_55
    const/16 v1, 0x41

    goto/16 :goto_4

    :sswitch_54
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_3

    :cond_56
    const/16 v1, 0x40

    goto/16 :goto_4

    :sswitch_55
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_3

    :cond_57
    const/16 v1, 0x3f

    goto/16 :goto_4

    :sswitch_56
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_3

    :cond_58
    const/16 v1, 0x3e

    goto/16 :goto_4

    :sswitch_57
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_3

    :cond_59
    const/16 v1, 0x3d

    goto/16 :goto_4

    :sswitch_58
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_3

    :cond_5a
    const/16 v1, 0x3c

    goto/16 :goto_4

    :sswitch_59
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_3

    :cond_5b
    const/16 v1, 0x3b

    goto/16 :goto_4

    :sswitch_5a
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_3

    :cond_5c
    const/16 v1, 0x3a

    goto/16 :goto_4

    :sswitch_5b
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_3

    :cond_5d
    const/16 v1, 0x39

    goto/16 :goto_4

    :sswitch_5c
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_3

    :cond_5e
    const/16 v1, 0x38

    goto/16 :goto_4

    :sswitch_5d
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_3

    :cond_5f
    const/16 v1, 0x37

    goto/16 :goto_4

    :sswitch_5e
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_3

    :cond_60
    const/16 v1, 0x36

    goto/16 :goto_4

    :sswitch_5f
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_3

    :cond_61
    const/16 v1, 0x35

    goto/16 :goto_4

    :sswitch_60
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_3

    :cond_62
    const/16 v1, 0x34

    goto/16 :goto_4

    :sswitch_61
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_3

    :cond_63
    const/16 v1, 0x33

    goto/16 :goto_4

    :sswitch_62
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_3

    :cond_64
    const/16 v1, 0x32

    goto/16 :goto_4

    :sswitch_63
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_3

    :cond_65
    const/16 v1, 0x31

    goto/16 :goto_4

    :sswitch_64
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_3

    :cond_66
    const/16 v1, 0x30

    goto/16 :goto_4

    :sswitch_65
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_3

    :cond_67
    const/16 v1, 0x2f

    goto/16 :goto_4

    :sswitch_66
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_3

    :cond_68
    const/16 v1, 0x2e

    goto/16 :goto_4

    :sswitch_67
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_3

    :cond_69
    const/16 v1, 0x2d

    goto/16 :goto_4

    :sswitch_68
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_3

    :cond_6a
    const/16 v1, 0x2c

    goto/16 :goto_4

    :sswitch_69
    const-string/jumbo v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_3

    :cond_6b
    const/16 v1, 0x2b

    goto/16 :goto_4

    :sswitch_6a
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_3

    :cond_6c
    const/16 v1, 0x2a

    goto/16 :goto_4

    :sswitch_6b
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_3

    :cond_6d
    const/16 v1, 0x29

    goto/16 :goto_4

    :sswitch_6c
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_3

    :cond_6e
    const/16 v1, 0x28

    goto/16 :goto_4

    :sswitch_6d
    const-string/jumbo v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_3

    :cond_6f
    const/16 v1, 0x27

    goto/16 :goto_4

    :sswitch_6e
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_3

    :cond_70
    const/16 v1, 0x26

    goto/16 :goto_4

    :sswitch_6f
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_3

    :cond_71
    const/16 v1, 0x25

    goto/16 :goto_4

    :sswitch_70
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_3

    :cond_72
    const/16 v1, 0x24

    goto/16 :goto_4

    :sswitch_71
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_3

    :cond_73
    const/16 v1, 0x23

    goto/16 :goto_4

    :sswitch_72
    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_3

    :cond_74
    const/16 v1, 0x22

    goto/16 :goto_4

    :sswitch_73
    const-string/jumbo v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_3

    :cond_75
    const/16 v1, 0x21

    goto/16 :goto_4

    :sswitch_74
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_3

    :cond_76
    const/16 v1, 0x20

    goto/16 :goto_4

    :sswitch_75
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_3

    :cond_77
    const/16 v1, 0x1f

    goto/16 :goto_4

    :sswitch_76
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_3

    :cond_78
    const/16 v1, 0x1e

    goto/16 :goto_4

    :sswitch_77
    const-string/jumbo v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_3

    :cond_79
    const/16 v1, 0x1d

    goto/16 :goto_4

    :sswitch_78
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_3

    :cond_7a
    const/16 v1, 0x1c

    goto/16 :goto_4

    :sswitch_79
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_3

    :cond_7b
    const/16 v1, 0x1b

    goto/16 :goto_4

    :sswitch_7a
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_3

    :cond_7c
    const/16 v1, 0x1a

    goto/16 :goto_4

    :sswitch_7b
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_3

    :cond_7d
    const/16 v1, 0x19

    goto/16 :goto_4

    :sswitch_7c
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_3

    :cond_7e
    const/16 v1, 0x18

    goto/16 :goto_4

    :sswitch_7d
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_3

    :cond_7f
    const/16 v1, 0x17

    goto/16 :goto_4

    :sswitch_7e
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_3

    :cond_80
    const/16 v1, 0x16

    goto/16 :goto_4

    :sswitch_7f
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_3

    :cond_81
    const/16 v1, 0x15

    goto/16 :goto_4

    :sswitch_80
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_3

    :cond_82
    const/16 v1, 0x14

    goto/16 :goto_4

    :sswitch_81
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_3

    :cond_83
    const/16 v1, 0x13

    goto/16 :goto_4

    :sswitch_82
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_3

    :cond_84
    const/16 v1, 0x12

    goto/16 :goto_4

    :sswitch_83
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_3

    :cond_85
    const/16 v1, 0x11

    goto/16 :goto_4

    :sswitch_84
    const-string/jumbo v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_3

    :cond_86
    const/16 v1, 0x10

    goto/16 :goto_4

    :sswitch_85
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_3

    :cond_87
    const/16 v1, 0xf

    goto/16 :goto_4

    :sswitch_86
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_3

    :cond_88
    const/16 v1, 0xe

    goto/16 :goto_4

    :sswitch_87
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_3

    :cond_89
    const/16 v1, 0xd

    goto/16 :goto_4

    :sswitch_88
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_3

    :cond_8a
    const/16 v1, 0xc

    goto/16 :goto_4

    :sswitch_89
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_3

    :cond_8b
    const/16 v1, 0xb

    goto/16 :goto_4

    :sswitch_8a
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_3

    :cond_8c
    const/16 v1, 0xa

    goto/16 :goto_4

    :sswitch_8b
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_3

    :cond_8d
    const/16 v1, 0x9

    goto/16 :goto_4

    :sswitch_8c
    const-string v2, "PGN610"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_3

    :sswitch_8d
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_3

    :cond_8e
    const/4 v1, 0x7

    goto :goto_4

    :sswitch_8e
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_3

    :cond_8f
    const/4 v1, 0x6

    goto :goto_4

    :sswitch_8f
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_3

    :cond_90
    const/4 v1, 0x5

    goto :goto_4

    :sswitch_90
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_3

    :cond_91
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_91
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_3

    :cond_92
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_92
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_3

    :cond_93
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_93
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_3

    :cond_94
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_94
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_3

    :cond_95
    const/4 v1, 0x0

    :cond_96
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 1928
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_5
    const/4 v8, -0x1

    goto :goto_6

    :sswitch_95
    const-string v1, "AFTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_5

    :sswitch_96
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_5

    :cond_97
    const/4 v8, 0x1

    goto :goto_6

    :sswitch_97
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_5

    :cond_98
    const/4 v8, 0x0

    :cond_99
    :goto_6
    packed-switch v8, :pswitch_data_2

    goto :goto_7

    :pswitch_1
    return v11

    :cond_9a
    :goto_7
    return v10

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_8
        -0x48b8f57f -> :sswitch_7
        -0x48b8bd30 -> :sswitch_6
        -0x3c588c8a -> :sswitch_5
        -0x2d5172e2 -> :sswitch_4
        -0x3de1850 -> :sswitch_3
        0x341e81 -> :sswitch_2
        0x636d2f1 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_94
        -0x7fd6c381 -> :sswitch_93
        -0x7fd6c368 -> :sswitch_92
        -0x7d026749 -> :sswitch_91
        -0x78929d6a -> :sswitch_90
        -0x75f50a1e -> :sswitch_8f
        -0x75f4fe9d -> :sswitch_8e
        -0x736f875c -> :sswitch_8d
        -0x736f83c2 -> :sswitch_8c
        -0x736f83c1 -> :sswitch_8b
        -0x7327ce1c -> :sswitch_8a
        -0x705c574b -> :sswitch_89
        -0x651ebb62 -> :sswitch_88
        -0x6423293b -> :sswitch_87
        -0x604f5117 -> :sswitch_86
        -0x5f691e13 -> :sswitch_85
        -0x5ca40cc4 -> :sswitch_84
        -0x58520ec1 -> :sswitch_83
        -0x58520eba -> :sswitch_82
        -0x58520eb9 -> :sswitch_81
        -0x4eaed329 -> :sswitch_80
        -0x4892fb4f -> :sswitch_7f
        -0x465b3df3 -> :sswitch_7e
        -0x43e6c939 -> :sswitch_7d
        -0x3ec0fcc5 -> :sswitch_7c
        -0x3b33cca0 -> :sswitch_7b
        -0x3b33cc9a -> :sswitch_7a
        -0x398ae3f6 -> :sswitch_79
        -0x391f0fb4 -> :sswitch_78
        -0x346837ae -> :sswitch_77
        -0x323788e3 -> :sswitch_76
        -0x30f57652 -> :sswitch_75
        -0x2f88a116 -> :sswitch_74
        -0x2f61ed98 -> :sswitch_73
        -0x2efd0837 -> :sswitch_72
        -0x2e9e9441 -> :sswitch_71
        -0x2247b8b1 -> :sswitch_70
        -0x1f0fa2b7 -> :sswitch_6f
        -0x19af3b41 -> :sswitch_6e
        -0x114fad3e -> :sswitch_6d
        -0x10dae90b -> :sswitch_6c
        -0x1084b7b7 -> :sswitch_6b
        -0xa5988e9 -> :sswitch_6a
        -0x35f9fbf -> :sswitch_69
        0x84e -> :sswitch_68
        0xa04 -> :sswitch_67
        0xa9b -> :sswitch_66
        0xa9f -> :sswitch_65
        0xc13 -> :sswitch_64
        0xd9b -> :sswitch_63
        0x11ebd -> :sswitch_62
        0x12711 -> :sswitch_61
        0x127db -> :sswitch_60
        0x12beb -> :sswitch_5f
        0x1334d -> :sswitch_5e
        0x135c9 -> :sswitch_5d
        0x13aea -> :sswitch_5c
        0x158d2 -> :sswitch_5b
        0x1821e -> :sswitch_5a
        0x18220 -> :sswitch_59
        0x18401 -> :sswitch_58
        0x18c69 -> :sswitch_57
        0x1716e6 -> :sswitch_56
        0x171ac8 -> :sswitch_55
        0x171ac9 -> :sswitch_54
        0x208c61 -> :sswitch_53
        0x208c63 -> :sswitch_52
        0x208c80 -> :sswitch_51
        0x208c9f -> :sswitch_50
        0x208cbe -> :sswitch_4f
        0x208cc0 -> :sswitch_4e
        0x252f5f -> :sswitch_4d
        0x25981d -> :sswitch_4c
        0x259b88 -> :sswitch_4b
        0x290a13 -> :sswitch_4a
        0x3021fd -> :sswitch_49
        0x321e47 -> :sswitch_48
        0x332327 -> :sswitch_47
        0x33ab63 -> :sswitch_46
        0x27691fb -> :sswitch_45
        0x30f8881 -> :sswitch_44
        0x30f8c42 -> :sswitch_43
        0x349f581 -> :sswitch_42
        0x3ab0ea7 -> :sswitch_41
        0x3e53ea5 -> :sswitch_40
        0x3f25a44 -> :sswitch_3f
        0x3f25a46 -> :sswitch_3e
        0x3f25a49 -> :sswitch_3d
        0x3f25e05 -> :sswitch_3c
        0x3f25e07 -> :sswitch_3b
        0x3f25e09 -> :sswitch_3a
        0x3f261c6 -> :sswitch_39
        0x48dce49 -> :sswitch_38
        0x48dd589 -> :sswitch_37
        0x48dd8af -> :sswitch_36
        0x4d36832 -> :sswitch_35
        0x4f0b0e7 -> :sswitch_34
        0x5e2479e -> :sswitch_33
        0x60acc05 -> :sswitch_32
        0x6214744 -> :sswitch_31
        0x9d91379 -> :sswitch_30
        0xadc0551 -> :sswitch_2f
        0xea056b3 -> :sswitch_2e
        0x1121dbc3 -> :sswitch_2d
        0x1255818c -> :sswitch_2c
        0x1263990d -> :sswitch_2b
        0x12d90f3a -> :sswitch_2a
        0x12d90f4c -> :sswitch_29
        0x12d98b1b -> :sswitch_28
        0x12d98b22 -> :sswitch_27
        0x1844c711 -> :sswitch_26
        0x1e3e8044 -> :sswitch_25
        0x2f5336ed -> :sswitch_24
        0x2f54115e -> :sswitch_23
        0x2f541849 -> :sswitch_22
        0x31cf010e -> :sswitch_21
        0x36ad82f4 -> :sswitch_20
        0x391a0b61 -> :sswitch_1f
        0x3f3728cd -> :sswitch_1e
        0x448ec687 -> :sswitch_1d
        0x46260f63 -> :sswitch_1c
        0x4c505106 -> :sswitch_1b
        0x4de67084 -> :sswitch_1a
        0x506ac5a9 -> :sswitch_19
        0x5abad9cd -> :sswitch_18
        0x64d2e6e9 -> :sswitch_17
        0x64d2eac5 -> :sswitch_16
        0x65e4085b -> :sswitch_15
        0x6f373556 -> :sswitch_14
        0x719f1dcb -> :sswitch_13
        0x75d9a0f0 -> :sswitch_12
        0x7796d144 -> :sswitch_11
        0x785bcb26 -> :sswitch_10
        0x78fc0e50 -> :sswitch_f
        0x790521fb -> :sswitch_e
        0x7933207f -> :sswitch_d
        0x7a05a409 -> :sswitch_c
        0x7a0696bd -> :sswitch_b
        0x7a16dfe7 -> :sswitch_a
        0x7a1f0e95 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x236fe21d -> :sswitch_97
        0x1e9d52 -> :sswitch_96
        0x1e9d5f -> :sswitch_95
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I
    .locals 10

    .line 762
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    .line 763
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    .line 769
    :cond_0
    iget-object v3, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/dolby-vision"

    .line 770
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "video/avc"

    const-string/jumbo v6, "video/hevc"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_3

    .line 778
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 780
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_1

    if-eq p1, v7, :cond_1

    if-ne p1, v8, :cond_2

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v6

    .line 792
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    const/4 v9, 0x3

    sparse-switch p1, :sswitch_data_0

    :goto_1
    const/4 v7, -0x1

    goto :goto_2

    :sswitch_0
    const-string/jumbo p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_1
    const-string/jumbo p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_3
    const-string/jumbo p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_5
    const-string/jumbo p1, "video/av01"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :sswitch_6
    const-string/jumbo p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_2
    packed-switch v7, :pswitch_data_0

    return v2

    .line 799
    :pswitch_0
    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amazon"

    .line 800
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "KFSOWI"

    .line 801
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "AFTS"

    .line 802
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    const/16 p0, 0x10

    .line 808
    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p1, p1, 0x10

    goto :goto_4

    :cond_c
    :goto_3
    return v2

    :pswitch_1
    mul-int p1, v0, v1

    goto :goto_5

    :pswitch_2
    mul-int p1, v0, v1

    :goto_4
    const/4 v4, 0x2

    :goto_5
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v4, v4, 0x2

    .line 828
    div-int/2addr p1, v4

    return p1

    :cond_d
    :goto_6
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getCodecMaxSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)Landroid/graphics/Point;
    .locals 13

    .line 1603
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1604
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1605
    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1607
    sget-object v5, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_8

    .line 1612
    :cond_3
    sget v10, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 1614
    :goto_5
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1617
    iget v8, p1, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    .line 1618
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v10, 0x10

    .line 1624
    :try_start_0
    invoke-static {v8, v10}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1625
    invoke-static {v9, v10}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 1626
    invoke-static {}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_9

    .line 1627
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v9

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v8, v9

    .line 1629
    :goto_7
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    :cond_a
    :goto_8
    return-object v7
.end method

.method private static getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplr2avp/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 461
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 463
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 466
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 470
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 473
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 475
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method protected static getMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I
    .locals 3

    .line 1649
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1653
    iget-object p0, p1, Lcom/google/android/exoplr2avp/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1655
    iget-object v2, p1, Lcom/google/android/exoplr2avp/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1657
    :cond_0
    iget p0, p1, Lcom/google/android/exoplr2avp/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1659
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result p0

    return p0
.end method

.method private static isBufferLate(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 3

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 1414
    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1416
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1417
    iget-object v4, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1418
    iput v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1419
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoFrameProcessingOffset()V
    .locals 4

    .line 1424
    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    const-wide/16 v0, 0x0

    .line 1427
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    const/4 v0, 0x0

    .line 1428
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .line 1391
    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplr2avp/video/VideoSize;->unappliedRotationDegrees:I

    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplr2avp/video/VideoSize;->pixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1397
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/video/VideoSize;

    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/video/VideoSize;-><init>(IIIF)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    .line 1403
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V

    :cond_2
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 1381
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 2

    .line 1408
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V

    :cond_0
    return-void
.end method

.method private notifyFrameMetadataListener(JJLcom/google/android/exoplr2avp/Format;)V
    .locals 7

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1122
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplr2avp/Format;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .locals 0

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method private releasePlaceholderSurface()V
    .locals 3

    .line 1342
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1343
    iput-object v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 1345
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/video/PlaceholderSurface;->release()V

    .line 1346
    iput-object v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    return-void
.end method

.method private static setHdr10PlusInfoV29(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;[B)V
    .locals 2

    .line 1444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 1445
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1446
    invoke-interface {p0, v0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 5

    .line 1351
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1353
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setOutput(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 621
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 629
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    .line 637
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 638
    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 642
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 643
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 645
    sget v2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_3

    .line 646
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_2

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeInitCodecOrBypass()V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 652
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eq p1, v1, :cond_5

    .line 654
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 656
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_7

    .line 658
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_3

    .line 662
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 663
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eq p1, v0, :cond_7

    .line 668
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 669
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_7
    :goto_3
    return-void
.end method

.method private shouldUseDummySurface(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 1334
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1336
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1337
    invoke-static {p1}, Lcom/google/android/exoplr2avp/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
    .locals 8

    .line 721
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 723
    iget v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 724
    iget v2, p3, Lcom/google/android/exoplr2avp/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v2, v3, :cond_0

    iget v2, p3, Lcom/google/android/exoplr2avp/Format;->height:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 727
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    .line 731
    new-instance v1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 735
    :cond_3
    iget p1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v1
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.google"

    .line 1704
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1708
    :cond_0
    const-class p1, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 1709
    :try_start_0
    sget-boolean v0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_1

    .line 1710
    invoke-static {}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 v0, 0x1

    .line 1711
    sput-boolean v0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1713
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    sget-boolean p1, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    :catchall_0
    move-exception v0

    .line 1713
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecDecoderException;
    .locals 2

    .line 1590
    new-instance v0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 1221
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1222
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1223
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1224
    invoke-virtual {p0, p3, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method protected getCodecMaxValues(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;[Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 11

    .line 1535
    iget v0, p2, Lcom/google/android/exoplr2avp/Format;->width:I

    .line 1536
    iget v1, p2, Lcom/google/android/exoplr2avp/Format;->height:I

    .line 1537
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result v2

    .line 1538
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_1

    if-eq v2, v5, :cond_0

    .line 1542
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    if-eq p1, v5, :cond_0

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1550
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1553
    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1556
    :cond_1
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_6

    aget-object v9, p3, v7

    .line 1557
    iget-object v10, p2, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    if-nez v10, :cond_2

    .line 1560
    invoke-virtual {v9}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v9

    iget-object v10, p2, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplr2avp/Format$Builder;->setColorInfo(Lcom/google/android/exoplr2avp/video/ColorInfo;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v9

    .line 1562
    :cond_2
    invoke-virtual {p1, p2, v9}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v10, :cond_5

    .line 1563
    iget v10, v9, Lcom/google/android/exoplr2avp/Format;->width:I

    if-eq v10, v5, :cond_4

    iget v10, v9, Lcom/google/android/exoplr2avp/Format;->height:I

    if-ne v10, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v10, 0x1

    :goto_2
    or-int/2addr v8, v10

    .line 1565
    iget v10, v9, Lcom/google/android/exoplr2avp/Format;->width:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1566
    iget v10, v9, Lcom/google/android/exoplr2avp/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1567
    invoke-static {p1, v9}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    .line 1571
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 1574
    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1575
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1580
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setWidth(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setHeight(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p2

    .line 1579
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    .line 1577
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_7
    new-instance p1, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 2

    .line 681
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplr2avp/Format;[Lcom/google/android/exoplr2avp/Format;)F
    .locals 5

    .line 837
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 838
    iget v3, v3, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 840
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    mul-float v0, v2, p1

    :goto_1
    return v0
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplr2avp/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 435
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 436
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 435
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplr2avp/Format;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 695
    :cond_0
    iget-object v4, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 696
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getStreamFormats()[Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;[Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 697
    iget-boolean v7, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 704
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move v8, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object v2, p0

    move-object v3, p2

    move v6, p4

    .line 698
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplr2avp/Format;Ljava/lang/String;Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_4

    .line 706
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_1

    .line 707
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 714
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-static {p1, p4, p2, v0, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplr2avp/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Lcom/google/android/exoplr2avp/Format;Ljava/lang/String;Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 2

    .line 1483
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 1485
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1487
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1488
    iget-object p2, p1, Lcom/google/android/exoplr2avp/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1490
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1491
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    const-string v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1492
    iget-object p2, p1, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplr2avp/video/ColorInfo;)V

    .line 1493
    iget-object p2, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1496
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1498
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1499
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1498
    invoke-static {v0, p2, p1}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1503
    :cond_0
    iget p1, p3, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1504
    iget p1, p3, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1505
    iget p1, p3, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1508
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const-string p1, "priority"

    .line 1509
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_1

    const-string p1, "operating-rate"

    .line 1511
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1
    if-eqz p5, :cond_2

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 1515
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1516
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_3

    .line 1519
    invoke-static {v0, p6}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected getSurface()Landroid/view/Surface;
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 953
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_0

    return-void

    .line 956
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 957
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 959
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 960
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 961
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 962
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 963
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 964
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 972
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 973
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 974
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 975
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;[B)V

    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 615
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    goto :goto_0

    .line 587
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 588
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 590
    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto :goto_0

    .line 600
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 601
    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_5

    .line 602
    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 603
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_5

    .line 604
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->releaseCodec()V

    goto :goto_0

    .line 597
    :cond_3
    check-cast p2, Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 584
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public isReady()Z
    .locals 9

    .line 513
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_2

    .line 519
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 521
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 524
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 529
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(JZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x1

    if-eqz p3, :cond_1

    .line 1248
    iget-object p3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v0, p3, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, p1

    iput v0, p3, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 1249
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p3, v0

    iput p3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_0

    .line 1251
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v0, p3, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, p2

    iput v0, p3, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 1252
    iget p3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1255
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    return p2
.end method

.method maybeNotifyRenderedFirstFrame()V
    .locals 3

    const/4 v0, 0x1

    .line 1372
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 1373
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_0

    .line 1374
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1375
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 1376
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_0
    return-void
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 869
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 6

    .line 852
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 853
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 855
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 856
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_0

    .line 857
    new-instance p1, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 858
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 556
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 557
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 561
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 564
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 484
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 485
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getConfiguration()Lcom/google/android/exoplr2avp/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 486
    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 487
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v1, p1, :cond_2

    .line 488
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 491
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 492
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 493
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 877
    invoke-super {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplr2avp/Format;Landroid/media/MediaFormat;)V
    .locals 6

    .line 907
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    iget v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 912
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    .line 913
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 914
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    goto :goto_3

    .line 916
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 918
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 919
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 921
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 924
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "width"

    .line 925
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    if-eqz v1, :cond_4

    .line 928
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_2

    :cond_4
    const-string v0, "height"

    .line 929
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 931
    :goto_3
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 932
    sget p2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_6

    .line 936
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_5

    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_7

    .line 937
    :cond_5
    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 938
    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 939
    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 940
    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_4

    .line 944
    :cond_6
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 946
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 498
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 499
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 500
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onPositionReset()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 501
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 502
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 507
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    .line 1144
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1145
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_0

    .line 1146
    iget p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_0
    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 0

    .line 1152
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1153
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)V

    .line 1130
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1133
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 895
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_0

    .line 896
    iget v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 898
    :cond_0
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    .line 901
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 571
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 573
    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-eqz v1, :cond_1

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 576
    :cond_1
    throw v0
.end method

.method protected onStarted()V
    .locals 5

    .line 536
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    const-wide/16 v1, 0x0

    .line 540
    iput-wide v1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 541
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onStarted()V

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 547
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 548
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 549
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onStopped()V

    .line 551
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplr2avp/Format;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v0, p10

    .line 994
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-wide v2, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v4

    if-nez v11, :cond_0

    .line 997
    iput-wide v7, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 1000
    :cond_0
    iget-wide v2, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v11, v0, v2

    if-eqz v11, :cond_1

    .line 1001
    iget-object v2, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 1002
    iput-wide v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 1005
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v2

    sub-long v11, v0, v2

    const/4 v13, 0x1

    if-eqz p12, :cond_2

    if-nez p13, :cond_2

    .line 1009
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V

    return v13

    .line 1014
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getPlaybackSpeed()F

    move-result v14

    float-to-double v14, v14

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getState()I

    move-result v4

    const/4 v5, 0x2

    const/16 v16, 0x0

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 1016
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double/2addr v0, v14

    double-to-long v0, v0

    if-eqz v4, :cond_4

    sub-long v14, v17, p3

    sub-long/2addr v0, v14

    .line 1027
    :cond_4
    iget-object v5, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v14, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplr2avp/video/PlaceholderSurface;

    if-ne v5, v14, :cond_6

    .line 1029
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1030
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V

    .line 1031
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v13

    :cond_5
    return v16

    .line 1037
    :cond_6
    iget-wide v14, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long v14, v17, v14

    .line 1039
    iget-boolean v5, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v5, :cond_7

    if-nez v4, :cond_8

    .line 1040
    iget-boolean v5, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v5, :cond_9

    goto :goto_1

    .line 1041
    :cond_7
    iget-boolean v5, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v5, :cond_9

    :cond_8
    :goto_1
    move-wide/from16 p10, v14

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    move-wide/from16 p10, v14

    const/4 v5, 0x0

    .line 1043
    :goto_2
    iget-wide v13, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v13, v17

    if-nez v15, :cond_b

    cmp-long v13, v7, v2

    if-ltz v13, :cond_b

    if-nez v5, :cond_a

    if-eqz v4, :cond_b

    move-wide/from16 v2, p10

    .line 1047
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    const/16 v13, 0x15

    if-eqz v2, :cond_d

    .line 1049
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 1050
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplr2avp/Format;)V

    .line 1051
    sget v4, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v4, v13, :cond_c

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v2

    .line 1052
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJJ)V

    goto :goto_4

    .line 1054
    :cond_c
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V

    .line 1056
    :goto_4
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    :goto_5
    const/4 v0, 0x1

    return v0

    :cond_d
    if-eqz v4, :cond_15

    .line 1060
    iget-wide v2, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_e

    goto/16 :goto_9

    .line 1065
    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v0, v0, v19

    add-long/2addr v0, v2

    .line 1069
    iget-object v4, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v14

    sub-long v0, v14, v2

    .line 1070
    div-long v3, v0, v19

    .line 1072
    iget-wide v0, v6, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v17

    if-eqz v2, :cond_f

    const/4 v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide/from16 v17, v3

    move-wide/from16 v3, p3

    move v13, v5

    move/from16 v5, p13

    .line 1073
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1074
    invoke-virtual {v6, v7, v8, v13}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result v0

    if-eqz v0, :cond_10

    return v16

    :cond_10
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p3

    move/from16 v5, p13

    .line 1076
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v13, :cond_11

    .line 1078
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_7

    .line 1080
    :cond_11
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V

    :goto_7
    move-wide/from16 v0, v17

    .line 1082
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto :goto_5

    :cond_12
    move-wide/from16 v0, v17

    .line 1086
    sget v2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_13

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 1089
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplr2avp/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v14

    .line 1090
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJJ)V

    .line 1091
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto/16 :goto_5

    :cond_13
    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    const-wide/16 v2, 0x2af8

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    const-wide/16 v2, 0x2710

    sub-long v3, v0, v2

    .line 1102
    :try_start_0
    div-long v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 1104
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    :cond_14
    :goto_8
    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 1108
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplr2avp/Format;)V

    .line 1109
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V

    .line 1110
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto/16 :goto_5

    :cond_15
    :goto_9
    return v16
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V
    .locals 2

    .line 1301
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1302
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1303
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1304
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    .line 1305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1306
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1307
    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJJ)V
    .locals 0

    .line 1323
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1324
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1325
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 1326
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    .line 1327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1328
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1329
    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected resetCodecStateForFlush()V
    .locals 1

    .line 742
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 743
    iput v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected setOutputSurfaceV23(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .locals 0

    .line 1451
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 749
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    .line 750
    iget-object p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .locals 0

    .line 1182
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .locals 0

    .line 1167
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 1

    .line 1196
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)Z
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    const-string/jumbo p3, "skipVideoBuffer"

    .line 1207
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1208
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1209
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    .line 1210
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 344
    iget-object v0, p2, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 345
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 346
    invoke-static {v1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 348
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 352
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 366
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    invoke-static {v2}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 369
    :cond_3
    invoke-static {p2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p1, 0x2

    .line 370
    invoke-static {p1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 374
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    .line 375
    invoke-virtual {v4, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v6, 0x1

    .line 379
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 380
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    .line 381
    invoke-virtual {v7, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v4, v7

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    :goto_2
    if-eqz v5, :cond_7

    const/4 v6, 0x4

    goto :goto_3

    :cond_7
    const/4 v6, 0x3

    .line 393
    :goto_3
    invoke-virtual {v4, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x10

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    .line 398
    :goto_4
    iget-boolean v4, v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x40

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    if-eqz v3, :cond_a

    const/16 v3, 0x80

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-eqz v5, :cond_b

    .line 407
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 412
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 414
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplr2avp/Format;)Ljava/util/List;

    move-result-object p1

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    .line 416
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 417
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 v1, 0x20

    .line 423
    :cond_b
    invoke-static {v6, v7, v1, v4, v3}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(IIIII)I

    move-result p1

    return p1
.end method

.method protected updateDroppedBufferCounters(II)V
    .locals 2

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    .line 1271
    iget-object p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1272
    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1273
    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1274
    iget-object p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v0, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1275
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1276
    iget p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_0

    .line 1277
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method protected updateVideoFrameProcessingOffsetCounters(J)V
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    .line 1288
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1289
    iget p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
