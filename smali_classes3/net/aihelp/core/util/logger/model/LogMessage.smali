.class public Lnet/aihelp/core/util/logger/model/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final stacktrace:Ljava/lang/String;

.field private final timeStamp:J

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->type:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->timeStamp:J

    .line 13
    iput-object p4, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->message:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->stacktrace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStacktrace()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->stacktrace:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->timeStamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lnet/aihelp/core/util/logger/model/LogMessage;->type:Ljava/lang/String;

    return-object v0
.end method
