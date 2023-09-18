.class public final Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Api31;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$OutputMode;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$OffloadMode;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;,
        Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_RETRY_DURATION_MS:I = 0x64

.field private static final AUDIO_TRACK_SMALLER_BUFFER_RETRY_SIZE:I = 0xf4240

.field public static final DEFAULT_PLAYBACK_SPEED:F = 1.0f

.field private static final DEFAULT_SKIP_SILENCE:Z = false

.field private static final ERROR_NATIVE_DEAD_OBJECT:I = -0x20

.field public static final MAX_PITCH:F = 8.0f

.field public static final MAX_PLAYBACK_SPEED:F = 8.0f

.field public static final MIN_PITCH:F = 0.1f

.field public static final MIN_PLAYBACK_SPEED:F = 0.1f

.field public static final OFFLOAD_MODE_DISABLED:I = 0x0

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED:I = 0x3

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED:I = 0x2

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED:I = 0x1

.field public static final OUTPUT_MODE_OFFLOAD:I = 0x1

.field public static final OUTPUT_MODE_PASSTHROUGH:I = 0x2

.field public static final OUTPUT_MODE_PCM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultAudioSink"

.field public static failOnSpuriousAudioTimestamp:Z = false


# instance fields
.field private activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

.field private afterDrainParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

.field private audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

.field private final audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

.field private final audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

.field private audioSessionId:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private audioTrackPlaybackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

.field private final audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

.field private auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private bytesUntilNextAvSync:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;

.field private configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

.field private drainingAudioProcessorIndex:I

.field private final enableAudioTrackPlaybackParams:Z

.field private final enableFloatOutput:Z

.field private externalAudioSessionIdProvided:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private final initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputBufferAccessUnitCount:I

.field private isWaitingForOffloadEndOfStreamHandled:Z

.field private lastFeedElapsedRealtimeMs:J

.field private listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

.field private mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

.field private final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;",
            ">;"
        }
    .end annotation
.end field

.field private offloadDisabledUntilNextConfiguration:Z

.field private final offloadMode:I

.field private offloadStreamEventCallbackV29:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

.field private playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private startMediaTimeUs:J

.field private startMediaTimeUsNeedsInit:Z

.field private startMediaTimeUsNeedsSync:Z

.field private stoppedAudioTrack:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

.field private final toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

