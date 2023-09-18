.class public Lnet/aihelp/core/net/mqtt/client/MQTTException;
.super Ljava/io/IOException;
.source "MQTTException.java"


# instance fields
.field public final connack:Lnet/aihelp/core/net/mqtt/codec/CONNACK;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/aihelp/core/net/mqtt/codec/CONNACK;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/MQTTException;->connack:Lnet/aihelp/core/net/mqtt/codec/CONNACK;

    return-void
.end method
