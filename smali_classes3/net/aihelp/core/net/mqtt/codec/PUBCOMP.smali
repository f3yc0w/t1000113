.class public Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;
.super Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
.source "PUBCOMP.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# static fields
.field public static final TYPE:B = 0x7t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    return-object p1
.end method

.method public bridge synthetic messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    move-result-object p1

    return-object p1
.end method

.method public messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    return-object p1
.end method

.method public messageType()B
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
