.class final Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;
.super Ljava/lang/Object;
.source "WrapEGLTextureHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;)Lcom/netease/lava/webrtc/WrapEGLTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/netease/lava/webrtc/WrapEGLTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->val$sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    iput-object p2, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netease/lava/webrtc/WrapEGLTextureHelper;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_0
    new-instance v1, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;

    iget-object v2, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->val$sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    iget-object v3, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->val$handler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " create failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WrapEGLTextureHelper"

    invoke-static {v3, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;->call()Lcom/netease/lava/webrtc/WrapEGLTextureHelper;

    move-result-object v0

    return-object v0
.end method
