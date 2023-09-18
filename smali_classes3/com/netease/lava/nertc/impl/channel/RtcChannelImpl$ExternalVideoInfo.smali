.class Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;
.super Ljava/lang/Object;
.source "RtcChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalVideoInfo"
.end annotation


# instance fields
.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public eglHandler:Landroid/os/Handler;

.field private eglThread:Landroid/os/HandlerThread;

.field public externalEglBase:Lcom/netease/lava/webrtc/EglBase;

.field public rawI420:[B

.field public yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)Landroid/os/HandlerThread;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglThread:Landroid/os/HandlerThread;

    return-object p1
.end method
