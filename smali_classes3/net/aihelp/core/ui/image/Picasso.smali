.class public Lnet/aihelp/core/ui/image/Picasso;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;,
        Lnet/aihelp/core/ui/image/Picasso$Builder;,
        Lnet/aihelp/core/ui/image/Picasso$CleanupThread;,
        Lnet/aihelp/core/ui/image/Picasso$Priority;,
        Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;,
        Lnet/aihelp/core/ui/image/Picasso$Listener;
    }
.end annotation


# static fields
.field static final HANDLER:Landroid/os/Handler;

.field static final TAG:Ljava/lang/String; = "Picasso"

.field static volatile singleton:Lnet/aihelp/core/ui/image/Picasso;


# instance fields
.field final cache:Lnet/aihelp/core/ui/image/Cache;

.field private final cleanupThread:Lnet/aihelp/core/ui/image/Picasso$CleanupThread;

.field final context:Landroid/content/Context;

.field final defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field final dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

.field indicatorsEnabled:Z

.field private final listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

.field volatile loggingEnabled:Z

.field final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTransformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

.field shutdown:Z

.field final stats:Lnet/aihelp/core/ui/image/Stats;

.field final targetToAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lnet/aihelp/core/ui/image/Action;",
            ">;"
        }
    .end annotation
.end field

