.class public Lcom/netease/lava/nertc/foreground/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"

# interfaces
.implements Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ForegroundService"

.field private static final default_time:J = 0x927c0L


# instance fields
.field private G2AppKey:Ljava/lang/String;

.field private LargeIcon:I

.field private authenticate:Lcom/netease/lava/nertc/foreground/Authenticate;

.field private backgroundTime:J

.field private content:Ljava/lang/String;

.field private foreNotification:Landroid/app/Notification;

.field private icon:I

.field private pendIntent:Landroid/content/Intent;

.field private remoteViews:Landroid/widget/RemoteViews;

.field private stopService:Z

.field private title:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "ForegroundService"

    .line 41
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->title:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/nertc/foreground/ForegroundService;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->startForegroundService()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lava/nertc/foreground/ForegroundService;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopService:Z

    return p0
.end method

.method private acquireWakeLock()V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 223
    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ForegroundService"

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 226
    iget-wide v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->backgroundTime:J

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string v0, "acquire wakeLock successful."

    .line 227
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createNotification()V
    .locals 4

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    .line 159
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->title:Ljava/lang/String;

    invoke-direct {v2, v3, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 161
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->content:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 162
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->pendIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    move-object v0, v2

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 172
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->title:Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 174
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->content:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 181
    :cond_2
    iget v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->icon:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 182
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 185
    :cond_3
    iget v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->LargeIcon:I

    if-eq v2, v3, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->LargeIcon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 189
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_5

    .line 190
    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 193
    :cond_5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->foreNotification:Landroid/app/Notification;

    return-void
.end method

.method private releaseAuth()V
    .locals 1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->authenticate:Lcom/netease/lava/nertc/foreground/Authenticate;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/netease/lava/nertc/foreground/Authenticate;->release()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->authenticate:Lcom/netease/lava/nertc/foreground/Authenticate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "ForegroundService"

    const-string v1, "release wake lock successful."

    .line 239
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startForeground()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "startForeground"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Landroid/app/Notification;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "ForegroundService"

    const-string v3, "Not found startForeground(I,Notification,I) method."

    .line 203
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 206
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/high16 v5, 0x10000

    if-lt v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 208
    :try_start_1
    iget-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->foreNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v2, v1}, Lcom/netease/lava/nertc/foreground/ForegroundService;->startForeground(ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopForeground(Z)V

    .line 212
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->foreNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->foreNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    :goto_1
    return-void
.end method

.method private startForegroundService()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopService:Z

    .line 89
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->createNotification()V

    .line 90
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->startForeground()V

    .line 91
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->acquireWakeLock()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "intent.content"

    const-string v1, "intent.title"

    :try_start_0
    const-string v2, "background.wakeup.time"

    const-wide/32 v3, 0x927c0

    .line 58
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->backgroundTime:J

    const-string v2, "intent.remote.view"

    .line 59
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->remoteViews:Landroid/widget/RemoteViews;

    const-string v2, "intent.pending.intent"

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->pendIntent:Landroid/content/Intent;

    const-string v2, "intent.samll.icon"

    const/4 v3, -0x1

    .line 61
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->icon:I

    const-string v2, "intent.large.icon"

    .line 62
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->LargeIcon:I

    const-string v2, "g2.app.key"

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->G2AppKey:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->title:Ljava/lang/String;

    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->content:Ljava/lang/String;

    :cond_1
    const-string p1, "ForegroundService"

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind, background time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->backgroundTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remoteView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pendIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->pendIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LargeIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->LargeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->startForegroundService()V

    .line 76
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->G2AppKey:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/netease/lava/nertc/foreground/Authenticate;->getInstance(Ljava/lang/String;Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;)Lcom/netease/lava/nertc/foreground/Authenticate;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->authenticate:Lcom/netease/lava/nertc/foreground/Authenticate;

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/netease/lava/nertc/foreground/Authenticate;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_2
    :goto_0
    new-instance p1, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    invoke-direct {p1, p0}, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;-><init>(Lcom/netease/lava/nertc/foreground/ForegroundService;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ForegroundService"

    const-string v1, "onDestroy"

    .line 111
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopService:Z

    .line 113
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->releaseAuth()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "ForegroundService"

    const-string v1, "onUnbind"

    .line 96
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x927c0

    .line 98
    :try_start_0
    iput-wide v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->backgroundTime:J

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopForeground(Z)V

    .line 100
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->releaseWakeLock()V

    .line 101
    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->releaseAuth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public result(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    const-string v0, "ForegroundService"

    if-nez p1, :cond_0

    const-string p1, "auth check failed, stop foreground service."

    .line 130
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopForeground(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopSelf()V

    .line 133
    iput-boolean p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService;->stopService:Z

    goto :goto_0

    :cond_0
    const-string p1, "auth check successful."

    .line 135
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
