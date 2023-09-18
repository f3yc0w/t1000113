.class Lcom/netease/lava/nertc/impl/NERtcCore$1;
.super Ljava/lang/Object;
.source "NERtcCore.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/IVideoFrameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/nertc/impl/NERtcCore;->setVideoCallback(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field filterdFrame:Lcom/netease/lava/webrtc/VideoFrame;

.field rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

.field final synthetic this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

.field final synthetic val$textureWithI420:Z

.field final synthetic val$videoCallback:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;


# direct methods
.method constructor <init>(Lcom/netease/lava/nertc/impl/NERtcCore;ZLcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$videoCallback",
            "val$textureWithI420"
        }
    .end annotation

    .line 872
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    iput-boolean p2, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->val$textureWithI420:Z

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->val$videoCallback:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 873
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    .line 874
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->filterdFrame:Lcom/netease/lava/webrtc/VideoFrame;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onVideoFrameFilter$0$NERtcCore$1(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "videoCallback",
            "videoFrame"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$200(Lcom/netease/lava/nertc/impl/NERtcCore;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$300(Lcom/netease/lava/nertc/impl/NERtcCore;)Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    check-cast v1, Lcom/netease/lava/webrtc/EglBase$Context;

    sget-object v2, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$202(Lcom/netease/lava/nertc/impl/NERtcCore;Lcom/netease/lava/webrtc/EglBase;)Lcom/netease/lava/webrtc/EglBase;

    .line 907
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$200(Lcom/netease/lava/nertc/impl/NERtcCore;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 908
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$200(Lcom/netease/lava/nertc/impl/NERtcCore;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-interface {p1, v0}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;->onVideoCallback(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 914
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->filterdFrame:Lcom/netease/lava/webrtc/VideoFrame;

    return-void

    .line 920
    :cond_1
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->isUseGlFinish()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 921
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_0

    .line 923
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 925
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-static {p1, p2}, Lcom/netease/lava/nertc/impl/VideoFrameUtils;->getWebRtcVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Lcom/netease/lava/webrtc/VideoFrame;)Lcom/netease/lava/webrtc/VideoFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->filterdFrame:Lcom/netease/lava/webrtc/VideoFrame;

    return-void
.end method

.method public onVideoFrameFilter(Lcom/netease/lava/webrtc/VideoFrame;)Lcom/netease/lava/webrtc/VideoFrame;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFrame"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$000(Lcom/netease/lava/nertc/impl/NERtcCore;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NERtcGLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 882
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$002(Lcom/netease/lava/nertc/impl/NERtcCore;Landroid/os/Handler;)Landroid/os/Handler;

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    if-nez v0, :cond_1

    .line 886
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    .line 889
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    .line 890
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    .line 891
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->timeStamp:J

    .line 892
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    iget v0, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    iget v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 893
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    iget-object v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    iget-object v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v1, v1

    if-ge v1, v0, :cond_3

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    .line 895
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    iget-object v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$102(Lcom/netease/lava/nertc/impl/NERtcCore;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 897
    :cond_3
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->val$textureWithI420:Z

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    .line 898
    invoke-static {v2}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$100(Lcom/netease/lava/nertc/impl/NERtcCore;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 897
    invoke-static {p1, v0, v1, v2}, Lcom/netease/lava/nertc/impl/VideoFrameUtils;->getNeRTCVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;ZLcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Ljava/nio/ByteBuffer;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->rtcVideoFrame:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 904
    :cond_4
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->this$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->access$000(Lcom/netease/lava/nertc/impl/NERtcCore;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->val$videoCallback:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;

    new-instance v2, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;

    invoke-direct {v2, p0, v1, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$1$8UoSqZj7MnDzUoxq2QknhvkPrQw;-><init>(Lcom/netease/lava/nertc/impl/NERtcCore$1;Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Lcom/netease/lava/webrtc/VideoFrame;)V

    invoke-static {v0, v2}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnThreadBlocking(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 927
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore$1;->filterdFrame:Lcom/netease/lava/webrtc/VideoFrame;

    return-object p1
.end method
