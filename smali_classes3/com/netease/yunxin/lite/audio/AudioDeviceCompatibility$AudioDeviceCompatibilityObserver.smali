.class public interface abstract Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;
.super Ljava/lang/Object;
.source "AudioDeviceCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioDeviceCompatibilityObserver"
.end annotation


# virtual methods
.method public abstract onChanged(III)V
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
.end method
