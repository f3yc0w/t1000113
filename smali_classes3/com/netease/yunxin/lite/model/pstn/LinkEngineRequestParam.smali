.class public Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;
.super Ljava/lang/Object;
.source "LinkEngineRequestParam.java"


# instance fields
.field private backupLbsInfo:Ljava/lang/String;

.field private ipType:I

.field private localIp:Ljava/lang/String;

.field private netType:I

.field private osType:I

.field private sipAccout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupLbsInfo()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->backupLbsInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIpType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->ipType:I

    return v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->netType:I

    return v0
.end method

.method public getOsType()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->osType:I

    return v0
.end method

.method public getSipAccout()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->sipAccout:Ljava/lang/String;

    return-object v0
.end method

.method public setBackupLbsInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupLbsInfo"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->backupLbsInfo:Ljava/lang/String;

    return-void
.end method

.method public setIpType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipType"
        }
    .end annotation

    .line 55
    iput p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->ipType:I

    return-void
.end method

.method public setLocalIp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localIp"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->localIp:Ljava/lang/String;

    return-void
.end method

.method public setNetType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netType"
        }
    .end annotation

    .line 75
    iput p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->netType:I

    return-void
.end method

.method public setOsType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "osType"
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->osType:I

    return-void
.end method

.method public setSipAccout(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sipAccout"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineRequestParam;->sipAccout:Ljava/lang/String;

    return-void
.end method