.field final targetToDeferredRequestCreator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lnet/aihelp/core/ui/image/DeferredRequestCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    new-instance v0, Lnet/aihelp/core/ui/image/Picasso$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/ui/image/Picasso$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 163
    sput-object v0, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Picasso$Listener;Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;Ljava/util/List;Lnet/aihelp/core/ui/image/Stats;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/aihelp/core/ui/image/Dispatcher;",
            "Lnet/aihelp/core/ui/image/Cache;",
            "Lnet/aihelp/core/ui/image/Picasso$Listener;",
            "Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;",
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/RequestHandler;",
            ">;",
            "Lnet/aihelp/core/ui/image/Stats;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    .line 189
    iput-object p3, p0, Lnet/aihelp/core/ui/image/Picasso;->cache:Lnet/aihelp/core/ui/image/Cache;

    .line 190
    iput-object p4, p0, Lnet/aihelp/core/ui/image/Picasso;->listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

    .line 191
    iput-object p5, p0, Lnet/aihelp/core/ui/image/Picasso;->requestTransformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    .line 192
    iput-object p8, p0, Lnet/aihelp/core/ui/image/Picasso;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p6, :cond_0

    .line 195
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 196
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 p3, p3, 0x7

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    new-instance p3, Lnet/aihelp/core/ui/image/ResourceRequestHandler;

    invoke-direct {p3, p1}, Lnet/aihelp/core/ui/image/ResourceRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    .line 203
    invoke-interface {p4, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_1
    new-instance p3, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler;

    invoke-direct {p3, p1}, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance p3, Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;

    invoke-direct {p3, p1}, Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance p3, Lnet/aihelp/core/ui/image/AssetRequestHandler;

    invoke-direct {p3, p1}, Lnet/aihelp/core/ui/image/AssetRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance p3, Lnet/aihelp/core/ui/image/FileRequestHandler;

    invoke-direct {p3, p1}, Lnet/aihelp/core/ui/image/FileRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance p1, Lnet/aihelp/core/ui/image/NetworkRequestHandler;

    iget-object p2, p2, Lnet/aihelp/core/ui/image/Dispatcher;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    invoke-direct {p1, p2, p7}, Lnet/aihelp/core/ui/image/NetworkRequestHandler;-><init>(Lnet/aihelp/core/ui/image/Downloader;Lnet/aihelp/core/ui/image/Stats;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso;->requestHandlers:Ljava/util/List;

    .line 212
    iput-object p7, p0, Lnet/aihelp/core/ui/image/Picasso;->stats:Lnet/aihelp/core/ui/image/Stats;

    .line 213
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToAction:Ljava/util/Map;

    .line 214
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 215
    iput-boolean p9, p0, Lnet/aihelp/core/ui/image/Picasso;->indicatorsEnabled:Z

    .line 216
    iput-boolean p10, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    .line 217
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 218
    new-instance p2, Lnet/aihelp/core/ui/image/Picasso$CleanupThread;

    sget-object p3, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lnet/aihelp/core/ui/image/Picasso$CleanupThread;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Picasso;->cleanupThread:Lnet/aihelp/core/ui/image/Picasso$CleanupThread;

    .line 219
    invoke-virtual {p2}, Lnet/aihelp/core/ui/image/Picasso$CleanupThread;->start()V

    return-void
.end method

.method private deliverAction(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;Lnet/aihelp/core/ui/image/Action;Ljava/lang/Exception;)V
    .locals 2

    .line 593
    invoke-virtual {p3}, Lnet/aihelp/core/ui/image/Action;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 596
    :cond_0
    invoke-virtual {p3}, Lnet/aihelp/core/ui/image/Action;->willReplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToAction:Ljava/util/Map;

    invoke-virtual {p3}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 603
    invoke-virtual {p3, p1, p2}, Lnet/aihelp/core/ui/image/Action;->complete(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    .line 604
    iget-boolean p1, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz p1, :cond_4

    .line 605
    iget-object p1, p3, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 608
    :cond_3
    invoke-virtual {p3, p4}, Lnet/aihelp/core/ui/image/Action;->error(Ljava/lang/Exception;)V

    .line 609
    iget-boolean p1, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz p1, :cond_4

    .line 610
    iget-object p1, p3, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "errored"

    invoke-static {v0, p3, p1, p2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static get()Lnet/aihelp/core/ui/image/Picasso;
    .locals 3

    .line 706
    sget-object v0, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    if-nez v0, :cond_1

    .line 707
    const-class v0, Lnet/aihelp/core/ui/image/Picasso;

    monitor-enter v0

    .line 708
    :try_start_0
    sget-object v1, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    if-nez v1, :cond_0

    .line 709
    new-instance v1, Lnet/aihelp/core/ui/image/Picasso$Builder;

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/aihelp/core/ui/image/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Picasso$Builder;->build()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v1

    sput-object v1, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    .line 711
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 713
    :cond_1
    :goto_0
    sget-object v0, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    return-object v0
.end method

.method public static setSingletonInstance(Lnet/aihelp/core/ui/image/Picasso;)V
    .locals 2

    .line 722
    const-class v0, Lnet/aihelp/core/ui/image/Picasso;

    monitor-enter v0

    .line 723
    :try_start_0
    sget-object v1, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    if-nez v1, :cond_0

    .line 724
    sput-object p0, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    goto :goto_0

    :cond_0
    const-string p0, "TAG"

    const-string v1, "Singleton instance already exists."

    .line 726
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public areIndicatorsEnabled()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Picasso;->indicatorsEnabled:Z

    return v0
.end method

.method cancelExistingRequest(Ljava/lang/Object;)V
    .locals 2

    .line 616
    invoke-static {}, Lnet/aihelp/core/ui/image/Utils;->checkMain()V

    .line 617
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/ui/image/Action;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Action;->cancel()V

    .line 620
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchCancel(Lnet/aihelp/core/ui/image/Action;)V

    .line 622
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 623
    check-cast p1, Landroid/widget/ImageView;

    .line 624
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 625
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/ui/image/DeferredRequestCreator;

    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->cancel()V

    :cond_1
    return-void
.end method

.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "view cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelRequest(Landroid/widget/RemoteViews;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    invoke-direct {v0, p1, p2}, Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remoteViews cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelRequest(Lnet/aihelp/core/ui/image/Target;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 6

    .line 263
    invoke-static {}, Lnet/aihelp/core/ui/image/Utils;->checkMain()V

    if-eqz p1, :cond_4

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/aihelp/core/ui/image/Action;

    .line 272
    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Action;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 278
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 281
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/ui/image/DeferredRequestCreator;

    .line 282
    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->cancel()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 265
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancel requests with null tag."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method complete(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 7

    .line 539
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getAction()Lnet/aihelp/core/ui/image/Action;

    move-result-object v0

    .line 540
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 542
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-void

    .line 549
    :cond_3
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getData()Lnet/aihelp/core/ui/image/Request;

    move-result-object v2

    iget-object v2, v2, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    .line 550
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getException()Ljava/lang/Exception;

    move-result-object v5

    .line 551
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 552
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getLoadedFrom()Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 555
    invoke-direct {p0, v6, p1, v0, v5}, Lnet/aihelp/core/ui/image/Picasso;->deliverAction(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;Lnet/aihelp/core/ui/image/Action;Ljava/lang/Exception;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 560
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 561
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/aihelp/core/ui/image/Action;

    .line 562
    invoke-direct {p0, v6, p1, v4, v5}, Lnet/aihelp/core/ui/image/Picasso;->deliverAction(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;Lnet/aihelp/core/ui/image/Action;Ljava/lang/Exception;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 566
    :cond_5
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Picasso;->listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

    if-eqz p1, :cond_6

    if-eqz v5, :cond_6

    .line 567
    invoke-interface {p1, p0, v2, v5}, Lnet/aihelp/core/ui/image/Picasso$Listener;->onImageLoadFailed(Lnet/aihelp/core/ui/image/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method

.method defer(Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/DeferredRequestCreator;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method enqueueAndSubmit(Lnet/aihelp/core/ui/image/Action;)V
    .locals 2

    .line 515
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 519
    iget-object v1, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_0
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->submit(Lnet/aihelp/core/ui/image/Action;)V

    return-void
.end method

.method getRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/RequestHandler;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->requestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getSnapshot()Lnet/aihelp/core/ui/image/StatsSnapshot;
    .locals 1

    .line 467
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Stats;->createSnapshot()Lnet/aihelp/core/ui/image/StatsSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 395
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->cache:Lnet/aihelp/core/ui/image/Cache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/aihelp/core/ui/image/Cache;->clearKeyUri(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public invalidate(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 422
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->invalidate(Landroid/net/Uri;)V

    return-void

    .line 420
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 1

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->invalidate(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    return v0
.end method

.method public load(I)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 2

    if-eqz p1, :cond_0

    .line 384
    new-instance v0, Lnet/aihelp/core/ui/image/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lnet/aihelp/core/ui/image/RequestCreator;-><init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/net/Uri;I)V

    return-object v0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource ID must not be zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(Landroid/net/Uri;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 2

    .line 327
    new-instance v0, Lnet/aihelp/core/ui/image/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/aihelp/core/ui/image/RequestCreator;-><init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Ljava/io/File;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 2

    if-nez p1, :cond_0

    .line 368
    new-instance p1, Lnet/aihelp/core/ui/image/RequestCreator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;-><init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/net/Uri;I)V

    return-object p1

    .line 370
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->load(Landroid/net/Uri;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 2

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "^(/.+)+\\.(png|PNG|jpg|JPG|jpeg|JPEG)$"

    .line 347
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->load(Landroid/net/Uri;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    return-object p1

    .line 350
    :cond_1
    new-instance p1, Lnet/aihelp/core/ui/image/RequestCreator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;-><init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/net/Uri;I)V

    return-object p1
.end method

.method public pauseTag(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchPauseTag(Ljava/lang/Object;)V

    return-void

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 529
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->cache:Lnet/aihelp/core/ui/image/Cache;

    invoke-interface {v0, p1}, Lnet/aihelp/core/ui/image/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Stats;->dispatchCacheHit()V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Stats;->dispatchCacheMiss()V

    :goto_0
    return-object p1
.end method

.method resumeAction(Lnet/aihelp/core/ui/image/Action;)V
    .locals 4

    .line 573
    iget v0, p1, Lnet/aihelp/core/ui/image/Action;->memoryPolicy:I

    invoke-static {v0}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "Main"

    if-eqz v0, :cond_1

    .line 579
    sget-object v3, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-direct {p0, v0, v3, p1, v1}, Lnet/aihelp/core/ui/image/Picasso;->deliverAction(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;Lnet/aihelp/core/ui/image/Action;Ljava/lang/Exception;)V

    .line 580
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_2

    .line 581
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "completed"

    invoke-static {v2, v1, p1, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 585
    :cond_1
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Picasso;->enqueueAndSubmit(Lnet/aihelp/core/ui/image/Action;)V

    .line 586
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_2

    .line 587
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resumed"

    invoke-static {v2, v0, p1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public resumeTag(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchResumeTag(Ljava/lang/Object;)V

    return-void

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndicatorsEnabled(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Picasso;->indicatorsEnabled:Z

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 474
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Picasso;->shutdown:Z

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->cache:Lnet/aihelp/core/ui/image/Cache;

    invoke-interface {v0}, Lnet/aihelp/core/ui/image/Cache;->clear()V

    .line 478
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->cleanupThread:Lnet/aihelp/core/ui/image/Picasso$CleanupThread;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Picasso$CleanupThread;->shutdown()V

    .line 479
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Stats;->shutdown()V

    .line 480
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Dispatcher;->shutdown()V

    .line 481
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/DeferredRequestCreator;

    .line 482
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->cancel()V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Picasso;->shutdown:Z

    .line 486
    sget-object v0, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x0

    .line 487
    sput-object v0, Lnet/aihelp/core/ui/image/Picasso;->singleton:Lnet/aihelp/core/ui/image/Picasso;

    :cond_2
    return-void
.end method

.method submit(Lnet/aihelp/core/ui/image/Action;)V
    .locals 1

    .line 525
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchSubmit(Lnet/aihelp/core/ui/image/Action;)V

    return-void
.end method

.method transformRequest(Lnet/aihelp/core/ui/image/Request;)Lnet/aihelp/core/ui/image/Request;
    .locals 3

    .line 496
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso;->requestTransformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    invoke-interface {v0, p1}, Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;->transformRequest(Lnet/aihelp/core/ui/image/Request;)Lnet/aihelp/core/ui/image/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request transformer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/ui/image/Picasso;->requestTransformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    .line 499
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
