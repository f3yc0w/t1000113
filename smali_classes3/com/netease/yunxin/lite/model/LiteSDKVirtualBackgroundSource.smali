.class public Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;
.super Ljava/lang/Object;
.source "LiteSDKVirtualBackgroundSource.java"


# instance fields
.field public backgroundSourceType:I

.field public blur_degree:I

.field public color:I

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->backgroundSourceType:I

    const v0, 0xffffff

    .line 7
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->color:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->source:Ljava/lang/String;

    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->blur_degree:I

    return-void
.end method


# virtual methods
.method public getBackgroundSourceType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->backgroundSourceType:I

    return v0
.end method

.method public getBlurDegree()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->blur_degree:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->color:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->source:Ljava/lang/String;

    return-object v0
.end method
