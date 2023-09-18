.class public Lnet/aihelp/core/net/mqtt/codec/SUBACK;
.super Ljava/lang/Object;
.source "SUBACK.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# static fields
.field public static final NO_GRANTED_QOS:[B

.field public static final TYPE:B = 0x9t


# instance fields
.field private grantedQos:[B

.field private messageId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 20
    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->NO_GRANTED_QOS:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->NO_GRANTED_QOS:[B

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

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

    .line 18
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/SUBACK;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/SUBACK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 31
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    .line 32
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->messageId:S

    .line 33
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->available()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readBuffer(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

    return-object p0
.end method

.method public encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 3

    .line 39
    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>(I)V

    .line 40
    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->messageId:S

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    .line 41
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write([B)V

    .line 43
    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    const/16 v2, 0x9

    .line 44
    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    .line 45
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The impossible happened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public grantedQos([B)Lnet/aihelp/core/net/mqtt/codec/SUBACK;
    .locals 0

    .line 56
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

    return-object p0
.end method

.method public grantedQos()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

    return-object v0
.end method

.method public messageId(S)Lnet/aihelp/core/net/mqtt/codec/SUBACK;
    .locals 0

    .line 65
    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->messageId:S

    return-object p0
.end method

.method public messageId()S
    .locals 1

    .line 61
    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->messageId:S

    return v0
.end method

.method public messageType()B
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUBACK{grantedQos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos:[B

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->messageId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
