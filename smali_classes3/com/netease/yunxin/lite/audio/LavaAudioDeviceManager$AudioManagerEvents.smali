.class public interface abstract Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;
.super Ljava/lang/Object;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioManagerEvents"
.end annotation


# virtual methods
.method public abstract onAudioDeviceChanged(ILjava/util/Set;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedAudioDevice",
            "availableAudioDevices",
            "hasExternalMic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onAudioModeChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract onVolumeChange(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "volume",
            "maxVolume"
        }
    .end annotation
.end method
