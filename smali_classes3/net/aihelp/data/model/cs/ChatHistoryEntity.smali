.class public Lnet/aihelp/data/model/cs/ChatHistoryEntity;
.super Ljava/lang/Object;
.source "ChatHistoryEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AGENT:I = 0x4

.field public static final TYPE_BOT:I = 0x3

.field public static final TYPE_TIMESTAMP:I = 0x1

.field public static final TYPE_USER:I = 0x2


# instance fields
.field private agentName:Ljava/lang/String;

.field private agentNickname:Ljava/lang/String;

.field private msgType:I

.field private timeStamp:J

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->compareTo(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)I
    .locals 4

    .line 58
    iget-wide v0, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->timeStamp:J

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->agentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentNickname()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->agentNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 49
    iget v0, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->msgType:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->timeStamp:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .line 17
    iget v0, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->userId:I

    return v0
.end method

.method public setAgentName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->agentName:Ljava/lang/String;

    return-void
.end method

.method public setAgentNickname(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->agentNickname:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->msgType:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->timeStamp:J

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->userId:I

    return-void
.end method
