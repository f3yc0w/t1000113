.class public final Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 148
    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 142
    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method
