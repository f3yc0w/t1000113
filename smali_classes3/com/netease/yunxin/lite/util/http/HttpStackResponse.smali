.class public Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
.super Ljava/lang/Object;
.source "HttpStackResponse.java"


# instance fields
.field public code:I

.field public headers:Ljava/lang/String;

.field public lastModified:J

.field public result:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->code:I

    return v0
.end method

.method public getHeaderFields()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->lastModified:J

    return-wide v0
.end method

.method public getResult()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
