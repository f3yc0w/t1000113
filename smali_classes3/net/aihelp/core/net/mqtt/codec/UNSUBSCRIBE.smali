.class public Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;
.super Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
.source "UNSUBSCRIBE.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;


# static fields
.field public static final NO_TOPICS:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

.field public static final TYPE:B = 0xat


# instance fields
.field private messageId:S

.field private topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    .line 23
    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->NO_TOPICS:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;-><init>()V

    .line 26
    sget-object v0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->NO_TOPICS:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    .line 29
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_LEAST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header()B

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->header(B)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    .line 39
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    .line 41
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->messageId:S

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :goto_0
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public bridge synthetic dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    move-result-object p1

    return-object p1
.end method

.method public dup(Z)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    return-object p1
.end method

.method public dup()Z
    .locals 1

    .line 72
    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->dup()Z

    move-result v0

    return v0
.end method

.method public encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 5

    .line 52
    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>()V

    .line 53
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v1

    .line 54
    sget-object v2, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    if-eq v1, v2, :cond_0

    .line 55
    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->messageId:S

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    .line 57
    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 58
    invoke-static {v0, v4}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    .line 62
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->header()B

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header(B)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    const/16 v2, 0xa

    .line 63
    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    .line 64
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The impossible happened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    move-result-object p1

    return-object p1
.end method

.method public messageId(S)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;
    .locals 0

    .line 90
    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->messageId:S

    return-object p0
.end method

.method public messageId()S
    .locals 1

    .line 86
    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->messageId:S

    return v0
.end method

.method public messageType()B
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public qos()Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 1

    .line 82
    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNSUBSCRIBE{dup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->dup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->messageId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topics([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;
    .locals 0

    .line 99
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public topics()[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method
