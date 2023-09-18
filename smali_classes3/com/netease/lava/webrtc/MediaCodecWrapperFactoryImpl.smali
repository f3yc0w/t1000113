.class Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl;
.super Ljava/lang/Object;
.source "MediaCodecWrapperFactoryImpl.java"

# interfaces
.implements Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl$MediaCodecWrapperImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createByCodecName(Ljava/lang/String;)Lcom/netease/lava/webrtc/MediaCodecWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl$MediaCodecWrapperImpl;

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl$MediaCodecWrapperImpl;-><init>(Landroid/media/MediaCodec;)V

    return-object v0
.end method
