.class public Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;
.super Ljava/lang/Object;
.source "RendererGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/RendererGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglRenderInfo"
.end annotation


# instance fields
.field renderTimeNs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field swapBufferTimeNs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->swapBufferTimeNs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAvgRenderTimeNs()F
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    monitor-enter v0

    const-wide/16 v2, 0x0

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 68
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v2, v5

    goto :goto_0

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v1, v2

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "RendererGatherer"

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvgRenderTimeNs throws IllegalArgumentException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    monitor-exit v0

    return v1

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_2
    return v1
.end method

.method public getUid()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->uid:J

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->swapBufferTimeNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setRenderTimeNs(J)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->renderTimeNs:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "RendererGatherer"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderTimeNs throws IllegalArgumentException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSwapBufferTimeNs(J)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->swapBufferTimeNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->swapBufferTimeNs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->swapBufferTimeNs:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUid(J)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RendererGatherer"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-wide p1, p0, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->uid:J

    return-void
.end method
