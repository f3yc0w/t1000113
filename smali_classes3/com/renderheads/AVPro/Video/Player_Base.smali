.class public abstract Lcom/renderheads/AVPro/Video/Player_Base;
.super Ljava/lang/Object;
.source "Player_Base.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renderheads/AVPro/Video/Player_Base$DownloadedVideoInfo;,
        Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;,
        Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;
    }
.end annotation


# static fields
.field public static Command_Close:I = 0x1

.field public static Command_Open:I = 0x0

.field public static final ErrorCode_DecodeFailed:I = 0xc8

.field public static final ErrorCode_LoadFailed:I = 0x64

.field public static final ErrorCode_None:I = 0x0

.field public static final Filtering_Bilinear:I = 0x1

.field public static final Filtering_Point:I = 0x0

.field public static final Format_Dash:I = 0x2

.field public static final Format_HLS:I = 0x1

.field public static final Format_SS:I = 0x3

.field public static final Format_Unknown:I = 0x0

.field public static VideoCommand_AudioVolumes:I = 0x4

.field public static VideoCommand_Pause:I = 0x1

.field public static VideoCommand_Play:I = 0x0

.field public static VideoCommand_PlaybackRate:I = 0x7

.field public static VideoCommand_Seek:I = 0x3

.field public static VideoCommand_SeekFast:I = 0x6

.field public static VideoCommand_SetLooping:I = 0x5

.field public static VideoCommand_Stop:I = 0x2

.field public static final VideoState_Buffering:I = 0x4

.field public static final VideoState_Finished:I = 0x8

.field public static final VideoState_Idle:I = 0x0

.field public static final VideoState_Opening:I = 0x1

.field public static final VideoState_Paused:I = 0x7

.field public static final VideoState_Playing:I = 0x5

.field public static final VideoState_Prepared:I = 0x3

.field public static final VideoState_Preparing:I = 0x2

.field public static final VideoState_Stopped:I = 0x6

.field public static final VideoState_Unknown:I = -0x1

.field public static s_bCompressedWatermarkDataGood:Z = false


# instance fields
.field public final Audio_FacebookAudio360:I

.field public final Audio_System:I

.field public final Audio_Unity:I

.field public final _mutex:Ljava/util/concurrent/locks/ReentrantLock;

.field public m_AudioMuted:Z

.field public m_AudioPan:F

.field public m_AudioVolume:F

.field public m_CommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;",
            ">;"
        }
    .end annotation
.end field

.field public m_Context:Landroid/content/Context;

.field public m_DisplayRate_FrameRate:F

.field public m_DisplayRate_LastSystemTimeMS:J

.field public m_DisplayRate_NumberFrames:J

.field public m_DurationMs:J

.field public m_ExtractWaitTimeout:I

.field public m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_FrameArrivalThreadID:J

.field public m_FrameCount:I

.field public m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

.field public m_GlRender_Watermark:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

.field public m_Height:I

.field public m_KeyServerAuthToken:Ljava/lang/String;

.field public m_OpenCloseCommandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;",
            ">;"
        }
    .end annotation
.end field

.field public m_OverrideDecryptionKey:Ljava/lang/String;

.field public m_Random:Ljava/util/Random;

.field public m_SourceAudioId:Ljava/lang/String;

.field public m_SourceVideoId:Ljava/lang/String;

.field public m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public m_TextureTimeStamp:J

.field public m_VideoState:I

.field public m_WatermarkPosition:Landroid/graphics/Point;

.field public m_WatermarkPositionRunnable:Ljava/lang/Runnable;

.field public m_WatermarkScale:F

.field public m_WatermarkSizeHandler:Landroid/os/Handler;

.field public m_Width:I

