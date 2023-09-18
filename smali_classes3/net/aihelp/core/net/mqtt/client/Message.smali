.class public Lnet/aihelp/core/net/mqtt/client/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field blocking:Z

.field private onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

.field private final queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field private final topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->blocking:Z

    .line 23
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/Message;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 24
    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/Message;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    .line 25
    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/Message;->topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    .line 26
    iput-object p4, p0, Lnet/aihelp/core/net/mqtt/client/Message;->onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/client/Message;)Lnet/aihelp/core/net/mqtt/client/Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    return-object p0
.end method


# virtual methods
.method public ack()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->blocking:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/Message;->ack(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    .line 60
    :try_start_0
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;->await()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/Message;->ack(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    :goto_0
    return-void
.end method

.method public ack(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/Message$1;

    invoke-direct {v2, p0, p1}, Lnet/aihelp/core/net/mqtt/client/Message$1;-><init>(Lnet/aihelp/core/net/mqtt/client/Message;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-interface {v0, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 78
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/Message;->onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 81
    invoke-interface {p1, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPayload()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message;->topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method
