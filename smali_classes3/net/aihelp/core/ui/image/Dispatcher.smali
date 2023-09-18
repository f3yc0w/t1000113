.class Lnet/aihelp/core/ui/image/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/image/Dispatcher$NetworkBroadcastReceiver;,
        Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;,
        Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;
    }
.end annotation


# static fields
.field static final AIRPLANE_MODE_CHANGE:I = 0xa

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final BATCH_DELAY:I = 0xc8

.field private static final DISPATCHER_THREAD_NAME:Ljava/lang/String; = "Dispatcher"

.field static final HUNTER_BATCH_COMPLETE:I = 0x8

.field static final HUNTER_COMPLETE:I = 0x4

.field static final HUNTER_DECODE_FAILED:I = 0x6

.field static final HUNTER_DELAY_NEXT_BATCH:I = 0x7

.field static final HUNTER_RETRY:I = 0x5

.field static final NETWORK_STATE_CHANGE:I = 0x9

.field static final REQUEST_BATCH_RESUME:I = 0xd

.field static final REQUEST_CANCEL:I = 0x2

.field static final REQUEST_GCED:I = 0x3

.field static final REQUEST_SUBMIT:I = 0x1

.field private static final RETRY_DELAY:I = 0x1f4

.field static final TAG_PAUSE:I = 0xb

.field static final TAG_RESUME:I = 0xc


# instance fields
.field airplaneMode:Z

.field final batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lnet/aihelp/core/ui/image/Cache;

.field final context:Landroid/content/Context;

.field final dispatcherThread:Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;

.field final downloader:Lnet/aihelp/core/ui/image/Downloader;

.field final failedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lnet/aihelp/core/ui/image/Action;",
            ">;"
        }
    .end annotation
.end field

.field final handler:Landroid/os/Handler;

.field final hunterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/ui/image/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final mainThreadHandler:Landroid/os/Handler;

.field final pausedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lnet/aihelp/core/ui/image/Action;",
            ">;"
        }
    .end annotation
.end field

.field final pausedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final receiver:Lnet/aihelp/core/ui/image/Dispatcher$NetworkBroadcastReceiver;

.field final scansNetworkChanges:Z

.field final service:Ljava/util/concurrent/ExecutorService;

.field final stats:Lnet/aihelp/core/ui/image/Stats;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lnet/aihelp/core/ui/image/Downloader;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;

    invoke-direct {v0}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->dispatcherThread:Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;

    .line 103
    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;->start()V

    .line 104
    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/core/ui/image/Utils;->flushStackLocalLeaks(Landroid/os/Looper;)V

    .line 105
    iput-object p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 107
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 108
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->failedActions:Ljava/util/Map;

    .line 109
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 110
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedTags:Ljava/util/Set;

    .line 111
    new-instance p2, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;-><init>(Landroid/os/Looper;Lnet/aihelp/core/ui/image/Dispatcher;)V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    .line 112
    iput-object p4, p0, Lnet/aihelp/core/ui/image/Dispatcher;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    .line 113
    iput-object p3, p0, Lnet/aihelp/core/ui/image/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 114
    iput-object p5, p0, Lnet/aihelp/core/ui/image/Dispatcher;->cache:Lnet/aihelp/core/ui/image/Cache;

    .line 115
    iput-object p6, p0, Lnet/aihelp/core/ui/image/Dispatcher;->stats:Lnet/aihelp/core/ui/image/Stats;

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->batch:Ljava/util/List;

    .line 117
    invoke-static {p1}, Lnet/aihelp/core/ui/image/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->airplaneMode:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 118
    invoke-static {p1, p2}, Lnet/aihelp/core/ui/image/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->scansNetworkChanges:Z

    .line 119
    new-instance p1, Lnet/aihelp/core/ui/image/Dispatcher$NetworkBroadcastReceiver;

    invoke-direct {p1, p0}, Lnet/aihelp/core/ui/image/Dispatcher$NetworkBroadcastReceiver;-><init>(Lnet/aihelp/core/ui/image/Dispatcher;)V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->receiver:Lnet/aihelp/core/ui/image/Dispatcher$NetworkBroadcastReceiver;

    .line 120
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Dispatcher$NetworkBroadcastReceiver;->register()V

    return-void
.end method

