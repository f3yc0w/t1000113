.class interface abstract Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;-><init>()V

    .line 225
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider$Builder;->build()Lcom/google/android/exoplr2avp/audio/DefaultAudioTrackBufferSizeProvider;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method


# virtual methods
.method public abstract getBufferSizeInBytes(IIIIID)I
.end method
