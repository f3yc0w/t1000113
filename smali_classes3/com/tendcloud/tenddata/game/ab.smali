.class public Lcom/tendcloud/tenddata/game/ab;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ab$b;,
        Lcom/tendcloud/tenddata/game/ab$c;,
        Lcom/tendcloud/tenddata/game/ab$a;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/String; = null

.field public static B:Z = false

.field public static C:Ljava/lang/String; = null

.field public static D:Z = false

.field public static final E:I = 0x6400000

.field static final F:Ljava/lang/String; = "WiFi"

.field static final G:Ljava/lang/String; = "All"

.field static H:Ljava/lang/String; = null

.field public static final I:Ljava/lang/String; = "Android+TD+V4.0.27 gp"

.field static J:J = 0x0L

.field public static K:I = 0x0

.field public static L:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field public static final M:I = 0x1b7740

.field public static final N:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final O:J = 0x7530L

.field public static final P:I = 0x64

.field public static final Q:Ljava/lang/String; = "TD_APP_ID"

.field public static final R:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static S:Ljava/util/HashMap; = null

.field private static final T:Ljava/lang/String; = "+V"

.field private static final U:I = 0x78

.field private static final V:I = 0x1e

.field private static final W:I = 0x3e8

.field public static final a:Z = false

.field public static b:Z = false

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/Map;

.field public static e:Z = false

.field public static f:J = 0x0L

.field public static g:Landroid/content/Context; = null

.field public static h:Landroid/os/Handler; = null

.field public static final i:I = 0x1

.field public static final j:Ljava/lang/String; = "Android+"

.field public static k:Ljava/nio/channels/FileChannel; = null

.field public static l:J = 0x0L

.field public static m:Z = false

.field public static n:I = 0x0

.field public static o:Z = false

.field public static p:Z = false

.field public static q:Z = false

.field public static final r:Ljava/lang/String; = "TD"

.field public static final s:Ljava/lang/String; = "TDLog"

.field public static final t:Ljava/lang/String; = "866"

.field public static final u:Ljava/lang/String; = "TD_app_pefercen_profile"

.field public static final v:Ljava/lang/String; = "TD_appId_"

.field public static final w:Ljava/lang/String; = "TD_channelId"

.field public static final x:Ljava/lang/String; = "TD_sdk_last_send_time_wifi"

.field public static final y:Ljava/lang/String; = "TD_sdk_last_send_time_mobile_data"

.field public static final z:Ljava/lang/String; = "isDeveloper"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    .line 47
    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->e:Z

    const-wide/16 v2, 0x0

    .line 52
    sput-wide v2, Lcom/tendcloud/tenddata/game/ab;->f:J

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 55
    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->h:Landroid/os/Handler;

    .line 61
    sput-wide v2, Lcom/tendcloud/tenddata/game/ab;->l:J

    .line 64
    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->m:Z

    const/4 v2, -0x1

    .line 67
    sput v2, Lcom/tendcloud/tenddata/game/ab;->n:I

    const/4 v2, 0x1

    .line 70
    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->o:Z

    .line 73
    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->p:Z

    .line 75
    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->q:Z

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/tendcloud/tenddata/game/ab;->S:Ljava/util/HashMap;

    const-string v2, "Default"

    .line 110
    sput-object v2, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    .line 112
    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->B:Z

    .line 114
    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->C:Ljava/lang/String;

    .line 116
    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->D:Z

    const-string v0, "WiFi"

    .line 130
    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->H:Ljava/lang/String;

    const/4 v0, 0x2

    .line 177
    sput v0, Lcom/tendcloud/tenddata/game/ab;->K:I

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->S:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_appId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TD_app_pefercen_profile"

    invoke-static {p0, v1, p1, v0}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "Context or Service is null"

    .line 138
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(I)V
    .locals 2

    .line 350
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/eb;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eb;-><init>()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const-string p0, "Native"

    .line 365
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/game/eb;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "PhoneGap"

    .line 362
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/game/eb;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "AIR"

    .line 359
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/game/eb;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "Unity"

    .line 356
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/game/eb;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "Cocos2d"

    .line 353
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/game/eb;->setFrameWork(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 150
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->S:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_appId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TD_app_pefercen_profile"

    invoke-static {v0, v1, p1, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .line 232
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->h:Landroid/os/Handler;

    .line 236
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tendcloud/tenddata/game/ab;->f:J

    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FINTECH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    sput-object p1, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    .line 252
    :cond_2
    invoke-static {p0, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 253
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 254
    invoke-static {}, Lcom/tendcloud/tenddata/game/dx;->a()Lcom/tendcloud/tenddata/game/dx;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 255
    invoke-static {}, Lcom/tendcloud/tenddata/game/dx;->a()Lcom/tendcloud/tenddata/game/dx;

    move-result-object p0

    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/dx;->b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 256
    sget p0, Lcom/tendcloud/tenddata/game/dz;->a:I

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ab;->a(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 423
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tendcloud/tenddata/game/aq;->d(Landroid/content/Context;)J

    move-result-wide v1

    .line 424
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tendcloud/tenddata/game/aq;->e(Landroid/content/Context;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static a(Lcom/tendcloud/tenddata/game/a;)Z
    .locals 7

    const/4 v0, 0x0

    .line 389
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    .line 403
    :cond_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 404
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->e(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long p0, v3, v5

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 406
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->d(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long p0, v3, v5

    if-gtz p0, :cond_4

    const/4 v0, 0x1

    :catchall_0
    :cond_4
    return v0
.end method

.method public static a()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 204
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1d4c0
        0x7530
    .end array-data
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 3

    .line 159
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Default"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_channelId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TD_app_pefercen_profile"

    invoke-static {p0, v0, p1, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    .line 162
    :cond_1
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .line 166
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_channelId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TD_app_pefercen_profile"

    invoke-static {v0, v1, p1, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 6

    const/4 v0, 0x0

    .line 340
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TD_app_pefercen_profile"

    const-string v3, "isDeveloper"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 380
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/eb;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eb;-><init>()V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/eb;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Native"

    :goto_0
    return-object v0
.end method

.method public static setDeveloperMode(Z)V
    .locals 5

    .line 332
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    const-string v2, "isDeveloper"

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
