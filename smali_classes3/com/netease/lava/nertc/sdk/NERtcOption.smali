.class public Lcom/netease/lava/nertc/sdk/NERtcOption;
.super Ljava/lang/Object;
.source "NERtcOption.java"


# instance fields
.field public eglContext:Ljava/lang/Object;

.field public logDir:Ljava/lang/String;

.field public logLevel:I

.field public serverAddresses:Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 25
    iput v0, p0, Lcom/netease/lava/nertc/sdk/NERtcOption;->logLevel:I

    return-void
.end method
