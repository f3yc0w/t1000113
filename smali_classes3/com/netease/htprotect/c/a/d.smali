.class public final Lcom/netease/htprotect/c/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/lang/String; = "lib"


# instance fields
.field protected final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/netease/htprotect/c/a/c$b;

.field protected final c:Lcom/netease/htprotect/c/a/c$a;

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/netease/htprotect/c/a/c$d;


# direct methods
.method protected constructor <init>()V
    .locals 2

    new-instance v0, Lcom/netease/htprotect/c/a/e;

    invoke-direct {v0}, Lcom/netease/htprotect/c/a/e;-><init>()V

    new-instance v1, Lcom/netease/htprotect/c/a/a;

    invoke-direct {v1}, Lcom/netease/htprotect/c/a/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/netease/htprotect/c/a/d;-><init>(Lcom/netease/htprotect/c/a/c$b;Lcom/netease/htprotect/c/a/c$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/netease/htprotect/c/a/c$b;Lcom/netease/htprotect/c/a/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/htprotect/c/a/d;->a:Ljava/util/Set;

    iput-object p1, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    iput-object p2, p0, Lcom/netease/htprotect/c/a/d;->c:Lcom/netease/htprotect/c/a/c$a;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/netease/htprotect/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/netease/htprotect/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/htprotect/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/htprotect/c/a/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/htprotect/c/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/netease/htprotect/c/a/d;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/htprotect/c/a/d;->d:Z

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "%s already loaded previously!"

    invoke-static {p2, p1}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {v3, p2}, Lcom/netease/htprotect/c/a/c$b;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/htprotect/c/a/d;->a:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "%s (%s) was loaded normally!"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-static {v3, v4}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v3, "Loading the library normally failed: %s"

    invoke-static {v3, v4}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object p3, v3, v1

    const-string v4, "%s (%s) was not loaded normally, re-linking..."

    invoke-static {v4, v3}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/htprotect/c/a/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/netease/htprotect/c/a/d;->d:Z

    if-eqz v4, :cond_6

    :cond_1
    iget-boolean v4, p0, Lcom/netease/htprotect/c/a/d;->d:Z

    if-eqz v4, :cond_2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    const-string v5, "Forcing a re-link of %s (%s)..."

    invoke-static {v5, v4}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v4, "lib"

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/htprotect/c/a/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {v6, p2}, Lcom/netease/htprotect/c/a/c$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/netease/htprotect/c/a/d$2;

    invoke-direct {v7, p0, v6}, Lcom/netease/htprotect/c/a/d$2;-><init>(Lcom/netease/htprotect/c/a/d;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    iget-boolean v9, p0, Lcom/netease/htprotect/c/a/d;->d:Z

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/netease/htprotect/c/a/d;->c:Lcom/netease/htprotect/c/a/c$a;

    iget-object v5, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {v5}, Lcom/netease/htprotect/c/a/c$b;->a()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {v6, p2}, Lcom/netease/htprotect/c/a/c$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p1, v5, v6, v3}, Lcom/netease/htprotect/c/a/c$a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    :cond_6
    :try_start_1
    iget-boolean v4, p0, Lcom/netease/htprotect/c/a/d;->e:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :try_start_2
    new-instance v5, Lcom/netease/htprotect/c/a/a/f;

    invoke-direct {v5, v3}, Lcom/netease/htprotect/c/a/a/f;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Lcom/netease/htprotect/c/a/a/f;->a()Ljava/util/List;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Lcom/netease/htprotect/c/a/a/f;->close()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {v7, v6}, Lcom/netease/htprotect/c/a/c$b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v4, v4}, Lcom/netease/htprotect/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    invoke-virtual {v4}, Lcom/netease/htprotect/c/a/a/f;->close()V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_7
    iget-object p1, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/netease/htprotect/c/a/c$b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/htprotect/c/a/d;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    aput-object p3, p1, v1

    const-string p2, "%s (%s) was re-linked!"

    invoke-static {p2, p1}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {v0, p2}, Lcom/netease/htprotect/c/a/c$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/netease/htprotect/c/a/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "lib"

    if-eqz v0, :cond_0

    new-instance p3, Ljava/io/File;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/htprotect/c/a/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object p3, p0, Lcom/netease/htprotect/c/a/d;->b:Lcom/netease/htprotect/c/a/c$b;

    invoke-interface {p3, p2}, Lcom/netease/htprotect/c/a/c$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/netease/htprotect/c/a/d$2;

    invoke-direct {p3, p0, p2}, Lcom/netease/htprotect/c/a/d$2;-><init>(Lcom/netease/htprotect/c/a/d;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    array-length p3, p2

    :goto_0
    if-ge v1, p3, :cond_3

    aget-object v0, p2, v1

    iget-boolean v2, p0, Lcom/netease/htprotect/c/a/d;->d:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lcom/netease/htprotect/c/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/htprotect/c/a/d;->d:Z

    return-object p0
.end method

.method public final a(Lcom/netease/htprotect/c/a/c$d;)Lcom/netease/htprotect/c/a/d;
    .locals 0

    iput-object p1, p0, Lcom/netease/htprotect/c/a/d;->f:Lcom/netease/htprotect/c/a/c$d;

    return-object p0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V
    .locals 8

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/netease/htprotect/c/a/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Beginning load of %s..."

    invoke-static {v1, v0}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/htprotect/c/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/netease/htprotect/c/a/d$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netease/htprotect/c/a/d$1;-><init>(Lcom/netease/htprotect/c/a/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given library is either null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcom/netease/htprotect/c/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/htprotect/c/a/d;->e:Z

    return-object p0
.end method
