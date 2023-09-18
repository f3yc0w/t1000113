.class Lcom/netease/lava/webrtc/VideoEncoderWrapper;
.super Ljava/lang/Object;
.source "VideoEncoderWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;J)V
    .locals 0

    .line 23
    invoke-static/range {p0 .. p12}, Lcom/netease/lava/webrtc/VideoEncoderWrapper;->nativeOnEncodedFrame(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;J)V

    return-void
.end method

.method static synthetic access$100(JZ)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/lava/webrtc/VideoEncoderWrapper;->nativeOnUpdateEncoderFormat(JZ)V

    return-void
.end method

.method static createEncoderCallback(J)Lcom/netease/lava/webrtc/VideoEncoder$Callback;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 43
    new-instance v0, Lcom/netease/lava/webrtc/VideoEncoderWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/webrtc/VideoEncoderWrapper$1;-><init>(J)V

    return-object v0
.end method

.method static getScalingSettingsHigh(Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;)Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    return-object p0
.end method

.method static getScalingSettingsLow(Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;)Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    return-object p0
.end method

.method static getScalingSettingsOn(Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;->on:Z

    return p0
.end method

.method private static native nativeOnEncodedFrame(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;J)V
.end method

.method private static native nativeOnUpdateEncoderFormat(JZ)V
.end method
