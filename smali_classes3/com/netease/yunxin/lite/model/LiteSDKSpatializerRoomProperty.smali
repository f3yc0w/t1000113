.class public Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;
.super Ljava/lang/Object;
.source "LiteSDKSpatializerRoomProperty.java"


# instance fields
.field public material:I

.field public reflectionScalar:F

.field public reverbBrightness:F

.field public reverbGain:F

.field public reverbTime:F

.field public roomCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->roomCapacity:I

    .line 7
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->material:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reflectionScalar:F

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbGain:F

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbTime:F

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbBrightness:F

    return-void
.end method


# virtual methods
.method public getMaterial()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->material:I

    return v0
.end method

.method public getReflectionScalar()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reflectionScalar:F

    return v0
.end method

.method public getReverbBrightness()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbBrightness:F

    return v0
.end method

.method public getReverbGain()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbGain:F

    return v0
.end method

.method public getReverbTime()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbTime:F

    return v0
.end method

.method public getRoomCapacity()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->roomCapacity:I

    return v0
.end method