.method private batch(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 3

    .line 433
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p1, Lnet/aihelp/core/ui/image/BitmapHunter;->result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p1, Lnet/aihelp/core/ui/image/BitmapHunter;->result:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 439
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->batch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 441
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method private flushFailedActions()V
    .locals 5

    .line 396
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 398
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/Action;

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 401
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Action;->getRequest()Lnet/aihelp/core/ui/image/Request;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dispatcher"

    const-string v4, "replaying"

    invoke-static {v3, v4, v2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0, v1, v2}, Lnet/aihelp/core/ui/image/Dispatcher;->performSubmit(Lnet/aihelp/core/ui/image/Action;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logBatch(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/BitmapHunter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 446
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 447
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/ui/image/BitmapHunter;

    .line 448
    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    .line 449
    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/BitmapHunter;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_1
    invoke-static {v1}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatcher"

    const-string v1, "delivered"

    invoke-static {v0, v1, p1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private markForReplay(Lnet/aihelp/core/ui/image/Action;)V
    .locals 2

    .line 425
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 427
    iput-boolean v1, p1, Lnet/aihelp/core/ui/image/Action;->willReplay:Z

    .line 428
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private markForReplay(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 3

    .line 410
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getAction()Lnet/aihelp/core/ui/image/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/image/Dispatcher;->markForReplay(Lnet/aihelp/core/ui/image/Action;)V

    .line 414
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 418
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/image/Action;

    .line 419
    invoke-direct {p0, v2}, Lnet/aihelp/core/ui/image/Dispatcher;->markForReplay(Lnet/aihelp/core/ui/image/Action;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method dispatchAirplaneModeChange(Z)V
    .locals 3

    .line 171
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchCancel(Lnet/aihelp/core/ui/image/Action;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchComplete(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchFailed(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchPauseTag(Ljava/lang/Object;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchResumeTag(Ljava/lang/Object;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchRetry(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method dispatchSubmit(Lnet/aihelp/core/ui/image/Action;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method performAirplaneModeChange(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->airplaneMode:Z

    return-void
.end method

.method performBatchComplete()V
    .locals 3

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->batch:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->batch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 368
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/image/Dispatcher;->logBatch(Ljava/util/List;)V

    return-void
.end method

.method performCancel(Lnet/aihelp/core/ui/image/Action;)V
    .locals 4

    .line 215
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/BitmapHunter;

    const-string v2, "canceled"

    const-string v3, "Dispatcher"

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1, p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->detach(Lnet/aihelp/core/ui/image/Action;)V

    .line 219
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->cancel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getRequest()Lnet/aihelp/core/ui/image/Request;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getRequest()Lnet/aihelp/core/ui/image/Request;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "because paused request got canceled"

    invoke-static {v3, v2, v0, v1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/ui/image/Action;

    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getRequest()Lnet/aihelp/core/ui/image/Request;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from replaying"

    invoke-static {v3, v2, p1, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method performComplete(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 3

    .line 355
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getMemoryPolicy()I

    move-result v0

    invoke-static {v0}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldWriteToMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->cache:Lnet/aihelp/core/ui/image/Cache;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/aihelp/core/ui/image/Cache;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->batch(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    .line 360
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_1

    .line 361
    invoke-static {p1}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatcher"

    const-string v1, "batched"

    const-string v2, "for completion"

    invoke-static {v0, v1, p1, v2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method performError(Lnet/aihelp/core/ui/image/BitmapHunter;Z)V
    .locals 3

    .line 373
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-static {p1}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, " (will replay)"

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 375
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    .line 374
    invoke-static {v1, v2, v0, p2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->batch(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    return-void
.end method

.method performNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lnet/aihelp/core/ui/image/PicassoExecutorService;

    if-eqz v1, :cond_0

    .line 387
    check-cast v0, Lnet/aihelp/core/ui/image/PicassoExecutorService;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->adjustThreadCount(Landroid/net/NetworkInfo;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 391
    invoke-direct {p0}, Lnet/aihelp/core/ui/image/Dispatcher;->flushFailedActions()V

    :cond_1
    return-void
.end method

.method performPauseTag(Ljava/lang/Object;)V
    .locals 13

    .line 243
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/BitmapHunter;

    .line 251
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    .line 253
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getAction()Lnet/aihelp/core/ui/image/Action;

    move-result-object v3

    .line 254
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 255
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v3, :cond_3

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "\' was paused"

    const-string v8, "because tag \'"

    const-string v9, "paused"

    const-string v10, "Dispatcher"

    if-eqz v3, :cond_4

    .line 262
    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 263
    invoke-virtual {v1, v3}, Lnet/aihelp/core/ui/image/BitmapHunter;->detach(Lnet/aihelp/core/ui/image/Action;)V

    .line 264
    iget-object v11, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 266
    iget-object v3, v3, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v3, v11}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_7

    .line 272
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_7

    .line 273
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/aihelp/core/ui/image/Action;

    .line 274
    invoke-virtual {v5}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 278
    :cond_5
    invoke-virtual {v1, v5}, Lnet/aihelp/core/ui/image/BitmapHunter;->detach(Lnet/aihelp/core/ui/image/Action;)V

    .line 279
    iget-object v6, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {v5}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 281
    iget-object v5, v5, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v5}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v9, v5, v6}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 289
    :cond_7
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->cancel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz v2, :cond_1

    .line 292
    invoke-static {v1}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "canceled"

    const-string v3, "all actions paused"

    invoke-static {v10, v2, v1, v3}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method performResumeTag(Ljava/lang/Object;)V
    .locals 4

    .line 300
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/image/Action;

    .line 307
    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 317
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method performRetry(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 3

    .line 323
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0, p1, v1}, Lnet/aihelp/core/ui/image/Dispatcher;->performError(Lnet/aihelp/core/ui/image/BitmapHunter;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 331
    iget-boolean v2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->scansNetworkChanges:Z

    if-eqz v2, :cond_2

    .line 332
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-static {v0, v2}, Lnet/aihelp/core/ui/image/Utils;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 333
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 336
    :cond_2
    iget-boolean v2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->airplaneMode:Z

    invoke-virtual {p1, v2, v0}, Lnet/aihelp/core/ui/image/BitmapHunter;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_3

    .line 338
    invoke-static {p1}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "retrying"

    invoke-static {v1, v2, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ContentLengthException;

    if-eqz v0, :cond_4

    .line 341
    iget v0, p1, Lnet/aihelp/core/ui/image/BitmapHunter;->networkPolicy:I

    sget-object v1, Lnet/aihelp/core/ui/image/NetworkPolicy;->NO_CACHE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    iget v1, v1, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    or-int/2addr v0, v1

    iput v0, p1, Lnet/aihelp/core/ui/image/BitmapHunter;->networkPolicy:I

    .line 343
    :cond_4
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lnet/aihelp/core/ui/image/BitmapHunter;->future:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 346
    :cond_5
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->scansNetworkChanges:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->supportsReplay()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    .line 347
    :cond_6
    invoke-virtual {p0, p1, v1}, Lnet/aihelp/core/ui/image/Dispatcher;->performError(Lnet/aihelp/core/ui/image/BitmapHunter;Z)V

    if-eqz v1, :cond_7

    .line 349
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->markForReplay(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    :cond_7
    :goto_0
    return-void
.end method

.method performSubmit(Lnet/aihelp/core/ui/image/Action;)V
    .locals 1

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/ui/image/Dispatcher;->performSubmit(Lnet/aihelp/core/ui/image/Action;Z)V

    return-void
.end method

.method performSubmit(Lnet/aihelp/core/ui/image/Action;Z)V
    .locals 4

    .line 180
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    .line 181
    iget-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p2

    iget-boolean p2, p2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz p2, :cond_0

    .line 183
    iget-object p2, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p2}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "because tag \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 183
    invoke-static {v1, v0, p2, p1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/ui/image/BitmapHunter;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->attach(Lnet/aihelp/core/ui/image/Action;)V

    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p2

    iget-boolean p2, p2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz p2, :cond_3

    .line 197
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 202
    :cond_4
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-object v2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->cache:Lnet/aihelp/core/ui/image/Cache;

    iget-object v3, p0, Lnet/aihelp/core/ui/image/Dispatcher;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-static {v0, p0, v2, v3, p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->forRequest(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;Lnet/aihelp/core/ui/image/Action;)Lnet/aihelp/core/ui/image/BitmapHunter;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lnet/aihelp/core/ui/image/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 204
    iget-object v2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 206
    iget-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_5
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p2

    iget-boolean p2, p2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz p2, :cond_6

    .line 210
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    invoke-static {v1, p2, p1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method shutdown()V
    .locals 2

    .line 125
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lnet/aihelp/core/ui/image/PicassoExecutorService;

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 128
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    invoke-interface {v0}, Lnet/aihelp/core/ui/image/Downloader;->shutdown()V

    .line 129
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher;->dispatcherThread:Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherThread;->quit()Z

    .line 131
    sget-object v0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lnet/aihelp/core/ui/image/Dispatcher$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher$1;-><init>(Lnet/aihelp/core/ui/image/Dispatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
