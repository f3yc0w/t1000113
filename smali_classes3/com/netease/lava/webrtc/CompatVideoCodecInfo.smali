.class public Lcom/netease/lava/webrtc/CompatVideoCodecInfo;
.super Ljava/lang/Object;
.source "CompatVideoCodecInfo.java"


# instance fields
.field private brAdjustSecond:I

.field private codecTypeName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private deFallbackResolution:I

.field private decoderColorFormat:I

.field private eglContext:Lcom/netease/lava/webrtc/EglBase$Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private enBrAdjuster:I

.field private enFallbackResolution:I

.field private forceHardwareDecodeingForH264:I

.field private forceHardwareDecodeingForH265:I

.field private forceHardwareEncodeingForH264:I

.field private forceHardwareEncodeingForH265:I

.field private forceKeyFrameIntervalMs:I

.field private initDropFrameCount:I

.field private keyFrameIntervalSec:I

.field private level:I

.field private name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private profile:I

.field private surfaceColorFormat:I

.field private textureDelayTimeMs:I

.field useHardwareDecodingForH264:I

.field useHardwareDecodingForH265:I

.field useHardwareEncodingForH264:I

.field useHardwareEncodingForH265:I

.field private yuvColorFormat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->yuvColorFormat:I

    .line 18
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->surfaceColorFormat:I

    .line 19
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->profile:I

    .line 20
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->level:I

    .line 21
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->keyFrameIntervalSec:I

    .line 22
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceKeyFrameIntervalMs:I

    .line 23
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->initDropFrameCount:I

    .line 24
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->enBrAdjuster:I

    .line 25
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->enFallbackResolution:I

    const v1, 0x19000

    .line 26
    iput v1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->deFallbackResolution:I

    .line 31
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->decoderColorFormat:I

    .line 34
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->brAdjustSecond:I

    .line 36
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareEncodeingForH264:I

    .line 37
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareDecodeingForH264:I

    .line 38
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareEncodeingForH265:I

    .line 39
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareDecodeingForH265:I

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->textureDelayTimeMs:I

    return-void
.end method


# virtual methods
.method public SetHardwareDecodingForH264(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareDecodingForH264:I

    return-void
.end method

.method public SetHardwareDecodingForH265(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareDecodingForH265:I

    return-void
.end method

.method public SetHardwareEncodingForH264(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareEncodingForH264:I

    return-void
.end method

.method public SetHardwareEncodingForH265(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareEncodingForH265:I

    return-void
.end method

.method public getBrAdjustSecond()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->brAdjustSecond:I

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDecFallbackResolution()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->deFallbackResolution:I

    return v0
.end method

.method public getDecoderColorFormat()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->decoderColorFormat:I

    return v0
.end method

.method public getEGLContext()Lcom/netease/lava/webrtc/EglBase$Context;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->eglContext:Lcom/netease/lava/webrtc/EglBase$Context;

    return-object v0
.end method

.method public getEnBrAdjuster()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->enBrAdjuster:I

    return v0
.end method

.method public getEnSurfaceColorFormat()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->surfaceColorFormat:I

    return v0
.end method

.method public getEnYUVColorFormat()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->yuvColorFormat:I

    return v0
.end method

.method public getEncFallbackResolution()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->enFallbackResolution:I

    return v0
.end method

.method public getForceHardwareDecodeingForH264()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareDecodeingForH264:I

    return v0
.end method

.method public getForceHardwareDecodeingForH265()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareDecodeingForH265:I

    return v0
.end method

.method public getForceHardwareEncodeingForH264()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareEncodeingForH264:I

    return v0
.end method

.method public getForceHardwareEncodeingForH265()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareEncodeingForH265:I

    return v0
.end method

.method public getForceKeyFrameIntervalMs()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceKeyFrameIntervalMs:I

    return v0
.end method

.method public getHardwareDecodingForH264()Z
    .locals 2

    .line 159
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareDecodingForH264:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHardwareDecodingForH265()Z
    .locals 2

    .line 163
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareDecodingForH265:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHardwareEncodingForH264()Z
    .locals 2

    .line 152
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareEncodingForH264:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHardwareEncodingForH265()Z
    .locals 2

    .line 155
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->useHardwareEncodingForH265:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getInitDropFrameCount()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->initDropFrameCount:I

    return v0
.end method

.method public getKeyFrameIntervalSec()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->keyFrameIntervalSec:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->level:I

    return v0
.end method

.method public getProfile()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->profile:I

    return v0
.end method

.method public getTextureDelayTimeMs()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->textureDelayTimeMs:I

    return v0
.end method

.method public getVideoCodecTypeName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->codecTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setBrAdjustSecond(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->brAdjustSecond:I

    return-void
.end method

.method public setCodecName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setDecFallbackResolution(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->deFallbackResolution:I

    return-void
.end method

.method public setDecoderColorFormat(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->decoderColorFormat:I

    return-void
.end method

.method public setEGLContext(Lcom/netease/lava/webrtc/EglBase$Context;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->eglContext:Lcom/netease/lava/webrtc/EglBase$Context;

    return-void
.end method

.method public setEnBrAdjuster(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->enBrAdjuster:I

    return-void
.end method

.method public setEnSurfaceColorFormat(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->surfaceColorFormat:I

    return-void
.end method

.method public setEnYUVColorFormat(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->yuvColorFormat:I

    return-void
.end method

.method public setEncFallbackResolution(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->enFallbackResolution:I

    return-void
.end method

.method public setForceHardwareDecodeingForH264(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareDecodeingForH264:I

    return-void
.end method

.method public setForceHardwareDecodeingForH265(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareDecodeingForH265:I

    return-void
.end method

.method public setForceHardwareEncodeingForH264(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareEncodeingForH264:I

    return-void
.end method

.method public setForceHardwareEncodeingForH265(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceHardwareEncodeingForH265:I

    return-void
.end method

.method public setForceKeyFrameIntervalMs(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->forceKeyFrameIntervalMs:I

    return-void
.end method

.method public setInitDropFrameCount(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->initDropFrameCount:I

    return-void
.end method

.method public setKeyFrameIntervalSec(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->keyFrameIntervalSec:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->level:I

    return-void
.end method

.method public setProfile(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->profile:I

    return-void
.end method

.method public setTextureDelayTimeMs(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->textureDelayTimeMs:I

    return-void
.end method

.method public setVideoCodecTypeName(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->codecTypeName:Ljava/lang/String;

    return-void
.end method
