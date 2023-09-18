.class Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field private isReleased:Z

.field final synthetic this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 599
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private maybeRetryRequest(Landroid/os/Message;Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 648
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;

    .line 649
    iget-boolean v4, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 652
    :cond_0
    iget v4, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->errorCount:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 653
    iget v4, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->errorCount:I

    iget-object v7, v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 654
    invoke-static {v7}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v7

    if-le v4, v7, :cond_1

    return v5

    .line 657
    :cond_1
    new-instance v4, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v10, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->taskId:J

    iget-object v12, v2, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v13, v2, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    iget-object v14, v2, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    iget-wide v6, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    sub-long v17, v17, v6

    iget-wide v6, v2, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->bytesLoaded:J

    move-object v9, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 666
    new-instance v6, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    invoke-direct {v6, v8}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(I)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_2

    .line 669
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    goto :goto_0

    .line 670
    :cond_2
    new-instance v7, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v7

    .line 671
    :goto_0
    iget-object v7, v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 672
    invoke-static {v7}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    move-result-object v7

    new-instance v8, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->errorCount:I

    invoke-direct {v8, v4, v6, v2, v3}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-interface {v7, v8}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-nez v4, :cond_3

    return v5

    .line 679
    :cond_3
    monitor-enter p0

    .line 680
    :try_start_0
    iget-boolean v4, v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v4, :cond_4

    .line 681
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 682
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 684
    :cond_4
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 614
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;

    .line 617
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 623
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto :goto_0

    .line 626
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;

    .line 620
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    .line 634
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 629
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->maybeRetryRequest(Landroid/os/Message;Lcom/google/android/exoplr2avp/drm/MediaDrmCallbackException;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 637
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->taskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 638
    monitor-enter p0

    .line 639
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v2, :cond_3

    .line 640
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$ResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    .line 641
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$ResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 642
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 644
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method post(ILjava/lang/Object;Z)V
    .locals 8

    .line 603
    new-instance v7, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;

    .line 605
    invoke-static {}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->getNewId()J

    move-result-wide v1

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    .line 609
    invoke-virtual {p0, p1, v7}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 689
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestHandler;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
