.class public final Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

.field private audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

.field audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private enableAudioTrackPlaybackParams:Z

.field private enableFloatOutput:Z

.field private offloadMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    sget-object v0, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 268
    sget-object v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;)I
    .locals 0

    .line 255
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->offloadMode:I

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    .line 366
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public setAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 278
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    return-object p0
.end method

.method public setAudioProcessorChain(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 303
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;

    return-object p0
.end method

.method public setAudioProcessors([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 1

    .line 291
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioProcessorChain(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAudioTrackBufferSizeProvider(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return-object p0
.end method

.method public setEnableFloatOutput(Z)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return-object p0
.end method

.method public setOffloadMode(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 345
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->offloadMode:I

    return-object p0
.end method
