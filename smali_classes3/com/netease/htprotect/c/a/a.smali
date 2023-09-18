.class public final Lcom/netease/htprotect/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/htprotect/c/a/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/htprotect/c/a/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x5

.field private static final b:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v1
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/netease/htprotect/c/a/a$a;
    .locals 13

    invoke-static {p0}, Lcom/netease/htprotect/c/a/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_5

    aget-object v4, p0, v2

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-ge v5, v7, :cond_0

    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_2

    :catch_0
    move v5, v6

    goto :goto_1

    :cond_0
    :goto_2
    if-eqz v3, :cond_4

    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v6, v5, 0x1

    if-ge v5, v7, :cond_3

    array-length v5, p1

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_2

    aget-object v10, p1, v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "lib"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v1

    aput-object v4, v11, v8

    const-string v12, "Looking for %s in APK %s..."

    invoke-static {v12, v11}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-eqz v10, :cond_1

    new-instance p0, Lcom/netease/htprotect/c/a/a$a;

    invoke-direct {p0, v3, v10}, Lcom/netease/htprotect/c/a/a$a;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object p0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v3, v0, v1

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p0, p0

    invoke-static {v3, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "([^\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "]*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lcom/netease/htprotect/c/a/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v4, v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/netease/htprotect/c/a/a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/netease/htprotect/c/a/a$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p2, p1, 0x1

    const/4 v4, 0x5

    if-ge p1, v4, :cond_3

    :try_start_1
    const-string p1, "Found %s! Extracting..."

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-static {p1, v4}, Lcom/netease/htprotect/c/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_3
    iget-object p1, v1, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    iget-object v4, v1, Lcom/netease/htprotect/c/a/a$a;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {p1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p1, v4}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    :try_start_6
    invoke-static {p1}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    :goto_1
    invoke-static {v4}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :cond_1
    invoke-static {p1}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-virtual {p4, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p4, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p4, v3}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_2

    :try_start_7
    iget-object p1, v1, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    nop

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v4, v0

    :goto_2
    move-object v0, p1

    goto :goto_3

    :catch_1
    move-object v4, v0

    goto :goto_4

    :catch_2
    move-object v4, v0

    goto :goto_5

    :catchall_2
    move-exception p2

    move-object v4, v0

    :goto_3
    :try_start_8
    invoke-static {v0}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    throw p2

    :catch_3
    move-object p1, v0

    move-object v4, p1

    :catch_4
    :goto_4
    invoke-static {p1}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_5
    move-object p1, v0

    move-object v4, p1

    :catch_6
    :goto_5
    invoke-static {p1}, Lcom/netease/htprotect/c/a/a;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catch_7
    :goto_6
    move p1, p2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_9
    iget-object p1, v1, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_4

    iget-object p1, v1, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    nop

    :catch_8
    :cond_4
    return-void

    :cond_5
    :try_start_a
    invoke-static {p1, p3}, Lcom/netease/htprotect/c/a/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    move-object v0, v1

    goto :goto_8

    :catch_9
    move-exception p1

    :try_start_b
    new-array p4, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    move-object p1, p4

    :goto_7
    new-instance p4, Lcom/netease/htprotect/c/a/b;

    invoke-direct {p4, p3, p2, p1}, Lcom/netease/htprotect/c/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw p4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_4
    move-exception p1

    :goto_8
    if-eqz v0, :cond_6

    :try_start_c
    iget-object p2, v0, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_6

    iget-object p2, v0, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_6
    throw p1
.end method
