.class public Lcom/netease/htprotect/NetHeartBeat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;
    }
.end annotation


# static fields
.field public static final INFO_TYPE_CHEATINFO:I = 0x3

.field public static final INFO_TYPE_ENC_HEARTBEAT:I = 0x2

.field public static final INFO_TYPE_HEARTBEAT:I = 0x1

.field private static volatile a:Lcom/netease/htprotect/NetHeartBeat;

.field private static b:Ljava/util/ArrayList;

.field private static c:Ljava/lang/Thread;

.field private static volatile d:Z

.field private static e:Lcom/netease/htprotect/factory/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/htprotect/NetHeartBeat;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/htprotect/NetHeartBeat;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/netease/htprotect/NetHeartBeat;
    .locals 2

    sget-object v0, Lcom/netease/htprotect/NetHeartBeat;->a:Lcom/netease/htprotect/NetHeartBeat;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/htprotect/NetHeartBeat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/htprotect/NetHeartBeat;->a:Lcom/netease/htprotect/NetHeartBeat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/htprotect/NetHeartBeat;

    invoke-direct {v1}, Lcom/netease/htprotect/NetHeartBeat;-><init>()V

    sput-object v1, Lcom/netease/htprotect/NetHeartBeat;->a:Lcom/netease/htprotect/NetHeartBeat;

    new-instance v1, Lcom/netease/htprotect/factory/a;

    invoke-direct {v1}, Lcom/netease/htprotect/factory/a;-><init>()V

    sput-object v1, Lcom/netease/htprotect/NetHeartBeat;->e:Lcom/netease/htprotect/factory/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/htprotect/NetHeartBeat;->a:Lcom/netease/htprotect/NetHeartBeat;

    return-object v0
.end method

.method private static a(ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/netease/htprotect/NetHeartBeat;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/NetHeartBeat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;

    invoke-interface {v1, p0, p1}, Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;->onReceive(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/netease/htprotect/NetHeartBeat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/htprotect/NetHeartBeat;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/netease/htprotect/NetHeartBeat;->d:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/netease/htprotect/NetHeartBeat;->d:Z

    new-instance p0, Ljava/lang/Thread;

    invoke-static {}, Lcom/netease/htprotect/NetHeartBeat;->a()Lcom/netease/htprotect/NetHeartBeat;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lcom/netease/htprotect/NetHeartBeat;->c:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/netease/htprotect/NetHeartBeat;->e:Lcom/netease/htprotect/factory/a;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/htprotect/factory/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "-1"

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/netease/htprotect/NetHeartBeat;->e:Lcom/netease/htprotect/factory/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/htprotect/factory/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "-1"

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/netease/htprotect/NetHeartBeat;->e:Lcom/netease/htprotect/factory/a;

    const/4 v1, 0x3

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/htprotect/factory/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "-1"

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/netease/htprotect/NetHeartBeat;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x3e8

    const/16 v5, 0xa

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-le v1, v5, :cond_0

    :cond_1
    if-le v1, v5, :cond_2

    sput-boolean v0, Lcom/netease/htprotect/NetHeartBeat;->d:Z

    return-void

    :catch_1
    :cond_2
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/netease/htprotect/NetHeartBeat;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v6, Lcom/netease/htprotect/NetHeartBeat;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v7, Lcom/netease/htprotect/NetHeartBeat;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;

    invoke-interface {v6, v5, v1}, Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;->onReceive(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_3
    :cond_3
    invoke-static {}, Lcom/netease/htprotect/NetHeartBeat;->d()Ljava/lang/String;

    sput-boolean v0, Lcom/netease/htprotect/NetHeartBeat;->d:Z

    return-void

    :goto_3
    invoke-static {}, Lcom/netease/htprotect/NetHeartBeat;->d()Ljava/lang/String;

    sput-boolean v0, Lcom/netease/htprotect/NetHeartBeat;->d:Z

    throw v1
.end method
