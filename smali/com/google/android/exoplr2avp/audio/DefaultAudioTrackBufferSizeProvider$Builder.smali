.class public Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ac3BufferMultiplicationFactor:I

.field private maxPcmBufferDurationUs:I

.field private minPcmBufferDurationUs:I

.field private offloadBufferDurationUs:I

.field private passthroughBufferDurationUs:I

.field private pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d090

    .line 62
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    const v1, 0xb71b0

    .line 63
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    const/4 v1, 0x4

    .line 64
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    .line 65
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    const v0, 0x2faf080

    .line 66
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider;
    .locals 1

    .line 126
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V

    return-object v0
.end method

.method public setAc3BufferMultiplicationFactor(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    .line 120
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return-object p0
.end method

.method public setMaxPcmBufferDurationUs(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    .line 84
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    return-object p0
.end method

.method public setMinPcmBufferDurationUs(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    .line 75
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    return-object p0
.end method

.method public setOffloadBufferDurationUs(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    .line 111
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    return-object p0
.end method

.method public setPassthroughBufferDurationUs(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    .line 102
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    return-object p0
.end method

.method public setPcmBufferMultiplicationFactor(I)Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    .line 93
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    return-object p0
.end method
