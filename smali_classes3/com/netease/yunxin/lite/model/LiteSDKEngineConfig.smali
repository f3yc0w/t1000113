.class public Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;
.super Ljava/lang/Object;
.source "LiteSDKEngineConfig.java"


# instance fields
.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;->mode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;->mode:I

    return v0
.end method
