.class synthetic Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$10;
.super Ljava/lang/Object;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$aihelp$core$net$mqtt$tansport$ProtocolCodec$BufferState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 653
    invoke-static {}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->values()[Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$10;->$SwitchMap$net$aihelp$core$net$mqtt$tansport$ProtocolCodec$BufferState:[I

    :try_start_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->FULL:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
