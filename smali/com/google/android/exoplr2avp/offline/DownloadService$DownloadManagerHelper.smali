.class final Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadManagerHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

.field private downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

.field private final foregroundAllowed:Z

.field private scheduledRequirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

.field private final scheduler:Lcom/google/android/exoplr2avp/scheduler/Scheduler;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplr2avp/offline/DownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/offline/DownloadManager;ZLcom/google/android/exoplr2avp/scheduler/Scheduler;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplr2avp/offline/DownloadManager;",
            "Z",
            "Lcom/google/android/exoplr2avp/scheduler/Scheduler;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplr2avp/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    .line 944
    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    .line 945
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->foregroundAllowed:Z

    .line 946
    iput-object p4, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplr2avp/scheduler/Scheduler;

    .line 947
    iput-object p5, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    .line 948
    invoke-virtual {p2, p0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->addListener(Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;)V

    .line 949
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/offline/DownloadManager;ZLcom/google/android/exoplr2avp/scheduler/Scheduler;Ljava/lang/Class;Lcom/google/android/exoplr2avp/offline/DownloadService$1;)V
    .locals 0

    .line 926
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/offline/DownloadManager;ZLcom/google/android/exoplr2avp/scheduler/Scheduler;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;)Lcom/google/android/exoplr2avp/offline/DownloadManager;
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    return-object p0
.end method

.method private cancelScheduler()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "scheduler"
        }
    .end annotation

    .line 1087
    new-instance v0, Lcom/google/android/exoplr2avp/scheduler/Requirements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;-><init>(I)V

    .line 1088
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->schedulerNeedsUpdate(Lcom/google/android/exoplr2avp/scheduler/Requirements;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplr2avp/scheduler/Scheduler;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/scheduler/Scheduler;->cancel()Z

    .line 1090
    iput-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    :cond_0
    return-void
.end method

.method private restartService()V
    .locals 4

    .line 1099
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->foregroundAllowed:Z

    const-string v1, "DownloadService"

    if-eqz v0, :cond_0

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    const-string v3, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1102
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/exoplr2avp/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to restart (foreground launch restriction)"

    .line 1107
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    const-string v3, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1114
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "Failed to restart (process is idle)"

    .line 1118
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private schedulerNeedsUpdate(Lcom/google/android/exoplr2avp/scheduler/Requirements;)Z
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private serviceMayNeedRestart()Z
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$800(Lcom/google/android/exoplr2avp/offline/DownloadService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public attachService(Lcom/google/android/exoplr2avp/offline/DownloadService;)V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 954
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadService$DownloadManagerHelper$Ilc8REH_yDlfBCR2_1qczNdjNdU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadService$DownloadManagerHelper$Ilc8REH_yDlfBCR2_1qczNdjNdU;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;Lcom/google/android/exoplr2avp/offline/DownloadService;)V

    .line 962
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public detachService(Lcom/google/android/exoplr2avp/offline/DownloadService;)V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 p1, 0x0

    .line 969
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    return-void
.end method

.method public synthetic lambda$attachService$0$DownloadService$DownloadManagerHelper(Lcom/google/android/exoplr2avp/offline/DownloadService;)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$300(Lcom/google/android/exoplr2avp/offline/DownloadService;Ljava/util/List;)V

    return-void
.end method

.method public onDownloadChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/offline/Download;Ljava/lang/Exception;)V
    .locals 0

    .line 1025
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-eqz p1, :cond_0

    .line 1026
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$400(Lcom/google/android/exoplr2avp/offline/DownloadService;Lcom/google/android/exoplr2avp/offline/Download;)V

    .line 1028
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->serviceMayNeedRestart()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    invoke-static {p1}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$500(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DownloadService"

    const-string p2, "DownloadService wasn\'t running. Restarting."

    .line 1033
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->restartService()V

    :cond_1
    return-void
.end method

.method public onDownloadRemoved(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/offline/Download;)V
    .locals 0

    .line 1040
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-eqz p1, :cond_0

    .line 1041
    invoke-static {p1}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$600(Lcom/google/android/exoplr2avp/offline/DownloadService;)V

    :cond_0
    return-void
.end method

.method public synthetic onDownloadsPausedChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener$-CC;->$default$onDownloadsPausedChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V

    return-void
.end method

.method public final onIdle(Lcom/google/android/exoplr2avp/offline/DownloadManager;)V
    .locals 0

    .line 1047
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-eqz p1, :cond_0

    .line 1048
    invoke-static {p1}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$700(Lcom/google/android/exoplr2avp/offline/DownloadService;)V

    :cond_0
    return-void
.end method

.method public onInitialized(Lcom/google/android/exoplr2avp/offline/DownloadManager;)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplr2avp/offline/DownloadService;

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadService;->access$300(Lcom/google/android/exoplr2avp/offline/DownloadService;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onRequirementsStateChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/scheduler/Requirements;I)V
    .locals 0

    .line 1057
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    return-void
.end method

.method public onWaitingForRequirementsChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 1064
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getDownloadsPaused()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1065
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->serviceMayNeedRestart()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1069
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 1070
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1071
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/offline/Download;

    iget v0, v0, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    if-nez v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->restartService()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateScheduler()Z
    .locals 6

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->isWaitingForRequirements()Z

    move-result v0

    .line 982
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplr2avp/scheduler/Scheduler;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    if-nez v0, :cond_1

    .line 987
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    return v2

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getRequirements()Lcom/google/android/exoplr2avp/scheduler/Requirements;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplr2avp/scheduler/Scheduler;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/scheduler/Scheduler;->getSupportedRequirements(Lcom/google/android/exoplr2avp/scheduler/Requirements;)Lcom/google/android/exoplr2avp/scheduler/Requirements;

    move-result-object v1

    .line 993
    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 994
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    return v3

    .line 998
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->schedulerNeedsUpdate(Lcom/google/android/exoplr2avp/scheduler/Requirements;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1003
    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplr2avp/scheduler/Scheduler;

    const-string v5, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-interface {v4, v0, v1, v5}, Lcom/google/android/exoplr2avp/scheduler/Scheduler;->schedule(Lcom/google/android/exoplr2avp/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1004
    iput-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    return v2

    :cond_4
    const-string v0, "DownloadService"

    const-string v1, "Failed to schedule restart"

    .line 1007
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    return v3
.end method
