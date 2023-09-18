.class public Lnet/aihelp/core/net/http/pojo/ResultEntity;
.super Ljava/lang/Object;
.source "ResultEntity.java"


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private flag:Z

.field private remark:Ljava/lang/String;

.field private time:J

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 23
    iget v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->time:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->flag:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 27
    iput p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->code:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->data:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->flag:Z

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->remark:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->time:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->token:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/aihelp/core/net/http/pojo/ResultEntity;->url:Ljava/lang/String;

    return-void
.end method
