.class public Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;
.super Ljava/lang/Object;
.source "LiteSDKCameraCaptureConfiguration.java"


# instance fields
.field public captureHeight:I

.field public captureOutputPreference:I

.field public captureWidth:I

.field public extraRotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureOutputPreference:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureWidth:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureHeight:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->extraRotation:I

    return-void
.end method


# virtual methods
.method public getCaptureHeight()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureHeight:I

    return v0
.end method

.method public getCaptureOutputPreference()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureOutputPreference:I

    return v0
.end method

.method public getCaptureWidth()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureWidth:I

    return v0
.end method

.method public getExtraRotation()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->extraRotation:I

    return v0
.end method