.field private final trimmingAudioProcessor:Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private final writeExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;ZZI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 594
    invoke-static {p1, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 595
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioProcessorChain(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 596
    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 597
    invoke-virtual {p1, p4}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 598
    invoke-virtual {p1, p5}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setOffloadMode(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 592
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 543
    invoke-static {p1, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 544
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 541
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 566
    invoke-static {p1, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 567
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 568
    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 564
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)V
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.audioProcessorChain"
        }
    .end annotation

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->access$100(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 604
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->access$200(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    .line 605
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->access$300(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableFloatOutput:Z

    .line 606
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->access$400(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    .line 607
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_2

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->access$500(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadMode:I

    .line 608
    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 609
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 610
    new-instance p1, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    new-instance v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    invoke-direct {p1, v1}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;-><init>(Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker$Listener;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    .line 611
    new-instance p1, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;

    .line 612
    new-instance v1, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;

    .line 613
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;

    .line 614
    new-instance v6, Lcom/google/android/exoplr2avp/audio/ResamplingAudioProcessor;

    invoke-direct {v6}, Lcom/google/android/exoplr2avp/audio/ResamplingAudioProcessor;-><init>()V

    aput-object v6, v5, v3

    aput-object p1, v5, v2

    const/4 p1, 0x2

    aput-object v1, v5, p1

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 619
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;->getAudioProcessors()[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v3, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 620
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    new-array p1, v2, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 621
    new-instance v0, Lcom/google/android/exoplr2avp/audio/FloatResamplingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/FloatResamplingAudioProcessor;-><init>()V

    aput-object v0, p1, v3

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 622
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->volume:F

    .line 623
    sget-object p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 624
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioSessionId:I

    .line 625
    new-instance p1, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v3, v0}, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;-><init>(IF)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    .line 626
    new-instance p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v5, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJLcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    .line 632
    sget-object p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    const/4 p1, -0x1

    .line 633
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    new-array p1, v3, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 634
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    new-array p1, v3, [Ljava/nio/ByteBuffer;

    .line 635
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 636
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 637
    new-instance p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    const-wide/16 v0, 0x64

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 639
    new-instance p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playing:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$1600(III)Landroid/media/AudioFormat;
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .locals 11

    .line 1580
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    .line 1582
    :cond_0
    sget-object v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    :goto_0
    move-object v2, v0

    .line 1584
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getSkipSilenceEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;->applySkipSilenceEnabled(Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1587
    :goto_1
    iget-object v9, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide/16 v3, 0x0

    .line 1591
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 1592
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, v10

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJLcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    .line 1587
    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1593
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 1594
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    if-eqz p1, :cond_2

    .line 1595
    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onSkipSilenceEnabledChanged(Z)V

    :cond_2
    return-void
.end method

.method private applyMediaPositionParameters(J)J
    .locals 4

    .line 1631
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1632
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long v0, p1, v0

    .line 1639
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    sget-object v3, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1640
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr p1, v0

    return-wide p1

    .line 1641
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1642
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    .line 1643
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide p1

    .line 1644
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v0, p1

    return-wide v0

    .line 1654
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1655
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1656
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long/2addr v1, p1

    .line 1658
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    .line 1659
    invoke-static {v1, v2, p1}, Lcom/google/android/exoplr2avp/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide p1

    .line 1662
    iget-wide v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private applySkipping(J)J
    .locals 3

    .line 1667
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    .line 1668
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private buildAudioTrack(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1062
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iget v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioSessionId:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLcom/google/android/exoplr2avp/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1064
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1067
    :cond_0
    throw p1
.end method

.method private buildAudioTrackWithRetry()Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->buildAudioTrack(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1044
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v1, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const v2, 0xf4240

    if-le v1, v2, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 1046
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->copyWithBufferSize(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    move-result-object v1

    .line 1048
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->buildAudioTrack(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v2

    .line 1049
    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;
    :try_end_1
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    .line 1052
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1055
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 1056
    throw v0
.end method

.method private drainToEndOfStream()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1239
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1240
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1243
    :goto_1
    iget v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    iget-object v5, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 1244
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 1246
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->queueEndOfStream()V

    .line 1248
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1249
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 1253
    :cond_2
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    goto :goto_0

    .line 1257
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 1258
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 1259
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    .line 1263
    :cond_4
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    return v2
.end method

.method private flushAudioProcessors()V
    .locals 3

    const/4 v0, 0x0

    .line 827
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 828
    aget-object v1, v1, v0

    .line 829
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->flush()V

    .line 830
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getAudioFormat(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1920
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1921
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 1922
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 1923
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 1924
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method private getAudioProcessorPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 1566
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getMediaPositionParameters()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    return-object v0
.end method

.method private static getAudioTrackMinBufferSize(III)I
    .locals 0

    .line 1929
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1930
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x400

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_0

    .line 1781
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1764
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 p0, 0x200

    return p0

    .line 1766
    :pswitch_4
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1769
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/exoplr2avp/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_0
    return p0

    :pswitch_5
    const/16 p0, 0x800

    return p0

    :pswitch_6
    return v0

    .line 1741
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/exoplr2avp/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result p0

    .line 1742
    invoke-static {p0}, Lcom/google/android/exoplr2avp/audio/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result p0

    if-eq p0, v1, :cond_1

    return p0

    .line 1744
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1758
    :pswitch_8
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 1762
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/Ac3Util;->parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method private getMediaPositionParameters()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    :goto_0
    return-object v0
.end method

.method private getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 2

    .line 1721
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 1722
    invoke-static {p1, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    return p1

    .line 1724
    :cond_0
    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1728
    :cond_1
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string p2, "Pixel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private getSubmittedFrames()J
    .locals 4

    .line 1676
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_0

    .line 1677
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 1678
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_0
    return-wide v0
.end method

.method private getWrittenFrames()J
    .locals 4

    .line 1682
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_0

    .line 1683
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 1684
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :goto_0
    return-wide v0
.end method

.method private initializeAudioTrack()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 842
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->buildAudioTrackWithRetry()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 843
    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V

    .line 845
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iget v1, v1, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iget v2, v2, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 850
    :cond_0
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    if-eqz v0, :cond_1

    .line 851
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Api31;->setLogSessionIdOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioSessionId:I

    .line 854
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v4, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v5, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v6, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    .line 860
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 862
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->effectId:I

    if-eqz v0, :cond_3

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    iget v1, v1, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->effectId:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    iget v1, v1, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 867
    :cond_3
    iput-boolean v7, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    return-void
.end method

.method private static isAudioTrackDeadObject(I)Z
    .locals 2

    .line 1233
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAudioTrackInitialized()Z
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOffloadedPlayback(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1735
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeDisableOffload()V
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1229
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method private playPendingData()V
    .locals 3

    .line 1840
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1841
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1842
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->handleEndOfStream(J)V

    .line 1843
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 1844
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_0
    return-void
.end method

.method private processBuffers(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    .line 1087
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 1088
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 1090
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 1092
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 1093
    iget v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    if-le v1, v4, :cond_3

    .line 1094
    invoke-interface {v3, v2}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 1096
    :cond_3
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1097
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 1098
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1105
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->register(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private resetSinkStateForFlush()V
    .locals 12

    const-wide/16 v0, 0x0

    .line 1492
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 1493
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1494
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 1495
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v2, 0x0

    .line 1496
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1497
    iput v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 1498
    new-instance v11, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1500
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v4

    .line 1501
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getSkipSilenceEnabled()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJLcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    iput-object v11, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1504
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v0, 0x0

    .line 1505
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1506
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 1507
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1508
    iput v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1509
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1510
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1511
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->handledEndOfStream:Z

    const/4 v1, -0x1

    .line 1512
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 1513
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1514
    iput v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1515
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    .line 1516
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flushAudioProcessors()V

    return-void
.end method

.method private setAudioProcessorPlaybackParametersAndSkipSilence(Lcom/google/android/exoplr2avp/PlaybackParameters;Z)V
    .locals 9

    .line 1544
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getMediaPositionParameters()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    move-result-object v0

    .line 1545
    iget-object v1, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->skipSilence:Z

    if-eq p2, v0, :cond_2

    .line 1547
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJLcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    .line 1553
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1556
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 1560
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    :cond_2
    :goto_0
    return-void
.end method

.method private setAudioTrackPlaybackParametersV23(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 2

    .line 1521
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1524
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    .line 1525
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->pitch:F

    .line 1526
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 1527
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 1529
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DefaultAudioSink"

    const-string v1, "Failed to set playback params"

    .line 1531
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1534
    :goto_0
    new-instance p1, Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1536
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplr2avp/PlaybackParameters;-><init>(FF)V

    .line 1537
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    iget v1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->setAudioTrackPlaybackSpeed(F)V

    .line 1539
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .line 1382
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1384
    :cond_0
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1832
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private setupAudioProcessors()V
    .locals 6

    .line 811
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 812
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 813
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 814
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 815
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 817
    :cond_0
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->flush()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 821
    new-array v2, v0, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 822
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 823
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flushAudioProcessors()V

    return-void
.end method

.method private shouldApplyAudioProcessorPlaybackParameters()Z
    .locals 2

    .line 1611
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 1612
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    .line 1613
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUseFloatOutput(I)Z
    .locals 1

    .line 1621
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private useOffloadedPlayback(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)Z
    .locals 4

    .line 1688
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadMode:I

    if-nez v0, :cond_0

    goto :goto_3

    .line 1692
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1696
    :cond_1
    iget v2, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1700
    :cond_2
    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 1703
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->getAudioAttributesV21()Lcom/google/android/exoplr2avp/audio/AudioAttributes$AudioAttributesV21;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1702
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p2

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    return v0

    .line 1713
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1707
    :cond_4
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    if-nez p2, :cond_6

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    .line 1708
    :goto_1
    iget p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadMode:I

    if-ne p2, v0, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    :goto_3
    return v1
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1121
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    goto :goto_1

    .line 1123
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1124
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_5

    .line 1125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1126
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 1127
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 1129
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1130
    iget-object v5, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1131
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1132
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 1135
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1137
    sget v4, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-ge v4, v1, :cond_7

    .line 1139
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenPcmBytes:J

    invoke-virtual {p2, v4, v5}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->getAvailableBufferSize(J)I

    move-result p2

    if-lez p2, :cond_6

    .line 1141
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1142
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 1143
    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_a

    .line 1145
    iget p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 1146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    goto :goto_3

    .line 1149
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v1, :cond_9

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 1150
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1151
    iget-object v7, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    .line 1152
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p2

    goto :goto_3

    .line 1155
    :cond_9
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p2

    .line 1158
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    if-gez p2, :cond_e

    .line 1162
    invoke-static {p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackDeadObject(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1164
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 1166
    :cond_b
    new-instance p3, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;-><init>(ILcom/google/android/exoplr2avp/Format;Z)V

    .line 1167
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    if-eqz p1, :cond_c

    .line 1168
    invoke-interface {p1, p3}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1170
    :cond_c
    iget-boolean p1, p3, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->isRecoverable:Z

    if-nez p1, :cond_d

    .line 1173
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return-void

    .line 1171
    :cond_d
    throw p3

    .line 1176
    :cond_e
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1180
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 1185
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_f

    .line 1186
    iput-boolean v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1192
    :cond_f
    iget-boolean p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playing:Z

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    if-eqz p3, :cond_10

    if-ge p2, v0, :cond_10

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    if-nez v1, :cond_10

    .line 1196
    invoke-interface {p3}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onOffloadBufferFull()V

    .line 1200
    :cond_10
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget p3, p3, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez p3, :cond_11

    .line 1201
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenPcmBytes:J

    :cond_11
    if-ne p2, v0, :cond_14

    .line 1204
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget p2, p2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz p2, :cond_13

    .line 1207
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_12

    goto :goto_4

    :cond_12
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1208
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v0, p3

    iget p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    int-to-long v2, p3

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :cond_13
    const/4 p1, 0x0

    .line 1210
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_14
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    .line 1787
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10

    .line 1793
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v7, 0x1

    mul-long v8, p4, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 1795
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x10

    .line 1799
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1800
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1801
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1803
    :cond_1
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1804
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1805
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p4, p4, v1

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1806
    iget-object p4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1807
    iput p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1809
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_4

    .line 1811
    iget-object p5, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 1812
    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_3

    .line 1814
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p5

    :cond_3
    if-ge p5, p4, :cond_4

    return v3

    .line 1821
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_5

    .line 1823
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1

    .line 1826
    :cond_5
    iget p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplr2avp/Format;I[I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 706
    iget-object v0, v3, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 707
    iget v0, v3, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 709
    iget v0, v3, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    iget v2, v3, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFrameSize(II)I

    move-result v0

    .line 711
    iget v2, v3, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    invoke-direct {v1, v2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    goto :goto_0

    .line 713
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 715
    :goto_0
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;

    iget v6, v3, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    iget v7, v3, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    .line 718
    sget v5, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    iget v5, v3, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    if-nez p3, :cond_1

    const/4 v5, 0x6

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    .line 723
    aput v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    .line 726
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 728
    new-instance v5, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v6, v3, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    iget v7, v3, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    iget v8, v3, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 731
    array-length v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    .line 733
    :try_start_0
    invoke-interface {v8, v5}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->configure(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    move-result-object v9

    .line 734
    invoke-interface {v8}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->isActive()Z

    move-result v8
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    move-object v5, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 738
    new-instance v2, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;)V

    throw v2

    .line 743
    :cond_4
    iget v6, v5, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 744
    iget v7, v5, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 745
    iget v8, v5, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v8}, Lcom/google/android/exoplr2avp/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v8

    .line 746
    iget v5, v5, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v6, v5}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFrameSize(II)I

    move-result v5

    move-object/from16 v16, v2

    move v14, v5

    move v11, v6

    move v15, v7

    move v2, v8

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    new-array v0, v4, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 750
    iget v5, v3, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    .line 752
    iget-object v6, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    invoke-direct {v1, v3, v6}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->useOffloadedPlayback(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 754
    iget-object v6, v3, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 755
    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 756
    iget v7, v3, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-static {v7}, Lcom/google/android/exoplr2avp/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v16, v0

    move v15, v5

    move v11, v6

    move v2, v7

    const/4 v0, -0x1

    const/4 v13, 0x1

    :goto_3
    const/4 v14, -0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x2

    .line 760
    iget-object v7, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 761
    invoke-virtual {v7, v3}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 766
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 767
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v16, v0

    move v15, v5

    move v2, v7

    move v11, v8

    const/4 v0, -0x1

    const/4 v13, 0x2

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_7

    move/from16 v10, p2

    move/from16 v19, v11

    goto :goto_6

    .line 773
    :cond_7
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 774
    invoke-static {v15, v2, v11}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioTrackMinBufferSize(III)I

    move-result v6

    .line 779
    iget-boolean v7, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz v7, :cond_8

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    goto :goto_5

    :cond_8
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_5
    move-wide/from16 v17, v7

    move v7, v11

    move v8, v13

    move v9, v14

    move v10, v15

    move/from16 v19, v11

    move-wide/from16 v11, v17

    .line 773
    invoke-interface/range {v5 .. v12}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->getBufferSizeInBytes(IIIIID)I

    move-result v5

    move v10, v5

    :goto_6
    const-string v5, ") for: "

    if-eqz v19, :cond_b

    if-eqz v2, :cond_a

    .line 791
    iput-boolean v4, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 792
    new-instance v12, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    move v8, v2

    move-object v2, v12

    move-object/from16 v3, p1

    move v4, v0

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v9, v19

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;-><init>(Lcom/google/android/exoplr2avp/Format;IIIIIII[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V

    .line 803
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 804
    iput-object v12, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    goto :goto_7

    .line 806
    :cond_9
    iput-object v12, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    :goto_7
    return-void

    .line 786
    :cond_a
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output channel config (mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V

    throw v0

    .line 782
    :cond_b
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output encoding (mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V

    throw v0

    .line 763
    :cond_c
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V

    throw v0
.end method

.method public disableTunneling()V
    .locals 1

    .line 1367
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1368
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    :cond_0
    return-void
.end method

.method public enableTunnelingV21()V
    .locals 3

    .line 1357
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1358
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1359
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_1

    .line 1360
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .locals 8

    .line 1447
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 1448
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    return-void

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1453
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1455
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1459
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 1460
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1461
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1463
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1465
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->reset()V

    .line 1466
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v4, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v5, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v6, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    .line 1473
    iput-boolean v7, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    return-void
.end method

.method public flush()V
    .locals 4

    .line 1401
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1402
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 1404
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->unregister(Landroid/media/AudioTrack;)V

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    .line 1412
    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1413
    sget v2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 1419
    iput v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioSessionId:I

    .line 1421
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    if-eqz v2, :cond_3

    .line 1422
    iput-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 1423
    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 1425
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->reset()V

    .line 1426
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1427
    new-instance v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;Ljava/lang/String;Landroid/media/AudioTrack;)V

    .line 1437
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->start()V

    .line 1439
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1440
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    return-object v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    .line 686
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 690
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 691
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->applyMediaPositionParameters(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I
    .locals 3

    .line 662
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 663
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 667
    :cond_0
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2

    .line 675
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->useOffloadedPlayback(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->isPassthroughPlaybackSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 1294
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    goto :goto_0

    .line 1296
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 1307
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getMediaPositionParameters()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->skipSilence:Z

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 889
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 891
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    .line 892
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 895
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v9, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playPendingData()V

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v5

    if-eqz v5, :cond_3

    return v7

    .line 901
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    goto :goto_2

    .line 904
    :cond_4
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iput-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 905
    iput-object v8, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 906
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v5}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadMode:I

    const/4 v9, 0x3

    if-eq v5, v9, :cond_6

    .line 910
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 911
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 913
    :cond_5
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iget v9, v9, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    iget-object v10, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget-object v10, v10, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iget v10, v10, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    invoke-virtual {v5, v9, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 915
    iput-boolean v6, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 919
    :cond_6
    :goto_2
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 922
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v5

    if-nez v5, :cond_9

    .line 924
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->initializeAudioTrack()V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 926
    iget-boolean v0, v2, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v0, :cond_8

    .line 929
    iget-object v0, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return v7

    .line 927
    :cond_8
    throw v2

    .line 933
    :cond_9
    :goto_3
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 935
    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_b

    .line 936
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 937
    iput-boolean v7, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 938
    iput-boolean v7, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 940
    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz v5, :cond_a

    sget v5, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v5, v11, :cond_a

    .line 941
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-direct {v1, v5}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    .line 943
    :cond_a
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 945
    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playing:Z

    if-eqz v5, :cond_b

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->play()V

    .line 950
    :cond_b
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->mayHandleBuffer(J)Z

    move-result v5

    if-nez v5, :cond_c

    return v7

    .line 954
    :cond_c
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_16

    .line 956
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 957
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_e

    return v6

    .line 962
    :cond_e
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v5, :cond_f

    iget v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v5, :cond_f

    .line 964
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v5, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v5, :cond_f

    return v6

    .line 974
    :cond_f
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v5, :cond_11

    .line 975
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_10

    return v7

    .line 979
    :cond_10
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 980
    iput-object v8, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;

    .line 984
    :cond_11
    iget-wide v11, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    .line 987
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v13

    iget-object v15, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;

    invoke-virtual {v15}, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 986
    invoke-virtual {v5, v13, v14}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 988
    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v5, :cond_12

    sub-long v13, v11, v2

    .line 989
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v5, v13, v15

    if-lez v5, :cond_12

    .line 990
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    new-instance v13, Lcom/google/android/exoplr2avp/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v13, v2, v3, v11, v12}, Lcom/google/android/exoplr2avp/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    invoke-interface {v5, v13}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 993
    iput-boolean v6, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 995
    :cond_12
    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v5, :cond_14

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_13

    return v7

    :cond_13
    sub-long v11, v2, v11

    .line 1003
    iget-wide v13, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 1004
    iput-boolean v7, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 1006
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 1007
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    if-eqz v5, :cond_14

    cmp-long v13, v11, v9

    if-eqz v13, :cond_14

    .line 1008
    invoke-interface {v5}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 1012
    :cond_14
    iget-object v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_15

    .line 1013
    iget-wide v9, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_5

    .line 1015
    :cond_15
    iget-wide v9, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v5, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v11, v5

    int-to-long v13, v4

    mul-long v11, v11, v13

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1018
    :goto_5
    iput-object v0, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1019
    iput v4, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1022
    :cond_16
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1024
    iget-object v0, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1025
    iput-object v8, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1026
    iput v7, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    return v6

    .line 1030
    :cond_17
    iget-object v0, v1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->isStalled(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 1031
    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_18
    return v7
.end method

.method public handleDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    .line 881
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    .line 1274
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    .line 1275
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 1269
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1393
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playing:Z

    .line 1394
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->pause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playing:Z

    .line 873
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/AudioTrackPositionTracker;->start()V

    .line 875
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1216
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playPendingData()V

    const/4 v0, 0x1

    .line 1218
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->handledEndOfStream:Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    .line 1479
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1480
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1483
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1485
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playing:Z

    .line 1486
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1315
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 1316
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->tunneling:Z

    if-eqz p1, :cond_1

    return-void

    .line 1320
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 1330
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1

    .line 1331
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1332
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    .line 1333
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
    .locals 3

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1342
    :cond_0
    iget v0, p1, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->effectId:I

    .line 1343
    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->sendLevel:F

    .line 1344
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 1345
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    iget v2, v2, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;->effectId:I

    if-eq v2, v0, :cond_1

    .line 1346
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 1349
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 1352
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    return-void
.end method

.method public setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 4

    .line 1280
    new-instance v0, Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget v1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 1282
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(FFF)F

    move-result v1

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->pitch:F

    .line 1283
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplr2avp/PlaybackParameters;-><init>(FF)V

    .line 1284
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 1285
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    goto :goto_0

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getSkipSilenceEnabled()Z

    move-result p1

    .line 1287
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setAudioProcessorPlaybackParametersAndSkipSilence(Lcom/google/android/exoplr2avp/PlaybackParameters;Z)V

    :goto_0
    return-void
.end method

.method public setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 1

    .line 1302
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    .line 1301
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setAudioProcessorPlaybackParametersAndSkipSilence(Lcom/google/android/exoplr2avp/PlaybackParameters;Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1375
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1376
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->volume:F

    .line 1377
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->setVolumeInternal()V

    :cond_0
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 0

    .line 657
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
