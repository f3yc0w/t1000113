.class public Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;
.super Ljava/lang/Object;
.source "AudioDeviceCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioDeviceCompatibility"

.field public static audioMode:I = 0x3

.field public static audioSource:I = 0x7

.field private static final sCompatibilityObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->sCompatibilityObservers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObserver(Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->sCompatibilityObservers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAudioMode()I
    .locals 1

    .line 82
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioMode:I

    return v0
.end method

.method public static getAudioSource()I
    .locals 1

    .line 72
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioSource:I

    return v0
.end method

.method public static getStreamType()I
    .locals 1

    .line 77
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->streamType:I

    return v0
.end method

.method public static notifyCompatibilityChange(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "streamType",
            "audioMode"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->sCompatibilityObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;

    .line 89
    invoke-interface {v1, p0, p1, p2}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;->onChanged(III)V

    goto :goto_0

    :cond_0
    const-string v0, "AudioDeviceCompatibility"

    .line 91
    invoke-static {v0, p2, p1, p0}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->logAudioProfile(Ljava/lang/String;III)V

    return-void
.end method

.method public static removeObserver(Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->sCompatibilityObservers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static setAudioMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioMode"
        }
    .end annotation

    .line 64
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioMode:I

    if-eq p0, v0, :cond_0

    .line 65
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioSource:I

    sget v1, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->streamType:I

    invoke-static {v0, v1, p0}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->notifyCompatibilityChange(III)V

    .line 67
    :cond_0
    sput p0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioMode:I

    return-void
.end method

.method private static setAudioSource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSource"
        }
    .end annotation

    .line 47
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioSource:I

    if-eq p0, v0, :cond_0

    .line 48
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->streamType:I

    sget v1, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioMode:I

    invoke-static {p0, v0, v1}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->notifyCompatibilityChange(III)V

    .line 51
    :cond_0
    sput p0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioSource:I

    return-void
.end method

.method private static setStreamType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 56
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->streamType:I

    if-eq p0, v0, :cond_0

    .line 57
    sget v0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioSource:I

    sget v1, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->audioMode:I

    invoke-static {v0, p0, v1}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->notifyCompatibilityChange(III)V

    .line 59
    :cond_0
    sput p0, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->streamType:I

    return-void
.end method
