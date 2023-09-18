.class final Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final audioTrackPositionUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

.field public final skipSilence:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJ)V
    .locals 0

    .line 1910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1911
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    .line 1912
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->skipSilence:Z

    .line 1913
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    .line 1914
    iput-wide p5, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJLcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1895
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplr2avp/PlaybackParameters;ZJJ)V

    return-void
.end method
