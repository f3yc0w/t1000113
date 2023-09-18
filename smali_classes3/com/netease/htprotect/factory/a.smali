.class public final Lcom/netease/htprotect/factory/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/netease/htprotect/factory/JNIFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/netease/htprotect/factory/JNIFactory;->getInstance()Lcom/netease/htprotect/factory/JNIFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netease/htprotect/factory/JNIFactory;->d8f5300ec791da421(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0}, Lcom/netease/htprotect/factory/JNIFactory;->f190da6241bff18bf()V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)[B
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/htprotect/factory/JNIFactory;->r25d273c7ad4065c1(Ljava/lang/String;IZ)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netease/htprotect/factory/JNIFactory;->e9edd62242ad7aecf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netease/htprotect/factory/JNIFactory;->r316e12523620efb7(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/htprotect/factory/JNIFactory;->e3aa07afb863c1kva([B)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object p1
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netease/htprotect/factory/JNIFactory;->d0f149b4da6ec477(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/htprotect/factory/JNIFactory;->hccd63688a790ca65(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/htprotect/factory/JNIFactory;->db8b1e50841128606(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/htprotect/factory/JNIFactory;->t76euy9fu8bv485zh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final a(ZIIIII)V
    .locals 7

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/htprotect/factory/JNIFactory;->u233ace17d63ca9e(ZIIIII)V

    return-void
.end method

.method public final a([BIIZIZ)[B
    .locals 7

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/htprotect/factory/JNIFactory;->r25d273c7ad4065c3([BIIZIZ)[B

    move-result-object p1

    return-object p1
.end method

.method public final b(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/factory/a;->a:Lcom/netease/htprotect/factory/JNIFactory;

    invoke-virtual {v0, p1, p2}, Lcom/netease/htprotect/factory/JNIFactory;->w3facf96be4b4fd19(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
