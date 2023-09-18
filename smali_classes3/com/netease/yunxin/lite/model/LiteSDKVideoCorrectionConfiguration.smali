.class public Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;
.super Ljava/lang/Object;
.source "LiteSDKVideoCorrectionConfiguration.java"


# instance fields
.field public bottomLeftX:F

.field public bottomLeftY:F

.field public bottomRightX:F

.field public bottomRightY:F

.field public canvasHeight:I

.field public canvasWidth:I

.field public enableMirror:Z

.field public topLeftX:F

.field public topLeftY:F

.field public topRightX:F

.field public topRightY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topLeftX:F

    .line 7
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topLeftY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topRightX:F

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topRightY:F

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomLeftX:F

    .line 11
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomLeftY:F

    .line 12
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomRightX:F

    .line 13
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomRightY:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->canvasWidth:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->canvasHeight:I

    .line 16
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->enableMirror:Z

    return-void
.end method


# virtual methods
.method public getBottomLeftX()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomLeftX:F

    return v0
.end method

.method public getBottomLeftY()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomLeftY:F

    return v0
.end method

.method public getBottomRightX()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomRightX:F

    return v0
.end method

.method public getBottomRightY()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomRightY:F

    return v0
.end method

.method public getCanvasHeight()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->canvasHeight:I

    return v0
.end method

.method public getCanvasWidth()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->canvasWidth:I

    return v0
.end method

.method public getTopLeftX()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topLeftX:F

    return v0
.end method

.method public getTopLeftY()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topLeftY:F

    return v0
.end method

.method public getTopRightX()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topRightX:F

    return v0
.end method

.method public getTopRightY()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topRightY:F

    return v0
.end method

.method public isEnableMirror()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->enableMirror:Z

    return v0
.end method
