.class public Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;
.super Ljava/lang/Object;
.source "NERtcDirectCallParam.java"


# instance fields
.field private appKey:Ljava/lang/String;

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

.field private didNumber:Ljava/lang/String;

.field private isNumberEncrypted:Z

.field private mediaType:I

.field private token:Ljava/lang/String;

.field private traceId:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callee",
            "token",
            "channelName",
            "appKey",
            "didNumber",
            "mediaType",
            "uid",
            "traceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->callee:Ljava/util/List;

    .line 104
    iput-object p2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->token:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->channelName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->appKey:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->didNumber:Ljava/lang/String;

    .line 108
    iput p6, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->mediaType:I

    .line 109
    iput-wide p7, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->uid:J

    .line 110
    iput-object p9, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->traceId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callee",
            "token",
            "channelName",
            "appKey",
            "didNumber",
            "mediaType",
            "uid",
            "traceId",
            "isNumberEncrypted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->callee:Ljava/util/List;

    .line 118
    iput-object p2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->token:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->channelName:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->appKey:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->didNumber:Ljava/lang/String;

    .line 122
    iput p6, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->mediaType:I

    .line 123
    iput-wide p7, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->uid:J

    .line 124
    iput-object p9, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->traceId:Ljava/lang/String;

    .line 125
    iput-boolean p10, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted:Z

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->appKey:Ljava/lang/String;

    return-object v0
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

    .line 137
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->callee:Ljava/util/List;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getDidNumber()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->didNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->mediaType:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->uid:J

    return-wide v0
.end method

.method public isNumberEncrypted()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted:Z

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

    .line 165
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->appKey:Ljava/lang/String;

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

    .line 141
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->callee:Ljava/util/List;

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

    .line 157
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->channelName:Ljava/lang/String;

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

    .line 173
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->didNumber:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 181
    iput p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->mediaType:I

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

    .line 197
    iput-boolean p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted:Z

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

    .line 149
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->token:Ljava/lang/String;

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

    .line 133
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->traceId:Ljava/lang/String;

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

    .line 189
    iput-wide p1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->uid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcDirectCallParam{callee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->callee:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channelName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", didNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->didNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediaType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->mediaType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", traceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isNumberEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
