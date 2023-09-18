.class public Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;
.super Ljava/lang/Object;
.source "LiteSDKVideoProfileUtil.java"


# instance fields
.field public cropMode:I

.field private height:I

.field public profile:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->profile:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->cropMode:I

    return-void
.end method


# virtual methods
.method public getCropMode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->cropMode:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->height:I

    return v0
.end method

.method public getProfile()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->profile:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 39
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 34
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->width:I

    return-void
.end method
