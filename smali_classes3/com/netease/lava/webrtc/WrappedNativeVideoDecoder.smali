.class abstract Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;
.super Ljava/lang/Object;
.source "WrappedNativeVideoDecoder.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoDecoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createNativeVideoDecoder()J
.end method

.method public decode(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoDecoder$DecodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefersLateDecoding()Z
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initDecode(Lcom/netease/lava/webrtc/VideoDecoder$Settings;Lcom/netease/lava/webrtc/VideoDecoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
