.class public Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;
.super Ljava/lang/Object;
.source "LinkEngineDirectCallParam.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private callMediaType:I

.field private callee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelName:Ljava/lang/String;

.field private clientType:I

.field private deviceId:Ljava/lang/String;

.field private didNumber:Ljava/lang/String;

.field private isNumberEncrypted:Z

.field private token:Ljava/lang/String;

.field private traceId:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCallMediaType()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->callMediaType:I

    return v0
.end method

.method public getCallee()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->callee:Ljava/util/List;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->clientType:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDidNumber()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->didNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->uid:J

    return-wide v0
.end method

.method public isNumberEncrypted()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->isNumberEncrypted:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appKey"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setCallMediaType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callMediaType"
        }
    .end annotation

    .line 110
    iput p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->callMediaType:I

    return-void
.end method

.method public setCallee(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callee"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->callee:Ljava/util/List;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setClientType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientType"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->clientType:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDidNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "didNumber"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->didNumber:Ljava/lang/String;

    return-void
.end method

.method public setNumberEncrypted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberEncrypted"
        }
    .end annotation

    .line 130
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->isNumberEncrypted:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->token:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceId"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->traceId:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 50
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->uid:J

    return-void
.end method
