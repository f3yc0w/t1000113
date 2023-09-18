.class public final synthetic Lcom/netease/lava/api/IVideoRender$-CC;
.super Ljava/lang/Object;
.source "IVideoRender.java"


# direct methods
.method public static $default$getVideoBufferType(Lcom/netease/lava/api/IVideoRender;)Lcom/netease/lava/api/IVideoRender$VideoBufferType;
    .locals 1
    .param p0, "_this"    # Lcom/netease/lava/api/IVideoRender;

    .line 30
    sget-object v0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    return-object v0
.end method

.method public static $default$isExternalRender(Lcom/netease/lava/api/IVideoRender;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$setExternalRender(Lcom/netease/lava/api/IVideoRender;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public static $default$setVideoBufferType(Lcom/netease/lava/api/IVideoRender;Lcom/netease/lava/api/IVideoRender$VideoBufferType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    return-void
.end method

.method public static $default$setViewActionListener(Lcom/netease/lava/api/IVideoRender;Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewActionListener",
            "type"
        }
    .end annotation

    return-void
.end method
