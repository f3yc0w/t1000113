.class public Lcom/netease/htprotect/HTProtect;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static volatile c:Lcom/netease/htprotect/c/a; = null

.field private static d:Lcom/netease/htprotect/factory/a; = null

.field private static e:Landroid/content/Context; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/htprotect/factory/a;

    invoke-direct {v0}, Lcom/netease/htprotect/factory/a;-><init>()V

    sput-object v0, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/netease/htprotect/c/a;
    .locals 1

    sget-object v0, Lcom/netease/htprotect/HTProtect;->c:Lcom/netease/htprotect/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/htprotect/c/b;

    invoke-direct {v0}, Lcom/netease/htprotect/c/b;-><init>()V

    sput-object v0, Lcom/netease/htprotect/HTProtect;->c:Lcom/netease/htprotect/c/a;

    :cond_0
    sget-object v0, Lcom/netease/htprotect/HTProtect;->c:Lcom/netease/htprotect/c/a;

    return-object v0
.end method

.method private static a(II[B)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 8

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p2

    move v3, p0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/htprotect/factory/a;->a([BIIZIZ)[B

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/netease/htprotect/e/a;->a([B)I

    move-result p1

    new-instance p2, Lcom/netease/htprotect/result/SafeCommResult;

    if-nez p1, :cond_1

    array-length v0, p0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    invoke-direct {p2, v0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>(I)V

    iput p1, p2, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    iget-object p1, p2, Lcom/netease/htprotect/result/SafeCommResult;->decResult:[B

    const/4 v0, 0x0

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p0, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-direct {p2}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    iput p1, p2, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    :goto_0
    return-object p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    const/4 p1, -0x4

    iput p1, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    return-object p0
.end method

.method private static a(I[BZIZ)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 8

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/netease/htprotect/factory/a;->a([BIIZIZ)[B

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/netease/htprotect/e/a;->a([B)I

    move-result p1

    new-instance p3, Lcom/netease/htprotect/result/SafeCommResult;

    if-nez p1, :cond_2

    array-length p4, p0

    const/4 v0, 0x4

    sub-int/2addr p4, v0

    invoke-direct {p3, p4, p2}, Lcom/netease/htprotect/result/SafeCommResult;-><init>(IZ)V

    iput p1, p3, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    if-eqz p2, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v0

    const/4 p2, 0x2

    invoke-static {p0, v0, p1, p2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/netease/htprotect/result/SafeCommResult;->encResult:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lcom/netease/htprotect/result/SafeCommResult;->encBytes:[B

    const/4 p2, 0x0

    array-length p4, p0

    sub-int/2addr p4, v0

    invoke-static {p0, v0, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    invoke-direct {p3}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    iput p1, p3, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    :goto_0
    return-object p3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    const/4 p1, -0x4

    iput p1, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/netease/htprotect/HTProtect;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/htprotect/HTProtect;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentProcessName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static calcResource(Landroid/content/Context;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-class p0, Lcom/netease/htprotect/HTProtect;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    invoke-virtual {v0, p1}, Lcom/netease/htprotect/factory/a;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getDataSign(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-class v1, Lcom/netease/htprotect/HTProtect;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    iget-object v2, v2, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v2, p0, p1}, Lcom/netease/htprotect/factory/JNIFactory;->d8f5300ec791da421(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/netease/htprotect/HTProtect;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/htprotect/HTProtect;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V
    .locals 2

    sput-object p0, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    sput-object p1, Lcom/netease/htprotect/HTProtect;->f:Ljava/lang/String;

    sput-object p2, Lcom/netease/htprotect/HTProtect;->g:Ljava/lang/String;

    sput p3, Lcom/netease/htprotect/HTProtect;->h:I

    invoke-static {}, Lcom/netease/htprotect/HTProtect;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/htprotect/HTProtect;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/htprotect/HTProtect;->b:Z

    :cond_2
    sget-boolean v0, Lcom/netease/htprotect/HTProtect;->a:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/netease/htprotect/HTProtect;->b:Z

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/netease/htprotect/HTProtect;->initOutMainProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    :cond_3
    return-void
.end method

.method public static initOutMainProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V
    .locals 7

    sget-object v0, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/netease/htprotect/HTProtect;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    sput-object p1, Lcom/netease/htprotect/HTProtect;->f:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/netease/htprotect/HTProtect;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    sput-object p2, Lcom/netease/htprotect/HTProtect;->g:Ljava/lang/String;

    :cond_2
    sget v0, Lcom/netease/htprotect/HTProtect;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sput p3, Lcom/netease/htprotect/HTProtect;->h:I

    :cond_3
    invoke-static {}, Lcom/netease/htprotect/HTProtect;->a()Lcom/netease/htprotect/c/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/htprotect/c/a;->a(Landroid/content/Context;)I

    invoke-static {p4}, Lcom/netease/htprotect/poly/a;->s(Lcom/netease/htprotect/HTPCallback;)V

    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/netease/htprotect/factory/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    invoke-static {}, Lcom/netease/mobsec/xt/ClickHelper;->get()Lcom/netease/mobsec/xt/ClickHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mobsec/xt/ClickHelper;->init(Landroid/content/Context;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/netease/htprotect/HTProtect;->a:Z

    return-void
.end method

.method public static ioctl(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-class v1, Lcom/netease/htprotect/HTProtect;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v0, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    invoke-virtual {v0, p0, p1}, Lcom/netease/htprotect/factory/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/netease/htprotect/HTProtect;->a()Lcom/netease/htprotect/c/a;

    move-result-object v0

    sget-object v2, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/netease/htprotect/c/a;->a(Landroid/content/Context;)I

    sget-object v3, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    sget-object v4, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    sget-object v5, Lcom/netease/htprotect/HTProtect;->f:Ljava/lang/String;

    sget-object v6, Lcom/netease/htprotect/HTProtect;->g:Ljava/lang/String;

    sget v7, Lcom/netease/htprotect/HTProtect;->h:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/netease/htprotect/factory/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    sget-object v0, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    invoke-virtual {v0, p0, p1}, Lcom/netease/htprotect/factory/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static localSaveBytesDecode(Ljava/lang/String;I)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/htprotect/HTProtect;->localSaveDecode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static localSaveBytesEncode([BI)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lcom/netease/htprotect/HTProtect;->localSaveEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localSaveDecode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-class v1, Lcom/netease/htprotect/HTProtect;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    iget-object v2, v2, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v2, p0, p1}, Lcom/netease/htprotect/factory/JNIFactory;->r316e12523620efb7(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static localSaveEncode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-class v1, Lcom/netease/htprotect/HTProtect;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    iget-object v2, v2, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v2, p0, p1}, Lcom/netease/htprotect/factory/JNIFactory;->e9edd62242ad7aecf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static logOut()V
    .locals 2

    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    iget-object v1, v1, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v1}, Lcom/netease/htprotect/factory/JNIFactory;->f190da6241bff18bf()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static registInfoReceiver(Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;)V
    .locals 1

    sget-boolean v0, Lcom/netease/htprotect/HTProtect;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/htprotect/NetHeartBeat;->a()Lcom/netease/htprotect/NetHeartBeat;

    invoke-static {p0}, Lcom/netease/htprotect/NetHeartBeat;->a(Lcom/netease/htprotect/NetHeartBeat$InfoReceiver;)V

    :cond_0
    return-void
.end method

.method public static registerTouchEvent(II)V
    .locals 10

    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget-object v2, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/htprotect/e/b;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v4, 0x1

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v8, p0

    move v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/netease/htprotect/factory/a;->a(ZIIIII)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static safeComm(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    iget-object v1, v1, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/netease/htprotect/factory/JNIFactory;->r25d273c7ad4065c1(Ljava/lang/String;IZ)[B

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static safeCommFromServer(IILjava/lang/String;)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 2

    const/4 v0, -0x4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1, p2}, Lcom/netease/htprotect/HTProtect;->a(II[B)Lcom/netease/htprotect/result/SafeCommResult;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    :goto_0
    iput v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    return-object p0

    :cond_1
    :goto_1
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    goto :goto_0
.end method

.method public static safeCommFromServerByte(II[B)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netease/htprotect/HTProtect;->a(II[B)Lcom/netease/htprotect/result/SafeCommResult;

    move-result-object p0

    return-object p0
.end method

.method public static safeCommFromServerCSharp(IILjava/lang/String;)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 9

    const/4 v0, -0x4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class p2, Lcom/netease/htprotect/HTProtect;

    monitor-enter p2

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move v4, p0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/netease/htprotect/factory/a;->a([BIIZIZ)[B

    move-result-object p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/netease/htprotect/e/a;->a([B)I

    move-result p1

    new-instance p2, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p2}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    iput p1, p2, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    if-nez p1, :cond_1

    array-length p1, p0

    const/4 v0, 0x4

    sub-int/2addr p1, v0

    invoke-static {p0, v0, p1, v1}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/netease/htprotect/result/SafeCommResult;->encResult:Ljava/lang/String;

    :cond_1
    return-object p2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    :goto_0
    iput v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    goto :goto_0
.end method

.method public static safeCommToServer(I[B)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/netease/htprotect/HTProtect;->a(I[BZIZ)Lcom/netease/htprotect/result/SafeCommResult;

    move-result-object p0

    return-object p0
.end method

.method public static safeCommToServerByte(I[B)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/netease/htprotect/HTProtect;->a(I[BZIZ)Lcom/netease/htprotect/result/SafeCommResult;

    move-result-object p0

    return-object p0
.end method

.method public static safeCommToServerByteV21(II[BZ)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0, p3}, Lcom/netease/htprotect/HTProtect;->a(I[BZIZ)Lcom/netease/htprotect/result/SafeCommResult;

    move-result-object p0

    return-object p0
.end method

.method public static safeCommToServerCSharp(ILjava/lang/String;)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 9

    const/4 v0, -0x4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class p1, Lcom/netease/htprotect/HTProtect;

    monitor-enter p1

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move v4, p0

    invoke-virtual/range {v2 .. v8}, Lcom/netease/htprotect/factory/a;->a([BIIZIZ)[B

    move-result-object p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/netease/htprotect/e/a;->a([B)I

    move-result p1

    new-instance v0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {v0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    iput p1, v0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    if-nez p1, :cond_1

    array-length p1, p0

    const/4 v2, 0x4

    sub-int/2addr p1, v2

    invoke-static {p0, v2, p1, v1}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/htprotect/result/SafeCommResult;->encResult:Ljava/lang/String;

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    :goto_0
    iput v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    goto :goto_0
.end method

.method public static safeCommToServerCSharpByte(I[BZIZ)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 8

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/netease/htprotect/factory/a;->a([BIIZIZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/htprotect/e/a;->a([B)I

    move-result p1

    new-instance p3, Lcom/netease/htprotect/result/SafeCommResult;

    if-nez p1, :cond_2

    array-length p4, p0

    const/4 v0, 0x4

    sub-int/2addr p4, v0

    invoke-direct {p3, p4, p2}, Lcom/netease/htprotect/result/SafeCommResult;-><init>(IZ)V

    iput p1, p3, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    if-eqz p2, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v0

    const/4 p2, 0x2

    invoke-static {p0, v0, p1, p2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/netease/htprotect/result/SafeCommResult;->encResult:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lcom/netease/htprotect/result/SafeCommResult;->encBytes:[B

    const/4 p2, 0x0

    array-length p4, p0

    sub-int/2addr p4, v0

    invoke-static {p0, v0, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    invoke-direct {p3}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    iput p1, p3, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    :goto_0
    return-object p3

    :cond_3
    :goto_1
    new-instance p0, Lcom/netease/htprotect/result/SafeCommResult;

    invoke-direct {p0}, Lcom/netease/htprotect/result/SafeCommResult;-><init>()V

    const/4 p1, -0x4

    iput p1, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    return-object p0
.end method

.method public static safeCommToServerV21(II[BZ)Lcom/netease/htprotect/result/SafeCommResult;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0, p3}, Lcom/netease/htprotect/HTProtect;->a(I[BZIZ)Lcom/netease/htprotect/result/SafeCommResult;

    move-result-object p0

    return-object p0
.end method

.method public static setRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    const-class v1, Lcom/netease/htprotect/HTProtect;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/netease/htprotect/factory/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/htprotect/poly/a;->c(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/netease/htprotect/HTProtect;->a()Lcom/netease/htprotect/c/a;

    move-result-object v0

    sget-object v2, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/netease/htprotect/c/a;->a(Landroid/content/Context;)I

    sget-object v3, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    sget-object v4, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    sget-object v5, Lcom/netease/htprotect/HTProtect;->f:Ljava/lang/String;

    sget-object v6, Lcom/netease/htprotect/HTProtect;->g:Ljava/lang/String;

    sget v7, Lcom/netease/htprotect/HTProtect;->h:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/netease/htprotect/factory/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    sget-object v9, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v9 .. v15}, Lcom/netease/htprotect/factory/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static setTransInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    invoke-virtual {v1, p0, p1, p2}, Lcom/netease/htprotect/factory/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/netease/htprotect/HTProtect;->a()Lcom/netease/htprotect/c/a;

    move-result-object v1

    sget-object v2, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/netease/htprotect/c/a;->a(Landroid/content/Context;)I

    sget-object v3, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    sget-object v4, Lcom/netease/htprotect/HTProtect;->e:Landroid/content/Context;

    sget-object v5, Lcom/netease/htprotect/HTProtect;->f:Ljava/lang/String;

    sget-object v6, Lcom/netease/htprotect/HTProtect;->g:Ljava/lang/String;

    sget v7, Lcom/netease/htprotect/HTProtect;->h:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/netease/htprotect/factory/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    sget-object v1, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    invoke-virtual {v1, p0, p1, p2}, Lcom/netease/htprotect/factory/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized track(Landroid/view/View;Ljava/lang/String;)I
    .locals 1

    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/mobsec/vt/ViewTracker;->track(Landroid/view/View;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static unregisterTouchEvent()V
    .locals 9

    const-class v0, Lcom/netease/htprotect/HTProtect;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/netease/htprotect/HTProtect;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v2, Lcom/netease/htprotect/HTProtect;->d:Lcom/netease/htprotect/factory/a;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual/range {v2 .. v8}, Lcom/netease/htprotect/factory/a;->a(ZIIIII)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
