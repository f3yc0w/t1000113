.class public Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;
.super Lcom/netease/lava/nertc/sdk/channel/NERtcChannel;
.source "RtcChannelImpl.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/VideoViewActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelName:Ljava/lang/String;

.field private final mEngineLock:Ljava/lang/Object;

.field private final mExternalVideoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;",
            "Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

.field private mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

.field private final mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field private permissionSecretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcCallback;ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelName",
            "callback",
            "isMain",
            "channelList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/lava/nertc/sdk/NERtcCallback;",
            "Z",
            "Ljava/util/List<",
            "Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannel;-><init>()V

    .line 105
    new-instance v0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    invoke-direct {v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mExternalVideoMap:Ljava/util/HashMap;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RtcChannelImpl_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "new RtcChannelImpl"

    .line 122
    invoke-static {v2, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    .line 124
    monitor-enter v1

    .line 125
    :try_start_0
    new-instance p1, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;

    invoke-direct {p1}, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;-><init>()V

    invoke-static {p1, v0}, Lcom/netease/yunxin/lite/LiteEngineCenter;->createEngine(Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;Lcom/netease/yunxin/lite/model/LiteSDKEngineSink;)Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    .line 126
    new-instance v2, Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;

    invoke-direct {v2}, Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;-><init>()V

    invoke-virtual {p1, v2}, Lcom/netease/yunxin/lite/LiteEngine;->initialize(Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;)I

    .line 127
    invoke-virtual {v0, p2, p3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->setCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;Z)V

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iput-object p4, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelList:Ljava/util/List;

    .line 130
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private convertVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "videoFrame"
        }
    .end annotation

    .line 1230
    sget-object v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    iget-object v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 1257
    :cond_0
    iput v1, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->videoFormat:I

    .line 1258
    iput v5, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->plane_count:I

    .line 1259
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    aput v4, v0, v4

    .line 1260
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    iget v2, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    mul-int/lit8 v2, v2, 0x4

    aput v2, v0, v4

    .line 1261
    iget v0, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v2, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v0, v0, v2

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer_length:J

    goto :goto_0

    .line 1246
    :cond_1
    iput v5, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->videoFormat:I

    .line 1247
    iput v5, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->plane_count:I

    .line 1248
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    aput v4, v0, v4

    .line 1249
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    iget v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    aput v1, v0, v4

    .line 1251
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    iget v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v4, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v1, v1, v4

    aput v1, v0, v3

    .line 1252
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    iget v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    aput v1, v0, v3

    .line 1254
    iget v0, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v5

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer_length:J

    goto :goto_0

    .line 1232
    :cond_2
    iput v4, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->videoFormat:I

    .line 1233
    iput v2, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->plane_count:I

    .line 1234
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    aput v4, v0, v4

    .line 1235
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    iget v6, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    aput v6, v0, v4

    .line 1237
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    iget v4, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v6, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v4, v4, v6

    aput v4, v0, v3

    .line 1238
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    iget v4, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    div-int/2addr v4, v5

    aput v4, v0, v3

    .line 1240
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    iget v3, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v4, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    div-int/2addr v3, v1

    aput v3, v0, v5

    .line 1241
    iget-object v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    iget v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    div-int/2addr v1, v5

    aput v1, v0, v5

    .line 1243
    iget v0, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v5

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer_length:J

    .line 1266
    :goto_0
    iget v0, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iput v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->width:I

    .line 1267
    iget v0, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    iput v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->height:I

    .line 1268
    iget v0, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    iput v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->rotation:I

    .line 1269
    iget-object p1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    iput-object p1, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer:[B

    .line 1270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->timestamp:J

    return-void
.end method

.method private createExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->releaseExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    .line 1185
    new-instance v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;-><init>(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;)V

    .line 1186
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mExternalVideoMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "render",
            "name"
        }
    .end annotation

    .line 1274
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;-><init>()V

    .line 1275
    instance-of v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoView;

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    .line 1276
    move-object v1, p1

    check-cast v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoView;

    iget-object v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    .line 1277
    iget-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    check-cast v1, Lcom/netease/lava/webrtc/SurfaceViewRenderer;

    invoke-virtual {v1, p2}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setLogName(Ljava/lang/String;)V

    .line 1278
    iget-object p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    check-cast p2, Lcom/netease/lava/webrtc/SurfaceViewRenderer;

    invoke-virtual {p2, v2, v3}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setReportFpsInterval(J)V

    goto :goto_0

    .line 1279
    :cond_0
    instance-of v1, p1, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;

    if-eqz v1, :cond_1

    .line 1280
    move-object v1, p1

    check-cast v1, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;

    iget-object v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    .line 1281
    iget-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    check-cast v1, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;

    invoke-virtual {v1, p2}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setLogName(Ljava/lang/String;)V

    .line 1282
    iget-object p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    check-cast p2, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;

    invoke-virtual {p2, v2, v3}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setReportFpsInterval(J)V

    goto :goto_0

    .line 1284
    :cond_1
    iput-object p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    .line 1286
    :goto_0
    invoke-static {p1}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->renderHashCode:Ljava/lang/String;

    .line 1287
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->isExternalRender(Lcom/netease/lava/api/IVideoRender;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->useExternalRender:Z

    .line 1288
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getBufferType(Lcom/netease/lava/api/IVideoRender;)I

    move-result p1

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->bufferType:I

    return-object v0
.end method

.method private getChannelUid()J
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getMainChannelUid()J

    move-result-wide v0

    return-wide v0
.end method

.method private isChannelJoinedWithUserId(Ljava/lang/String;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelName",
            "userId"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 161
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->isChannelJoinedWithUserId(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$pushExternalVideoFrame$0(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/opengl/EGLContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "externalVideoInfo",
            "currentEglContext"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lcom/netease/lava/webrtc/EglBase14Impl$Context;

    invoke-direct {v0, p1}, Lcom/netease/lava/webrtc/EglBase14Impl$Context;-><init>(Landroid/opengl/EGLContext;)V

    sget-object p1, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 644
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 645
    iget-object p0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    :cond_0
    return-void
.end method

.method private releaseExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mExternalVideoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    if-eqz v1, :cond_2

    .line 1193
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1196
    :cond_0
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "release egl handler start"

    invoke-static {v2, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;

    invoke-direct {v3, p0, v1}, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;-><init>(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1208
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/netease/yunxin/lite/util/LooperUtils;->quitSafely(Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 1209
    iput-object v2, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    .line 1210
    invoke-static {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->access$000(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)Landroid/os/HandlerThread;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1212
    :try_start_1
    invoke-static {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->access$000(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)Landroid/os/HandlerThread;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/os/HandlerThread;->join(J)V

    .line 1213
    invoke-static {v1, v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->access$002(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1215
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1218
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mExternalVideoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    monitor-exit v0

    return-void

    .line 1194
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1219
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public EnableSpatializer(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnableSpatializer enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1067
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->EnableSpatializer(Z)I

    move-result p1

    return p1
.end method

.method public EnableSpatializerRoomEffects(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnableSpatializerRoomEffects enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1043
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->EnableSpatializerRoomEffects(Z)I

    move-result p1

    return p1
.end method

.method public SetSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NERtcSpatializerRenderMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1059
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->SetSpatializerRenderMode(I)I

    move-result p1

    return p1
.end method

.method public SetSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomProperty"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NERtcSpatializerRoomProperty room_property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1051
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->SetSpatializerRoomProperty(Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;)I

    move-result p1

    return p1
.end method

.method public UpdateSpatializerAudioRecvRange(IILcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audible_distance",
            "conversational_distance",
            "roll_off"
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateSpatializerAudioRecvRange audible_distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \uff0cconversational_distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", roll_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1027
    :cond_0
    invoke-static {p3}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteDistanceRolloffModel(Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I

    move-result p3

    .line 1026
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->UpdateSpatializerAudioRecvRange(III)I

    move-result p1

    return p1
.end method

.method public UpdateSpatializerSelfPosition(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateSpatializerSelfPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1034
    :cond_0
    iget-object v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mSpeakerPosition:[F

    iget-object v2, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mSpeakerQuaternion:[F

    iget-object v3, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mHeadPosition:[F

    iget-object p1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;->mHeadQuaternion:[F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/netease/yunxin/lite/LiteEngine;->UpdateSpatializerSelfPosition([F[F[F[F)I

    move-result p1

    return p1
.end method

.method public addLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfo",
            "addLiveTaskCallback"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLiveStreamTask taskInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \uff0ccallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 748
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper;->convertLiveStreamTaskInfo(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;

    move-result-object p1

    new-instance v1, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;-><init>(Ljava/lang/Object;)V

    .line 747
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->addLiveStreamTask(Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;)I

    move-result p1

    return p1
.end method

.method public adjustChannelPlaybackSignalVolume(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustChannelPlaybackSignalVolume, volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 904
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->adjustChannelPlaybackSignalVolume(I)I

    move-result p1

    return p1
.end method

.method public adjustLoopBackRecordingSignalVolume(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustLoopBackRecordingSignalVolume, volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 557
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->adjustLoopbackRecordingSignalVolume(I)I

    move-result p1

    return p1
.end method

.method public adjustUserPlaybackSignalVolume(JI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "volume"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustUserPlaybackSignalVolume uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 895
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->adjustUserPlaybackSignalVolume(JI)I

    move-result p1

    return p1
.end method

.method public checkHasJoined(Ljava/lang/String;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelName",
            "userId"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    .line 166
    invoke-direct {v1, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->isChannelJoinedWithUserId(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public enableAudioVolumeIndication(ZIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval",
            "enableVad"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAudioVolumeIndication, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enableVad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    int-to-long v1, p2

    .line 886
    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->enableAudioVolumeIndication(ZJZ)I

    move-result p1

    return p1
.end method

.method public enableDualStreamMode(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDualStreamMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 366
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableDualStreamMode(Z)I

    move-result p1

    return p1
.end method

.method public enableLocalAudio(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocalAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->enableLocalAudio(ZI)I

    move-result p1

    return p1
.end method

.method public enableLocalData(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocalData enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1102
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableLocalData(Z)I

    move-result p1

    return p1
.end method

.method public enableLocalSubStreamAudio(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocalSubStreamAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 1075
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->enableLocalAudio(ZI)I

    move-result p1

    return p1
.end method

.method public enableLocalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "enable"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocalVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 403
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableLocalVideo(ZI)I

    move-result p1

    return p1
.end method

.method public enableLocalVideo(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableLocalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "intent",
            "callback"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLoopbackRecording, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 548
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I

    move-result p1

    return p1
.end method

.method public enableMediaPub(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaType",
            "enable"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMediaPub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mediaType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 284
    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableMediaPub(ZI)I

    move-result p1

    return p1
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getChannelName()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 738
    :cond_0
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getConnectionState()I

    move-result v0

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->liteChannelStateToSDK(I)I

    move-result v0

    return v0
.end method

.method public getCurrentCamera()I
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentCamera"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getCurrentCamera()I

    move-result v0

    return v0
.end method

.method public getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    return-object v0
.end method

.method public getMainChannelUid()J
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-direct {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getChannelUid()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public joinChannel(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinChannel, token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getMainChannelUid()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->joinChannel(Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I

    move-result p1

    return p1
.end method

.method public joinChannel(Ljava/lang/String;J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "userId"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinChannel, token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", channelName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->joinChannel(Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I

    move-result p1

    return p1
.end method

.method public joinChannel(Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "userId",
            "channelOptions"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinChannel, token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", channelName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "channelOptions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 223
    invoke-virtual {p4}, Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/16 v1, 0x7535

    if-nez v0, :cond_1

    return v1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->checkHasJoined(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has already joined with: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7534

    return p1

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteProbeEngine;->getConnectionState()I

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "engine is in probe status"

    .line 233
    iget-object p2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "errorInfo"

    .line 236
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelName"

    .line 237
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 241
    :goto_1
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    .line 242
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "startLastmileProbeTest"

    .line 241
    invoke-virtual {p1, p3, v1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3, p4}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteJoinParameter(Ljava/lang/String;Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->join(Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;)I

    move-result p1

    return p1
.end method

.method public synthetic lambda$releaseExternalVideo$1$RtcChannelImpl(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "externalVideoInfo"
        }
    .end annotation

    .line 1198
    iget-object v0, p1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 1200
    iput-object v1, p1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->externalEglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 1202
    :cond_0
    iget-object v0, p1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/YuvConverter;->release()V

    .line 1204
    iput-object v1, p1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 1206
    :cond_1
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v0, "release egl handler end"

    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public leaveChannel()I
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "leaveChannel"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->leave()I

    move-result v0

    return v0
.end method

.method public mirrorChange(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "mirror"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 1159
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVideoMirrorMode(II)I

    return-void
.end method

.method public muteLocalAudioStream(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteLocalAudioStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->muteLocalAudio(ZI)I

    move-result p1

    return p1
.end method

.method public muteLocalSubStreamAudio(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteLocalSubStreamAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 1084
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->muteLocalAudio(ZI)I

    move-result p1

    return p1
.end method

.method public muteLocalVideoStream(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->muteLocalVideoStream(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public muteLocalVideoStream(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mute",
            "streamType"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteLocalVideoStream: ,streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 417
    :cond_0
    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->muteLocalVideo(ZI)I

    move-result p1

    return p1
.end method

.method public pushExternalAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;I)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "type"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v1, :cond_0

    const/16 p1, 0x7535

    .line 704
    monitor-exit v0

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 708
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string p2, "frame is null"

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    .line 709
    monitor-exit v0

    return p1

    .line 712
    :cond_1
    iget-object v2, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;->audioData:[B

    iget v3, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;->samplesPerChannel:I

    iget v4, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;->sampleRate:I

    iget v5, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;->numberOfChannels:I

    iget-wide v6, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;->syncTimestamp:J

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/netease/yunxin/lite/LiteEngine;->pushExternalAudioFrame([BIIIJI)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 714
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z

    move-result p1

    return p1
.end method

.method public pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "frame"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 609
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    monitor-enter v2

    .line 610
    :try_start_0
    iget-object v3, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mExternalVideoMap:Ljava/util/HashMap;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    .line 611
    iget-object v5, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 614
    :cond_0
    new-instance v5, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;

    invoke-direct {v5}, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;-><init>()V

    .line 615
    sget-object v7, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    iget-object v8, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v8}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_8

    if-eq v7, v10, :cond_8

    if-eq v7, v9, :cond_1

    const/4 v9, 0x5

    if-eq v7, v9, :cond_1

    goto/16 :goto_3

    .line 634
    :cond_1
    iget-object v7, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    if-nez v7, :cond_3

    .line 635
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-nez v7, :cond_2

    .line 636
    new-instance v7, Landroid/os/HandlerThread;

    const-string v9, "NERtc_External_GLThread"

    invoke-direct {v7, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->access$002(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 637
    invoke-static {v3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->access$000(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 638
    new-instance v7, Landroid/os/Handler;

    invoke-static {v3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->access$000(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)Landroid/os/HandlerThread;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    .line 639
    new-instance v7, Lcom/netease/lava/webrtc/YuvConverter;

    invoke-direct {v7}, Lcom/netease/lava/webrtc/YuvConverter;-><init>()V

    iput-object v7, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 640
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v7

    .line 641
    iget-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    new-instance v12, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;

    invoke-direct {v12, v3, v7}, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;-><init>(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/opengl/EGLContext;)V

    invoke-static {v9, v12}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnThreadBlocking(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 649
    :cond_2
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    .line 650
    new-instance v7, Lcom/netease/lava/webrtc/YuvConverter;

    invoke-direct {v7}, Lcom/netease/lava/webrtc/YuvConverter;-><init>()V

    iput-object v7, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 653
    :cond_3
    :goto_0
    iget-object v7, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    sget-object v9, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_RGB:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    if-ne v7, v9, :cond_4

    sget-object v7, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->RGB:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    :goto_1
    move-object v15, v7

    .line 656
    new-instance v7, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget v13, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v14, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    iget v9, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    iget-object v12, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->transformMatrix:[F

    .line 658
    invoke-static {v12}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v17

    iget-object v12, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->eglHandler:Landroid/os/Handler;

    iget-object v8, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    const/16 v20, 0x0

    move-object/from16 v18, v12

    move-object v12, v7

    move/from16 v16, v9

    move-object/from16 v19, v8

    invoke-direct/range {v12 .. v20}, Lcom/netease/lava/webrtc/TextureBufferImpl;-><init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;)V

    .line 660
    invoke-interface {v7}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v8

    if-nez v8, :cond_5

    .line 662
    monitor-exit v2

    return v6

    .line 664
    :cond_5
    iget-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v9, :cond_6

    iget-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 665
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-interface {v7}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v12

    invoke-interface {v7}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v13

    mul-int v12, v12, v13

    mul-int/lit8 v12, v12, 0x3

    div-int/2addr v12, v11

    if-eq v9, v12, :cond_7

    .line 666
    :cond_6
    invoke-interface {v7}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v9

    invoke-interface {v7}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v12

    mul-int v9, v9, v12

    mul-int/lit8 v9, v9, 0x3

    div-int/2addr v9, v11

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 667
    iget-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    new-array v9, v9, [B

    iput-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    .line 669
    :cond_7
    iget-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 670
    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v11

    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 671
    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v13

    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v15

    iget-object v9, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v4, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    move-object/from16 v16, v9

    move/from16 v17, v6

    move/from16 v18, v4

    .line 670
    invoke-static/range {v10 .. v18}, Lcom/netease/lava/webrtc/YuvHelper;->I420Copy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 673
    iget-object v4, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 674
    iget-object v4, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 675
    iget-object v3, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    iput-object v3, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    .line 676
    invoke-interface {v8}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->release()V

    .line 677
    invoke-interface {v7}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->release()V

    .line 678
    sget-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object v3, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 679
    invoke-direct {v1, v0, v5}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->convertVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;)V

    goto :goto_3

    .line 621
    :cond_8
    iget-object v4, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    array-length v4, v4

    iget v6, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v7, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v6, v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/2addr v6, v11

    if-eq v4, v6, :cond_a

    .line 622
    :cond_9
    iget v4, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v6, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    mul-int v4, v4, v6

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v11

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    .line 624
    :cond_a
    iget-object v4, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    iget-object v6, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    sget-object v7, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->RGBA:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    if-ne v6, v7, :cond_b

    goto :goto_2

    :cond_b
    const/4 v9, 0x2

    :goto_2
    iget v6, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    iget v7, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    iget-object v8, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    invoke-static {v4, v9, v6, v7, v8}, Lcom/netease/yunxin/lite/util/LiteYuvHelper;->nativeToI420([BIII[B)I

    .line 628
    iget-object v3, v3, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;->rawI420:[B

    iput-object v3, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    .line 629
    sget-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object v3, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 630
    invoke-direct {v1, v0, v5}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->convertVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;)V

    goto :goto_3

    .line 617
    :cond_c
    invoke-direct {v1, v0, v5}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->convertVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;)V

    .line 685
    :goto_3
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static/range {p1 .. p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/netease/yunxin/lite/LiteEngine;->pushExternalVideoFrame(ILcom/netease/yunxin/lite/model/LiteSDKVideoFrame;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    :goto_4
    monitor-exit v2

    return v6

    .line 612
    :cond_e
    :goto_5
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 686
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "release start"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-eqz v1, :cond_0

    .line 1169
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/LiteEngine;->unInitialize()I

    .line 1170
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static {v1}, Lcom/netease/yunxin/lite/LiteEngineCenter;->destroyEngine(Lcom/netease/yunxin/lite/LiteEngine;)V

    const/4 v1, 0x0

    .line 1171
    iput-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    .line 1173
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->releaseExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    .line 1175
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->releaseExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    .line 1176
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1177
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "release finish"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeLiveStreamTask(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "deleteLiveTaskCallback"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLiveStreamTask taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \uff0ccallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 769
    :cond_0
    new-instance v1, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->removeLiveStreamTask(Ljava/lang/String;Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;)I

    move-result p1

    return p1
.end method

.method public reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventName",
            "customIdentify",
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCustomEvent eventName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", customIdentify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1147
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x7533

    return p1

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    goto :goto_0

    .line 1150
    :cond_2
    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1151
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendData(Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v1, :cond_0

    const/16 p1, 0x7535

    .line 1118
    monitor-exit v0

    return p1

    :cond_0
    const/16 v1, 0x7533

    if-nez p1, :cond_1

    .line 1122
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v2, "data frame is null"

    invoke-static {p1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    monitor-exit v0

    return v1

    .line 1126
    :cond_1
    iget-wide v2, p1, Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;->dataSize:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 1127
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v2, "data size is 0"

    invoke-static {p1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    monitor-exit v0

    return v1

    .line 1131
    :cond_2
    iget-wide v1, p1, Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;->dataSize:J

    const-wide/32 v3, 0x1f400

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 1132
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "data size is overflow"

    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x75ab

    .line 1133
    monitor-exit v0

    return p1

    .line 1136
    :cond_3
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    iget-object v2, p1, Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;->externalData:[B

    iget-wide v3, p1, Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;->dataSize:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/yunxin/lite/LiteEngine;->sendData([BJ)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendSEIMsg(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seiMsg"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSEIMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x2

    .line 788
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->sendSEIMessage(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public sendSEIMsg(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seiMsg",
            "streamType"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSEIMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 779
    :cond_0
    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->sendSEIMessage(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setAudioProcessObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioProcessObserver"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioProcessObserver, observer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->setAudioProcessObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAudioSubscribeOnlyBy([J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidArray"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioSubscribeOnlyBy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1017
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioSubscribeOnlyBy([J)I

    move-result p1

    return p1
.end method

.method public setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureConfig"
        }
    .end annotation

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureConfig",
            "streamType"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCaptureConfig captureConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    const-string p2, "setCameraCaptureConfig"

    const/16 v1, 0x7533

    .line 326
    invoke-virtual {v0, p2, v1, p1}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1

    .line 330
    :cond_1
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteCameraConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;)Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;

    move-result-object p1

    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setCameraCaptureConfig(Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;I)I

    move-result p1

    return p1
.end method

.method public setChannelCallback(Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelCallback"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChannelCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->setChannelCallback(Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;)V

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RtcChannelImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method public setChannelProfile(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelProfile"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChannelProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 205
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setChannelProfile(I)I

    move-result p1

    return p1
.end method

.method public setClientRole(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClientRole: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 730
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setUserRole(I)I

    move-result p1

    return p1
.end method

.method public setExternalAudioSource(ZII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "sampleRate",
            "channels"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalAudioSource, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 698
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setExternalAudioSource(ZIII)I

    move-result p1

    return p1
.end method

.method public setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "enable"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalVideoSource, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 592
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setExternalVideoSource(ZI)I

    move-result v0

    if-eqz p2, :cond_1

    if-nez v0, :cond_2

    .line 595
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    goto :goto_0

    .line 598
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->releaseExternalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public setExternalVideoSource(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public setLocalExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "renderer"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalExternalVideoRenderer streamType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", renderer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 452
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;

    invoke-direct {v0, p2}, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;-><init>(Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)V

    :cond_1
    const-string v1, "0_video"

    .line 455
    invoke-direct {p0, v0, v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    move-result-object v1

    .line 456
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setupLocalCanvas(ILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I

    move-result v1

    .line 458
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "streamType"

    .line 460
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getVideoStreamTypeString(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "renderer"

    .line 461
    invoke-static {p2}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bufferType"

    .line 462
    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getBufferType(Lcom/netease/lava/api/IVideoRender;)I

    move-result p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 464
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 466
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "setLocalExternalVideoRenderer"

    invoke-virtual {p1, v0, v1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1
.end method

.method public setLocalMediaPriority(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "isPreemptive"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalMediaPriority priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,isPreemptive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 824
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalMediaPriority(IZ)I

    move-result p1

    return p1
.end method

.method public setLocalPublishFallbackOption(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalPublishFallbackOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 912
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setPublishFallbackOption(I)I

    move-result p1

    return p1
.end method

.method public setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoConfig"
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoConfig",
            "streamType"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalVideoConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    const-string p2, "setLocalVideoConfig"

    const/16 v1, 0x7533

    .line 346
    invoke-virtual {v0, p2, v1, p1}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1

    .line 350
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk.start.video.with.back.camera"

    .line 352
    iget-boolean v2, p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->frontCamera:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 357
    :goto_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;)Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;

    move-result-object p1

    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setVideoEncoderConfig(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;I)I

    move-result p1

    return p1
.end method

.method public setMainChannelNERtcCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainChannelNERtcCallback  ,callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->isMainChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->setCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;Z)V

    :cond_0
    return-void
.end method

.method public setRemoteExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JLcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "uid",
            "renderer"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteExternalVideoRenderer streamType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", renderer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 480
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;

    invoke-direct {v0, p4}, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;-><init>(Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)V

    :cond_1
    const-string v1, "0_video"

    .line 483
    invoke-direct {p0, v0, v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    move-result-object v1

    .line 484
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result v3

    invoke-virtual {v2, p2, p3, v3, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setupRemoteCanvas(JILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I

    move-result v1

    .line 486
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "streamType"

    .line 488
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getVideoStreamTypeString(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    .line 489
    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "renderer"

    .line 490
    invoke-static {p4}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bufferType"

    .line 491
    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getBufferType(Lcom/netease/lava/api/IVideoRender;)I

    move-result p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 496
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "setRemoteExternalVideoRenderer"

    invoke-virtual {p1, p3, v1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1
.end method

.method public setRemoteHighPriorityAudioStream(ZJ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "uid"
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteHighPriorityAudioStream enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 1008
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setHighPriorityRemoteAudioStream(ZJI)I

    move-result p1

    return p1
.end method

.method public setRemoteSubscribeFallbackOption(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteSubscribeFallbackOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 921
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setSubscribeFallbackOption(I)I

    move-result p1

    return p1
.end method

.method public setStatsObserver(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsObserver"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatsObserver, observer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 195
    :cond_1
    new-instance v1, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

    invoke-direct {v1, p1}, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;-><init>(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setMediaStatsObserver(Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsObserver;)I

    return-void
.end method

.method public setupLocalSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupLocalSubStreamVideoCanvas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const-string v0, "0_screen"

    .line 426
    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 428
    invoke-interface {p1, p0, v1}, Lcom/netease/lava/api/IVideoRender;->setViewActionListener(Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V

    .line 430
    :cond_1
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->setupLocalCanvas(ILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I

    move-result p1

    return p1
.end method

.method public setupLocalVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupLocalVideoCanvas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const-string v0, "0_video"

    .line 375
    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 377
    invoke-interface {p1, p0, v1}, Lcom/netease/lava/api/IVideoRender;->setViewActionListener(Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->setupLocalCanvas(ILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I

    move-result p1

    return p1
.end method

.method public setupRemoteSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "render",
            "uid"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupRemoteSubStreamVideoCanvas render: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/4 v1, 0x3

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setupRemoteCanvas(JILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I

    move-result p1

    return p1
.end method

.method public setupRemoteVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "render",
            "uid"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupRemoteVideoCanvas render: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->createLiteSDKVideoCanvas(Lcom/netease/lava/api/IVideoRender;Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;

    move-result-object p1

    .line 389
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setupRemoteCanvas(JILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I

    move-result p1

    return p1
.end method

.method public startChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startChannelMediaRelay config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "startChannelMediaRelay"

    const/16 v2, 0x7533

    if-nez p1, :cond_1

    .line 834
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "startChannelMediaRelay failed! config is null"

    invoke-static {p1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v2

    .line 839
    :cond_1
    invoke-virtual {p1}, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->getDstMediaInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 840
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaRelay(Ljava/util/Map;)[Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->startMediaRelayInfos([Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;)I

    move-result p1

    return p1

    .line 841
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "startChannelMediaRelay failed! getDstMediaInfo is empty"

    invoke-static {p1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v2
.end method

.method public startLastmileProbeTest(Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLastmileProbeTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/16 v1, 0x7535

    if-nez v0, :cond_0

    .line 927
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v0, "not found lite engine"

    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, ""

    const-string v2, "startLastmileProbeTest"

    if-eqz p1, :cond_6

    .line 930
    iget v3, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedUplinkBitrate:I

    const v4, 0x186a0

    if-gt v4, v3, :cond_6

    iget v3, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedUplinkBitrate:I

    const v5, 0x4c4b40

    if-lt v5, v3, :cond_6

    iget v3, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedDownlinkBitrate:I

    if-gt v4, v3, :cond_6

    iget v3, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedDownlinkBitrate:I

    if-lt v5, v3, :cond_6

    iget-boolean v3, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeUplink:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeDownlink:Z

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 938
    :cond_1
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {v3}, Lcom/netease/yunxin/lite/LiteEngine;->getConnectionState()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 940
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot probe for connection state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v2, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1

    .line 946
    :cond_2
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/netease/yunxin/lite/LiteProbeEngine;->getConnectionState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 947
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "already is in probe testing"

    invoke-static {p1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v2, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1

    .line 953
    :cond_3
    new-instance v1, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;

    invoke-direct {v1}, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;-><init>()V

    const/4 v3, 0x3

    .line 954
    iput v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;->mode:I

    .line 955
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mSinkWrapper:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    invoke-static {v1, v3}, Lcom/netease/yunxin/lite/LiteEngineCenter;->createProbeEngine(Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;Lcom/netease/yunxin/lite/model/LiteSDKProbeEngineSink;)Lcom/netease/yunxin/lite/LiteProbeEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    .line 956
    new-instance v3, Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;

    invoke-direct {v3}, Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;-><init>()V

    invoke-virtual {v1, v3}, Lcom/netease/yunxin/lite/LiteProbeEngine;->initialize(Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 958
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/16 v4, 0x7531

    invoke-virtual {p1, v2, v4, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    .line 960
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    invoke-static {p1}, Lcom/netease/yunxin/lite/LiteEngineCenter;->destroyProbeEngine(Lcom/netease/yunxin/lite/LiteProbeEngine;)V

    .line 961
    iput-object v3, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    .line 962
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v0, "initialize probe engine failed"

    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 966
    :cond_4
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;-><init>()V

    .line 967
    iget-boolean v1, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeUplink:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->upLink:Z

    .line 968
    iget-boolean v1, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeDownlink:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->downLink:Z

    .line 969
    iget v1, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedUplinkBitrate:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->expectedUpLinkBitrate:J

    .line 970
    iget p1, p1, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedDownlinkBitrate:I

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->expectedDownLinkBitrate:J

    .line 971
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    invoke-virtual {p1, v0}, Lcom/netease/yunxin/lite/LiteProbeEngine;->startProbe(Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 973
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    invoke-static {v0}, Lcom/netease/yunxin/lite/LiteEngineCenter;->destroyProbeEngine(Lcom/netease/yunxin/lite/LiteProbeEngine;)V

    .line 974
    iput-object v3, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    .line 975
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start probe failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return p1

    .line 932
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "start probe failed for config is invalid"

    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/16 v1, 0x7533

    invoke-virtual {p1, v2, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v1
.end method

.method public startScreenCapture(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenConfig",
            "intent",
            "callback"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScreenCapture screenConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 525
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string p2, "startScreenCapture error invalid param! intent is null"

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_1

    const/16 p1, 0x7535

    return p1

    .line 531
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteSubStreamConfig(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->startScreenCapture(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;)I

    move-result p1

    return p1
.end method

.method public stopChannelMediaRelay()I
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopChannelMediaRelay"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 877
    :cond_0
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->stopMediaRelayInfos()I

    move-result v0

    return v0
.end method

.method public stopLastmileProbeTest()I
    .locals 4

    .line 981
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopLastmileProbeTest"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const/16 v2, 0x7535

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "not found lite engine"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    if-nez v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "not already is in probe testing"

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 993
    :cond_1
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteProbeEngine;->stopProbe()I

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v2, "stop probe failed"

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    invoke-static {v1}, Lcom/netease/yunxin/lite/LiteEngineCenter;->destroyProbeEngine(Lcom/netease/yunxin/lite/LiteProbeEngine;)V

    const/4 v1, 0x0

    .line 998
    iput-object v1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mProbeEngine:Lcom/netease/yunxin/lite/LiteProbeEngine;

    return v0
.end method

.method public stopScreenCapture()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopScreenCapture"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->stopScreenCapture()I

    :cond_0
    return-void
.end method

.method public subscribeAllRemoteAudioStreams(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribe"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeAllRemoteAudioStreams subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 311
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->subscribeAllRemoteAudio(Z)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteAudioStream(JZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeRemoteAudioStream uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/netease/yunxin/lite/LiteEngine;->subscribeRemoteAudio(ZJI)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteData(ZJ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subscribe",
            "userID"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeRemoteData subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , userID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1111
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->subscribeRemoteData(ZJ)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteSubStreamAudio(JZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeRemoteSubStreamAudio uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 1093
    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/netease/yunxin/lite/LiteEngine;->subscribeRemoteAudio(ZJI)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteSubStreamVideo(JZ)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeRemoteSubStreamVideo, uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v2, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    move v3, p3

    move-wide v6, p1

    .line 577
    invoke-virtual/range {v2 .. v7}, Lcom/netease/yunxin/lite/LiteEngine;->subscribeRemoteVideo(ZIIJ)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteVideoStream(JLcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType",
            "subscribe"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeRemoteVideoStream uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " NERtcRemoteVideoStreamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v2, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p3}, Lcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;->ordinal()I

    move-result p3

    move v4, p3

    :goto_0
    const/4 v5, 0x2

    move v3, p4

    move-wide v6, p1

    .line 567
    invoke-virtual/range {v2 .. v7}, Lcom/netease/yunxin/lite/LiteEngine;->subscribeRemoteVideo(ZIIJ)I

    move-result p1

    return p1
.end method

.method public switchCamera()I
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->switchCamera()I

    move-result v0

    return v0
.end method

.method public switchCameraWithPosition(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraPos"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCameraWithPosition, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 516
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->switchCameraWithPosition(I)I

    move-result p1

    return p1
.end method

.method public takeLocalSnapshot(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "callback"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeLocalSnapshot streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p2, :cond_1

    .line 798
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string p2, "takeLocalSnapshot failed! callback is null"

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 801
    :cond_1
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    new-instance v1, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;-><init>(Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->takeLocalSnapshot(ILcom/netease/yunxin/lite/model/LiteSDKTakeSnapshotCallback;)I

    move-result p1

    return p1
.end method

.method public takeRemoteSnapshot(JLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType",
            "callback"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeRemoteSnapshot uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p4, :cond_1

    .line 812
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string p2, "takeRemoteSnapshot failed! callback is null"

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 815
    :cond_1
    invoke-static {p3}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p3

    new-instance v1, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;

    invoke-direct {v1, p4}, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;-><init>(Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/netease/yunxin/lite/LiteEngine;->takeRemoteSnapshot(JILcom/netease/yunxin/lite/model/LiteSDKTakeSnapshotCallback;)I

    move-result p1

    return p1
.end method

.method public updateChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateChannelMediaRelay config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "updateChannelMediaRelay"

    const/16 v2, 0x7533

    if-nez p1, :cond_1

    .line 856
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "updateChannelMediaRelay failed! config is null"

    invoke-static {p1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v2

    .line 861
    :cond_1
    invoke-virtual {p1}, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->getDstMediaInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 862
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaRelay(Ljava/util/Map;)[Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->updateMediaRelayInfos([Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;)I

    move-result p1

    return p1

    .line 863
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    const-string v3, "updateChannelMediaRelay failed! getDstMediaInfo is empty"

    invoke-static {p1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v2
.end method

.method public updateLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfo",
            "updateLiveTaskCallback"
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLiveStreamTask taskInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \uff0ccallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 759
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamHelper;->convertLiveStreamTaskInfo(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;)Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;

    move-result-object p1

    new-instance v1, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;-><init>(Ljava/lang/Object;)V

    .line 758
    invoke-virtual {v0, p1, v1}, Lcom/netease/yunxin/lite/LiteEngine;->updateLiveStreamTask(Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;)I

    move-result p1

    return p1
.end method

.method public updatePermissionKey(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePermissionKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->mLiteEngine:Lcom/netease/yunxin/lite/LiteEngine;

    if-nez v0, :cond_1

    const/16 p1, 0x7535

    return p1

    .line 255
    :cond_1
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->permissionSecretKey:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->updatePermissionKey(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
