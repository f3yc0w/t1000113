.class final Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;Z)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/netease/lava/webrtc/SurfaceTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$alignTimestamps:Z

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;ZLjava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    iput-object p2, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$alignTimestamps:Z

    iput-object p4, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 63
    :try_start_0
    new-instance v1, Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    iget-object v2, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    iget-object v3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iget-boolean v4, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$alignTimestamps:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/netease/lava/webrtc/SurfaceTextureHelper$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " create failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceTextureHelper"

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

    .line 58
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;->call()Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method
