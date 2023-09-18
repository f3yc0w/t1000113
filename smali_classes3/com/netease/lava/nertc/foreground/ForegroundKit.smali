.class public Lcom/netease/lava/nertc/foreground/ForegroundKit;
.super Ljava/lang/Object;
.source "ForegroundKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;,
        Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;,
        Lcom/netease/lava/nertc/foreground/ForegroundKit$ErrorCode;
    }
.end annotation


# static fields
.field public static final BACKGROUND_WAKEUP_TIME:Ljava/lang/String; = "background.wakeup.time"

.field public static final G2_APP_KEY:Ljava/lang/String; = "g2.app.key"

.field public static final INTENT_CONTENT:Ljava/lang/String; = "intent.content"

.field public static final INTENT_LARGE_ICON:Ljava/lang/String; = "intent.large.icon"

.field public static final INTENT_PENDINT_INTENT:Ljava/lang/String; = "intent.pending.intent"

.field public static final INTENT_REMOTE_VIEW:Ljava/lang/String; = "intent.remote.view"

.field public static final INTENT_SMALL_ICON:Ljava/lang/String; = "intent.samll.icon"

.field public static final INTENT_TITLE:Ljava/lang/String; = "intent.title"

.field private static final TAG:Ljava/lang/String; = "ForegroundKit"

.field private static foregroundKit:Lcom/netease/lava/nertc/foreground/ForegroundKit; = null

.field public static mCacheReport:Z = false


# instance fields
.field private config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

.field private foregroundService:Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

.field private foregroundServiceConnection:Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;

.field private mContext:Landroid/content/Context;

.field private openReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->openReady:Z

    .line 52
    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$102(Lcom/netease/lava/nertc/foreground/ForegroundKit;Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;)Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundService:Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    return-object p1
.end method

.method private checkEngineVaild()Z
    .locals 2

    .line 173
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/netease/lava/nertc/foreground/ForegroundKit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/netease/lava/nertc/foreground/ForegroundKit;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundKit:Lcom/netease/lava/nertc/foreground/ForegroundKit;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/netease/lava/nertc/foreground/ForegroundKit;

    invoke-direct {v1, p0}, Lcom/netease/lava/nertc/foreground/ForegroundKit;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundKit:Lcom/netease/lava/nertc/foreground/ForegroundKit;

    .line 65
    :cond_0
    sget-object p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundKit:Lcom/netease/lava/nertc/foreground/ForegroundKit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setConfigByNative(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "content",
            "icon",
            "largeIcon"
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    invoke-direct {v0}, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;-><init>()V

    .line 211
    iput-object p1, v0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->title:Ljava/lang/String;

    .line 212
    iput-object p2, v0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->content:Ljava/lang/String;

    .line 213
    iput p3, v0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->icon:I

    .line 214
    iput p4, v0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->LargeIcon:I

    .line 215
    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/foreground/ForegroundKit;->setConfig(Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;)I

    move-result p1

    return p1
.end method

.method private showActivity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "activityDir"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 492
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 493
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 494
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkFloatPermission()Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public checkNotifySetting()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 382
    :cond_0
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;J)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appKey",
            "backgroundTime"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 109
    sput-boolean v0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mCacheReport:Z

    .line 110
    iget-boolean v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->openReady:Z

    const-string v3, "startForeground"

    const-string v4, "pkg"

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 112
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundService:Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;->serviceStop()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundService:Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;->start()V

    .line 115
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundKit;->checkEngineVaild()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 117
    iget-object p2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p2

    .line 119
    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p2, v3, v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    sput-boolean v5, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mCacheReport:Z

    :goto_0
    return v0

    :cond_3
    const/4 p1, -0x2

    return p1

    .line 128
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 129
    iget-object v6, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    const-class v7, Lcom/netease/lava/nertc/foreground/ForegroundService;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v6, "g2.app.key"

    .line 130
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v6, 0x0

    cmp-long p1, p2, v6

    if-lez p1, :cond_5

    const-string p1, "background.wakeup.time"

    .line 132
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    :cond_5
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    if-eqz p1, :cond_b

    .line 136
    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_6

    .line 137
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->remoteViews:Landroid/widget/RemoteViews;

    const-string p2, "intent.remote.view"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->pendIntent:Landroid/content/Intent;

    if-eqz p1, :cond_7

    .line 140
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->pendIntent:Landroid/content/Intent;

    const-string p2, "intent.pending.intent"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    :cond_7
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->icon:I

    if-eq p1, v1, :cond_8

    .line 143
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->icon:I

    const-string p2, "intent.samll.icon"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    :cond_8
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 146
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->title:Ljava/lang/String;

    const-string p2, "intent.title"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_9
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->content:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 149
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget-object p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->content:Ljava/lang/String;

    const-string p2, "intent.content"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_a
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->LargeIcon:I

    if-eq p1, v1, :cond_b

    .line 152
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    iget p1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->LargeIcon:I

    const-string p2, "intent.large.icon"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :cond_b
    new-instance p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;-><init>(Lcom/netease/lava/nertc/foreground/ForegroundKit;Lcom/netease/lava/nertc/foreground/ForegroundKit$1;)V

    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundServiceConnection:Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;

    .line 157
    iget-object p2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2, p1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 158
    iput-boolean v5, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->openReady:Z

    .line 160
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundKit;->checkEngineVaild()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 161
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 162
    iget-object p2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p2

    .line 164
    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p2, v3, v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_c
    sput-boolean v5, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mCacheReport:Z

    :goto_1
    return v0
.end method

.method public isIgnoringBatteryOptimizations()Z
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "power"

    .line 434
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 436
    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public release()V
    .locals 2

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundServiceConnection:Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    .line 295
    sput-object v0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundKit:Lcom/netease/lava/nertc/foreground/ForegroundKit;

    const/4 v1, 0x0

    .line 296
    iput-boolean v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->openReady:Z

    .line 297
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundService:Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    .line 298
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->foregroundServiceConnection:Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;

    .line 299
    sput-boolean v1, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mCacheReport:Z

    return-void
.end method

.method public requestBatteryOptimization()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 473
    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public requestFloatPermission()Z
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 356
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 359
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public requestNotifyPermission()Z
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 398
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 399
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1a

    const-string v4, "android.settings.APP_NOTIFICATION_SETTINGS"

    if-lt v2, v3, :cond_1

    .line 400
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.provider.extra.APP_PACKAGE"

    .line 401
    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 402
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 403
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "app_package"

    .line 404
    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "app_uid"

    .line 405
    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 407
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    .line 408
    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const/high16 v2, 0x10000000

    .line 411
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public setConfig(Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 191
    iget v0, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->icon:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 196
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 197
    iget v0, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->LargeIcon:I

    if-eq v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->LargeIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->config:Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;

    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, -0x3

    return p1
.end method

.method public setWindowFlags(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 450
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x600080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 454
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public startVibrate([JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pattern",
            "repeat"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "vibrator"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 278
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public wakeUpAndUnlock()I
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v1, "power"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 236
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x3000001a

    const-string v2, "bright"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 243
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "unLock"

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 251
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    const/4 v0, 0x0

    return v0
.end method
