.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;
.super Ljava/lang/Object;
.source "LiteSDKMediaCryptoConfig.java"


# instance fields
.field public enable:Z

.field public key:Ljava/lang/String;

.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->enable:Z

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->mode:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->mode:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->enable:Z

    return v0
.end method
