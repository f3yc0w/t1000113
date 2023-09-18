.class public Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;
.super Ljava/lang/Object;
.source "LiteSDKVideoCanvas.java"


# static fields
.field public static final RENDER_FPS_CALLBACK_INTERVAL:J = 0x7d0L


# instance fields
.field public bufferType:I

.field public eglContext:Ljava/lang/Object;

.field public mirrorMode:I

.field public render:Lcom/netease/lava/api/IVideoRender;

.field public renderHashCode:Ljava/lang/String;

.field public renderMode:I

.field public useExternalRender:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->renderMode:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->mirrorMode:I

    .line 15
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->useExternalRender:Z

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->bufferType:I

    return-void
.end method


# virtual methods
.method public getBufferType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->bufferType:I

    return v0
.end method

.method public getEglContext()Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->eglContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getMirrorMode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->mirrorMode:I

    return v0
.end method

.method public getRender()Lcom/netease/lava/api/IVideoRender;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->render:Lcom/netease/lava/api/IVideoRender;

    return-object v0
.end method

.method public getRenderHashCode()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->renderHashCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->renderMode:I

    return v0
.end method

.method public isUseExternalRender()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;->useExternalRender:Z

    return v0
.end method