.field public m_aGetBufferedTimeRangesResult:[D

.field public m_aGetSeekableTimeRangesResult:[D

.field public m_aTextureTransform:[F

.field private m_acDownloadedVideosInfo:[Lcom/renderheads/AVPro/Video/Player_Base$DownloadedVideoInfo;

.field public m_afCachedStatusReturn:[F

.field private m_bAudioTracksDirty:Z

.field public m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bCanUseGLBindVertexArray:Z

.field public m_bDeinitialiseFlagged:Z

.field public m_bDeinitialised:Z

.field public m_bIsBuffering:Z

.field public m_bIsLive:Z

.field public m_bIsSeeking:Z

.field public m_bIsStream:Z

.field public m_bLooping:Z

.field public m_bPlaybackRateSetPaused:Z

.field public m_bShowPosterFrame:Z

.field public m_bSourceHasAudio:Z

.field public m_bSourceHasSubtitles:Z

.field public m_bSourceHasTimedText:Z

.field public m_bSourceHasVideo:Z

.field private m_bTextCuesDirty:Z

.field public m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

.field private m_bTextTracksDirty:Z

.field public m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bUltraBuild:Z

.field public m_bUseFastOesPath:Z

.field private m_bVideoTracksDirty:Z

.field public m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_bWatermarkDataGood:Z

.field public m_bWatermarked:Z

.field public m_fBufferingProgressPercent:F

.field public m_fPlaybackRate:F

.field public m_fSourceVideoFrameRate:F

.field public m_iAudioSubsystem:I

.field public m_iCurrentAudioTrackIndex:I

.field public m_iCurrentAudioTrack_NumChannels:I

.field public m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m_iCurrentTextTrackIndex:I

.field public m_iCurrentVideoTrackIndex:I

.field public m_iDefaultAudioTrackIndex:I

.field public m_iDefaultTextTrackIndex:I

.field public m_iDefaultVideoTrackIndex:I

.field public m_iLastError:I

.field public m_iNumberAudioTracks:I

.field public m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m_iNumberTextTracks:I

.field public m_iNumberVideoTracks:I

.field public m_iOpenGLVersion:I

.field public m_iPlayerIndex:I

.field public m_iSourceAudioBitrate:I

.field public m_iSourceVideoBitrate:I

.field public m_iSourceVideoStereoMode:I

.field public m_iTextureFiltering:I


# direct methods
.method public constructor <init>(IZLjava/util/Random;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerIndex",
            "watermarked",
            "random",
            "bUltraBuild"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->Audio_System:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->Audio_Unity:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->Audio_FacebookAudio360:I

    .line 27
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    .line 32
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 151
    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aTextureTransform:[F

    const/4 v2, 0x0

    .line 153
    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    .line 154
    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OverrideDecryptionKey:Ljava/lang/String;

    .line 181
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    new-array v2, v1, [F

    .line 185
    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    new-array v2, v1, [D

    .line 187
    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetSeekableTimeRangesResult:[D

    new-array v1, v1, [D

    .line 188
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetBufferedTimeRangesResult:[D

    .line 286
    iput-boolean p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    .line 287
    iput-boolean p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-eqz p2, :cond_0

    .line 292
    sget-boolean p2, Lcom/renderheads/AVPro/Video/ImageWM;->s_bImagePrepared:Z

    if-nez p2, :cond_0

    .line 294
    invoke-static {}, Lcom/renderheads/AVPro/Video/ImageWM;->PrepareImage()Z

    move-result p2

    sput-boolean p2, Lcom/renderheads/AVPro/Video/Player_Base;->s_bCompressedWatermarkDataGood:Z

    .line 298
    :cond_0
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarkDataGood:Z

    .line 300
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iPlayerIndex:I

    .line 302
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUseFastOesPath:Z

    .line 303
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bShowPosterFrame:Z

    .line 305
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iTextureFiltering:I

    .line 307
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    .line 309
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    .line 310
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    const-wide/16 p1, 0x0

    .line 311
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    .line 312
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    const/high16 p4, 0x3f800000    # 1.0f

    .line 313
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    .line 315
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    .line 317
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    .line 318
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsLive:Z

    .line 319
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 320
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 322
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioVolume:F

    const/4 p4, 0x0

    .line 323
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioPan:F

    .line 324
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioMuted:Z

    .line 326
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fBufferingProgressPercent:F

    .line 328
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 331
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_TextureTimeStamp:J

    .line 333
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    .line 335
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 337
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 338
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 340
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 341
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 347
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 349
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 350
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    .line 351
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    .line 353
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    .line 355
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    .line 356
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    .line 357
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultTextTrackIndex:I

    .line 359
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 360
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 361
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 362
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoBitrate:I

    .line 363
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoStereoMode:I

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceVideoId:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty:Z

    .line 366
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 369
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 370
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty:Z

    .line 373
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 376
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty:Z

    .line 377
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    monitor-enter v1

    .line 379
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    .line 380
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty:Z

    .line 382
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 384
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasTimedText:Z

    .line 385
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasSubtitles:Z

    .line 387
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_FrameRate:F

    .line 388
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_NumberFrames:J

    .line 389
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_LastSystemTimeMS:J

    .line 391
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialiseFlagged:Z

    .line 392
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialised:Z

    .line 394
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    .line 396
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x32

    .line 397
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_ExtractWaitTimeout:I

    const-wide/16 p1, -0x1

    .line 398
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameArrivalThreadID:J

    if-eqz p3, :cond_1

    .line 400
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Random:Ljava/util/Random;

    return-void

    :catchall_0
    move-exception p1

    .line 401
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ChangeWatermarkPosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    const/4 v3, 0x0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkScale:F

    return-void
.end method

.method private CreateAndBindSinkTexture(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glTextureHandle"
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->BindSurfaceToPlayer()V

    return-void
.end method

.method private RemoveDuplicateCommand(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchCommand"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;

    .line 6
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_command:I

    if-ne v2, p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private UpdateCommandQueue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_8

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 7
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;

    .line 9
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_command:I

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Play:I

    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_play()V

    goto :goto_0

    .line 13
    :cond_1
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Pause:I

    if-ne v1, v2, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_pause()V

    goto :goto_0

    .line 17
    :cond_2
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Stop:I

    if-ne v1, v2, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_stop()V

    goto :goto_0

    .line 21
    :cond_3
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Seek:I

    if-ne v1, v2, :cond_4

    .line 23
    iget-wide v0, v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_longValue:J

    invoke-virtual {p0, v0, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->_seek(J)V

    goto :goto_0

    .line 25
    :cond_4
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SeekFast:I

    if-ne v1, v2, :cond_5

    .line 27
    iget-wide v0, v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_longValue:J

    invoke-virtual {p0, v0, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->_seekFast(J)V

    goto :goto_0

    .line 29
    :cond_5
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    if-ne v1, v2, :cond_6

    .line 31
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateAudioVolumes()V

    goto :goto_0

    .line 33
    :cond_6
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SetLooping:I

    if-ne v1, v2, :cond_7

    .line 35
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateLooping()V

    goto :goto_0

    .line 37
    :cond_7
    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_PlaybackRate:I

    if-ne v1, v2, :cond_0

    .line 39
    iget v0, v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_floatValue:F

    invoke-virtual {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->_setPlaybackRate(F)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private UpdateDisplayFrameRate(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iNumFrames"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_LastSystemTimeMS:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 4
    iget-wide v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_NumberFrames:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_NumberFrames:J

    const-wide/16 v6, 0x1f4

    cmp-long p1, v2, v6

    if-ltz p1, :cond_0

    long-to-float p1, v4

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float v2, v2, v3

    div-float/2addr p1, v2

    .line 8
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_FrameRate:F

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_NumberFrames:J

    .line 11
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_LastSystemTimeMS:J

    :cond_0
    return-void
.end method

.method private UpdateOpenCloseCommandQueue()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    if-ne v2, v3, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_CloseVideo()V

    goto :goto_0

    .line 18
    :cond_0
    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Open:I

    if-ne v2, v3, :cond_1

    .line 23
    iget-object v5, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_FilePath:Ljava/lang/String;

    iget-wide v6, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_FileOffset:J

    iget-object v8, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_Header:Ljava/lang/String;

    iget v9, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_ForcedFileFormat:I

    iget v10, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_AudioSubsystem:I

    iget v11, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_Audio360Channels:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/renderheads/AVPro/Video/Player_Base;->_OpenVideoFromFile(Ljava/lang/String;JLjava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 32
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private UpdateTextureTransform()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUseFastOesPath:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aTextureTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private _CloseVideo()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    if-ne v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    .line 18
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    .line 20
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    const-wide/16 v3, 0x0

    .line 21
    iput-wide v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    .line 24
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 25
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    .line 26
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    .line 28
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    .line 30
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    .line 31
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    .line 32
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultTextTrackIndex:I

    .line 34
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 35
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 37
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoBitrate:I

    .line 38
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoStereoMode:I

    const-string v5, ""

    .line 39
    iput-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceVideoId:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty:Z

    .line 41
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 44
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 45
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    const-string v5, ""

    .line 46
    iput-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty:Z

    .line 48
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 51
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty:Z

    .line 52
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    monitor-enter v5

    .line 54
    :try_start_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    .line 55
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty:Z

    .line 57
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasTimedText:Z

    .line 60
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasSubtitles:Z

    .line 62
    iput-wide v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_TextureTimeStamp:J

    .line 63
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    .line 65
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fBufferingProgressPercent:F

    .line 67
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    .line 75
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->CloseVideoOnPlayer()V

    .line 76
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    return-void

    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic access$000(Lcom/renderheads/AVPro/Video/Player_Base;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->ChangeWatermarkPosition()V

    return-void
.end method


# virtual methods
.method public abstract AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "minimumRequiredBitRate",
            "minimumRequiredResolutionWidth",
            "minimumRequiredResolutionHeight"
        }
    .end annotation
.end method

.method public abstract AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DIIDII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "minimumRequiredBitRate",
            "minimumRequiredResolutionWidth",
            "minimumRequiredResolutionHeight",
            "maximumRequiredBitRate",
            "maximumRequiredResolutionWidth",
            "maximumRequiredResolutionHeight"
        }
    .end annotation
.end method

.method public AddVideoCommandFloat(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "floatData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;

    invoke-direct {v1, p0}, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;)V

    .line 5
    iput p1, v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_command:I

    .line 6
    iput p2, v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_floatValue:F

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateCommandQueue()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public AddVideoCommandInt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "intData"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;

    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;)V

    .line 5
    iput p1, v0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_command:I

    .line 8
    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateCommandQueue()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public AddVideoCommandLong(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "longData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;

    invoke-direct {v1, p0}, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;)V

    .line 5
    iput p1, v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_command:I

    .line 6
    iput-wide p2, v1, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_longValue:J

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateCommandQueue()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public abstract BindSurfaceToPlayer()V
.end method

.method public abstract CanPlay()Z
.end method

.method public abstract CancelDownloadOfMediaToCache(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public CloseVideo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    .line 6
    iget v2, v2, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    iget v1, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    if-ne v1, v2, :cond_1

    .line 15
    monitor-exit v0

    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    iget v1, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Open:I

    if-ne v1, v2, :cond_2

    .line 22
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 23
    monitor-exit v0

    return-void

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    iget v1, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    iget v1, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Open:I

    if-ne v1, v2, :cond_3

    .line 31
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 32
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    invoke-direct {v2, p0, v3}, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v0

    return-void

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 40
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 41
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_CloseVideo()V

    goto :goto_1

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Close:I

    invoke-direct {v2, p0, v3}, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract CloseVideoOnPlayer()V
.end method

.method public Deinitialise()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_CloseVideo()V

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_CommandQueue:Ljava/util/Queue;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->DeinitializeVideoPlayer()V

    return-void
.end method

.method public DeinitialiseRender()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->Destroy()V

    .line 4
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Watermark:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->Destroy()V

    .line 10
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Watermark:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 16
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 17
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 20
    :cond_2
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPosition:Landroid/graphics/Point;

    .line 22
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkSizeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    :cond_3
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkSizeHandler:Landroid/os/Handler;

    .line 27
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialised:Z

    return-void
.end method

.method public abstract DeinitializeVideoPlayer()V
.end method

.method public abstract GetAudioBufferedSampleCount()I
.end method

.method public GetAudioPan()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioPan:F

    return v0
.end method

.method public abstract GetAudioTrackInfo(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public GetAudioTracksDirty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty:Z

    return v0
.end method

.method public abstract GetBufferedTimeRanges()[D
.end method

.method public abstract GetBufferingProgressPercent()F
.end method

.method public abstract GetCachedMediaStatus(Ljava/lang/String;)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public abstract GetCurrentAbsoluteTimestamp()D
.end method

.method public GetCurrentAudioTrackBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    return v0
.end method

.method public GetCurrentAudioTrackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    return-object v0
.end method

.method public GetCurrentAudioTrackIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    return v0
.end method

.method public GetCurrentAudioTrackNumChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    return v0
.end method

.method public abstract GetCurrentTextCue()Ljava/lang/String;
.end method

.method public GetCurrentTextTrackIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    return v0
.end method

.method public abstract GetCurrentTimeS()D
.end method

.method public GetCurrentVideoTrackBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoBitrate:I

    return v0
.end method

.method public GetCurrentVideoTrackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public GetCurrentVideoTrackIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    return v0
.end method

.method public GetCurrentVideoTrackStereoMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoStereoMode:I

    return v0
.end method

.method public GetDeinitialised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialised:Z

    return v0
.end method

.method public GetDisplayRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_FrameRate:F

    return v0
.end method

.method public GetDurationS()D
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsLive:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v0, v0, v2

    :goto_0
    return-wide v0
.end method

.method public GetEstimatedBandwidthUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public GetFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    return v0
.end method

.method public GetHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    return v0
.end method

.method public GetLastErrorCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    return v0
.end method

.method public GetNumberAudioTracks()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    return v0
.end method

.method public GetNumberTextTracks()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    return v0
.end method

.method public GetNumberVideoTracks()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    return v0
.end method

.method public GetPlaybackRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    return v0
.end method

.method public GetPlayerIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iPlayerIndex:I

    return v0
.end method

.method public abstract GetSeekableTimeRanges()[D
.end method

.method public GetSourceVideoFrameRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    return v0
.end method

.method public GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerPairsString",
            "keyServerAuthToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "[\\r\\n]+"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    const/4 v5, 0x2

    const-string v6, ":"

    .line 10
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 11
    aget-object v5, v4, v2

    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    aget-object v4, v4, v7

    :goto_1
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v1, :cond_2

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_2
    const-string p1, "Authorization"

    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    :cond_4
    return-object v1
.end method

.method public GetTextCueDirty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty:Z

    return v0
.end method

.method public abstract GetTextTrackInfo(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public GetTextTracksDirty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty:Z

    return v0
.end method

.method public GetTextureHandle()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->GetGlTextureHandle(Z)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public GetTextureTimeStamp()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_TextureTimeStamp:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public GetTextureTransform()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aTextureTransform:[F

    return-object v0
.end method

.method public abstract GetVideoTrackInfo(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public GetVideoTracksDirty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty:Z

    return v0
.end method

.method public GetVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioVolume:F

    return v0
.end method

.method public GetWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    return v0
.end method

.method public abstract GrabAudio(II)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleCount",
            "channelCount"
        }
    .end annotation
.end method

.method public HasAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    return v0
.end method

.method public HasMetaData()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetDurationS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public HasSubtitles()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasSubtitles:Z

    return v0
.end method

.method public HasTimedText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasTimedText:Z

    return v0
.end method

.method public HasVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    return v0
.end method

.method public Initialise(Landroid/content/Context;ZZIIIZIIIIIIII)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "useOesRenderingPath",
            "preferSoftware",
            "audioSubsystem",
            "audio360Channels",
            "iUnityAudioSampleRate",
            "bForceStartHighestBitrate",
            "iMinBufferMs",
            "iMaxBufferMs",
            "iBufferForPlaybackMs",
            "iBufferForPlaybackAfterRebufferMs",
            "peakBitrateBps",
            "maxWidth",
            "maxHeight",
            "iTextureFiltering"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p1

    .line 1
    iget-boolean v1, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    if-eqz v1, :cond_1

    .line 4
    sget-boolean v1, Lcom/renderheads/AVPro/Video/Player_Base;->s_bCompressedWatermarkDataGood:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 10
    :cond_0
    invoke-static {}, Lcom/renderheads/AVPro/Video/ImageWM;->CheckWatermarkData()Z

    move-result v1

    iput-boolean v1, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarkDataGood:Z

    if-nez v1, :cond_1

    return v2

    .line 19
    :cond_1
    iput-object v0, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    .line 20
    check-cast v0, Landroid/app/Activity;

    .line 22
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPosition:Landroid/graphics/Point;

    .line 24
    iget-boolean v1, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    if-eqz v1, :cond_2

    .line 27
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->ChangeWatermarkPosition()V

    .line 32
    new-instance v1, Lcom/renderheads/AVPro/Video/Player_Base$1;

    invoke-direct {v1, p0}, Lcom/renderheads/AVPro/Video/Player_Base$1;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    move/from16 v0, p15

    .line 53
    iput v0, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_iTextureFiltering:I

    .line 55
    iget-boolean v0, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_bShowPosterFrame:Z

    move/from16 v1, p2

    invoke-virtual {p0, v1, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->SetPlayerOptions(ZZ)V

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    .line 57
    invoke-virtual/range {v0 .. v12}, Lcom/renderheads/AVPro/Video/Player_Base;->InitialisePlayer(ZIIIZIIIIIII)Z

    move-result v0

    return v0
.end method

.method public abstract InitialisePlayer(ZIIIZIIIIIII)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preferSoftware",
            "audioSubsystem",
            "audio360Channels",
            "iUnityAudioSampleRate",
            "bForceStartHighestBitrate",
            "iMinBufferMs",
            "iMaxBufferMs",
            "iBufferForPlaybackMs",
            "iBufferForPlaybackAfterRebufferMs",
            "peakBitrateBps",
            "maxWidth",
            "maxHeight"
        }
    .end annotation
.end method

.method public IsBuffering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    return v0
.end method

.method public abstract IsFinished()Z
.end method

.method public IsLooping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    return v0
.end method

.method public abstract IsMediaCachingSupported()Z
.end method

.method public IsMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioMuted:Z

    return v0
.end method

.method public abstract IsPaused()Z
.end method

.method public abstract IsPlaying()Z
.end method

.method public abstract IsSeeking()Z
.end method

.method public MuteAudio(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioMuted:Z

    .line 2
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateAudioVolumes()V

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 9
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    :goto_0
    return-void
.end method

.method public OpenVideoFromFile(Ljava/lang/String;JLjava/lang/String;III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileOffset",
            "httpHeaderJson",
            "forcedFileFormat",
            "audioSubsystem",
            "audio360Channels"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Open:I

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    invoke-virtual/range {p0 .. p7}, Lcom/renderheads/AVPro/Video/Player_Base;->_OpenVideoFromFile(Ljava/lang/String;JLjava/lang/String;III)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 24
    new-instance v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;

    sget v3, Lcom/renderheads/AVPro/Video/Player_Base;->Command_Open:I

    invoke-direct {v1, p0, v3}, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;-><init>(Lcom/renderheads/AVPro/Video/Player_Base;I)V

    .line 25
    iput-object p1, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_FilePath:Ljava/lang/String;

    .line 26
    iput-wide p2, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_FileOffset:J

    .line 27
    iput-object p4, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_Header:Ljava/lang/String;

    .line 28
    iput p5, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_ForcedFileFormat:I

    .line 29
    iput p6, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_AudioSubsystem:I

    .line 30
    iput p7, v1, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_Audio360Channels:I

    .line 32
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;III)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileOffset",
            "httpHeaderJson",
            "forcedFileFormat",
            "audioSubsystem",
            "audio360Channels"
        }
    .end annotation
.end method

.method public Pause()V
    .locals 2

    .line 1
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Stop:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 2
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Play:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 3
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Pause:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 4
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Pause:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    return-void
.end method

.method public abstract PauseDownloadOfMediaToCache(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public Play()V
    .locals 2

    .line 1
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Stop:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 2
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Play:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 3
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Pause:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 4
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Play:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    return-void
.end method

.method public PlayerRenderUpdate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateOpenCloseCommandQueue()V

    return-void
.end method

.method public PlayerRendererSetup()V
    .locals 0

    return-void
.end method

.method public abstract RemoveMediaFromCache(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public Render()Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialiseFlagged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/renderheads/AVPro/Video/Player_Base;->s_bCompressedWatermarkDataGood:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarkDataGood:Z

    if-eqz v0, :cond_b

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->DestroyRenderTarget()V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    const/4 v0, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 49
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-eqz v2, :cond_4

    .line 51
    invoke-virtual {v2}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->DestroyRenderTarget()V

    .line 53
    iget-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUseFastOesPath:Z

    if-nez v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    iget v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    iget v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    invoke-virtual {v2, v7, v8}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateRenderTarget(II)V

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-lt v2, v5, :cond_5

    .line 69
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    .line 74
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 86
    :cond_5
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 104
    iget-object v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_a

    if-lez v2, :cond_a

    iget v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    if-lez v7, :cond_6

    iget-boolean v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    if-nez v7, :cond_7

    :cond_6
    iget-boolean v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    if-eqz v7, :cond_a

    .line 111
    :cond_7
    iget-boolean v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUseFastOesPath:Z

    if-eqz v7, :cond_8

    .line 114
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_0

    .line 121
    :cond_8
    iget-object v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    invoke-virtual {v7}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->StartRender()V

    .line 124
    iget-object v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    iget-object v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->Blit(Landroid/graphics/SurfaceTexture;[F)J

    .line 128
    iget-boolean v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    if-eqz v7, :cond_9

    const/16 v7, 0x10

    new-array v7, v7, [F

    .line 131
    iget v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkScale:F

    aput v8, v7, v1

    const/4 v10, 0x0

    aput v10, v7, v6

    const/4 v11, 0x2

    aput v10, v7, v11

    aput v10, v7, v5

    aput v10, v7, v3

    neg-float v3, v8

    aput v3, v7, v4

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v10, v7, v0

    const/16 v0, 0x8

    aput v10, v7, v0

    const/16 v0, 0x9

    aput v10, v7, v0

    const/16 v0, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v0

    const/16 v0, 0xb

    aput v10, v7, v0

    const/16 v0, 0xc

    .line 143
    iget-object v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPosition:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v7, v0

    const/16 v0, 0xd

    .line 144
    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    aput v4, v7, v0

    const/16 v0, 0xe

    aput v10, v7, v0

    const/16 v0, 0xf

    aput v3, v7, v0

    .line 148
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Watermark:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    invoke-virtual {v0, v9, v7}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->Blit(Landroid/graphics/SurfaceTexture;[F)J

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->EndRender()V

    .line 161
    :goto_0
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    .line 162
    invoke-direct {p0, v2}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateDisplayFrameRate(I)V

    .line 165
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateTextureTransform()V

    .line 171
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateAPITextureTimestampNS()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_TextureTimeStamp:J

    .line 174
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    .line 186
    :cond_a
    monitor-exit p0

    :cond_b
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RendererSetup(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glesVersion"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialiseFlagged:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iOpenGLVersion:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bCanUseGLBindVertexArray:Z

    .line 10
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-nez p1, :cond_2

    .line 13
    new-instance v2, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    invoke-direct {v2}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;-><init>()V

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    .line 14
    iget-boolean v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bCanUseGLBindVertexArray:Z

    iget-boolean v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUseFastOesPath:Z

    iget v9, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iTextureFiltering:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->Setup(II[BZZZI)V

    .line 15
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Video:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    invoke-virtual {p1, v1}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->GetGlTextureHandle(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_Base;->CreateAndBindSinkTexture(I)V

    .line 18
    :cond_2
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Watermark:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    if-nez p1, :cond_3

    .line 19
    new-instance v0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    invoke-direct {v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_GlRender_Watermark:Lcom/renderheads/AVPro/Video/Renderer_OpenGL;

    .line 20
    sget-object v3, Lcom/renderheads/AVPro/Video/ImageWM;->s_aImageData:[B

    iget-boolean v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bCanUseGLBindVertexArray:Z

    iget v7, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iTextureFiltering:I

    const/16 v1, 0xfe

    const/16 v2, 0x8d

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->Setup(II[BZZZI)V

    :cond_3
    return-void
.end method

.method public abstract ResumeDownloadOfMediaToCache(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public Seek(D)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeSeconds"
        }
    .end annotation

    .line 1
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Seek:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 2
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SeekFast:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 3
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Seek:I

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandLong(IJ)V

    return-void
.end method

.method public SeekFast(D)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeSeconds"
        }
    .end annotation

    .line 1
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Seek:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 2
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SeekFast:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 3
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SeekFast:I

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandLong(IJ)V

    return-void
.end method

.method public SetAudioPan(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 4
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioPan:F

    .line 6
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateAudioVolumes()V

    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 13
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    :goto_0
    return-void
.end method

.method public abstract SetAudioTrack(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation
.end method

.method public SetDeinitialiseFlagged()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialiseFlagged:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bDeinitialised:Z

    return-void
.end method

.method public abstract SetFocusEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract SetFocusProps(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offFocusLevel",
            "widthDegrees"
        }
    .end annotation
.end method

.method public abstract SetFocusRotation(FFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation
.end method

.method public abstract SetHeadRotation(FFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation
.end method

.method public SetKeyServerAuthToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    return-void
.end method

.method public abstract SetLooping(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bLooping"
        }
    .end annotation
.end method

.method public SetOverrideDecryptionKey([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OverrideDecryptionKey:Ljava/lang/String;

    return-void
.end method

.method public SetPlaybackRate(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rate"
        }
    .end annotation

    .line 1
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_PlaybackRate:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 2
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_PlaybackRate:I

    invoke-virtual {p0, v0, p1}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandFloat(IF)V

    return-void
.end method

.method public SetPlayerOptions(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useFastOesPath",
            "showPosterFrame"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bWatermarked:Z

    if-nez v0, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUseFastOesPath:Z

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bShowPosterFrame:Z

    return-void
.end method

.method public abstract SetPositionTrackingEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract SetPreferredVideoResolutionAndBitrate(III)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iNewMaxWidth",
            "iNewMaxHeight",
            "iNewPeakBitrateBps"
        }
    .end annotation
.end method

.method public SetShowPosterFrame(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bShow"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bShowPosterFrame:Z

    return-void
.end method

.method public abstract SetTextTrack(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation
.end method

.method public abstract SetVideoTrack(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation
.end method

.method public SetVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 4
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioVolume:F

    .line 5
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateAudioVolumes()V

    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 12
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_AudioVolumes:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    :goto_0
    return-void
.end method

.method public StartExtractFrame()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameArrivalThreadID:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1
.end method

.method public Stop()V
    .locals 2

    .line 1
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Stop:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 2
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Play:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 3
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Pause:I

    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RemoveDuplicateCommand(I)V

    .line 4
    sget v0, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_Stop:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    return-void
.end method

.method public Update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty:Z

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty:Z

    .line 8
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty:Z

    .line 9
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty:Z

    .line 12
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->PlayerRenderUpdate()V

    .line 15
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->UpdateCommandQueue()V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract UpdateAPITextureTimestampNS()J
.end method

.method public abstract UpdateAudioVolumes()V
.end method

.method public abstract UpdateLooping()V
.end method

.method public abstract UpdateVideoMetadata()V
.end method

.method public WaitForExtract()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 1
    iget v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_ExtractWaitTimeout:I

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v3, 0xa

    .line 5
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 13
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public WaitForNewFrame()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    .line 3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int v4, v0, v1

    .line 5
    iget v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    if-lt v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_ExtractWaitTimeout:I

    if-ge v3, v5, :cond_0

    .line 7
    iget v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iPlayerIndex:I

    invoke-static {v3}, Lcom/renderheads/AVPro/Video/Manager;->RenderPlayer(I)V

    const-wide/16 v5, 0xa

    .line 11
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    .line 19
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public _OpenVideoFromFile(Ljava/lang/String;JLjava/lang/String;III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileOffset",
            "httpHeaderJson",
            "forcedFileFormat",
            "audioSubsystem",
            "audio360Channels"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->_CloseVideo()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 8
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    .line 12
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 13
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    .line 15
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    .line 17
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    .line 18
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    .line 19
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultTextTrackIndex:I

    .line 21
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 22
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 23
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 24
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 25
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty:Z

    .line 26
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty:Z

    .line 28
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 30
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty:Z

    .line 31
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    monitor-enter v2

    .line 33
    :try_start_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty:Z

    .line 36
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasTimedText:Z

    .line 38
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasSubtitles:Z

    const/4 v2, 0x0

    .line 39
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    const-wide/16 v3, 0x0

    .line 41
    iput-wide v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    .line 42
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameCount:I

    .line 44
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    .line 45
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsLive:Z

    .line 46
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 47
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 49
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fBufferingProgressPercent:F

    .line 54
    invoke-virtual/range {p0 .. p7}, Lcom/renderheads/AVPro/Video/Player_Base;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;III)Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract _pause()V
.end method

.method public abstract _play()V
.end method

.method public abstract _seek(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMs"
        }
    .end annotation
.end method

.method public abstract _seekFast(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMs"
        }
    .end annotation
.end method

.method public abstract _setPlaybackRate(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rate"
        }
    .end annotation
.end method

.method public abstract _stop()V
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_FrameArrivalThreadID:J

    .line 4
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
