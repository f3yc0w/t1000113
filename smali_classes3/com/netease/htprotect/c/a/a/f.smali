.class public final Lcom/netease/htprotect/c/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/htprotect/c/a/a/c;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:I

.field private final b:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x464c457f

    iput v0, p0, Lcom/netease/htprotect/c/a/a/f;->a:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/htprotect/c/a/a/f;->b:Ljava/nio/channels/FileChannel;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File is null or does not exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/netease/htprotect/c/a/a/c$b;JJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/netease/htprotect/c/a/a/c$b;->a(J)Lcom/netease/htprotect/c/a/a/c$c;

    move-result-object v2

    iget-wide v3, v2, Lcom/netease/htprotect/c/a/a/c$c;->c:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-wide v3, v2, Lcom/netease/htprotect/c/a/a/c$c;->e:J

    cmp-long v7, v3, p3

    if-gtz v7, :cond_0

    iget-wide v3, v2, Lcom/netease/htprotect/c/a/a/c$c;->e:J

    iget-wide v7, v2, Lcom/netease/htprotect/c/a/a/c$c;->f:J

    add-long/2addr v3, v7

    cmp-long v7, p3, v3

    if-gtz v7, :cond_0

    iget-wide p0, v2, Lcom/netease/htprotect/c/a/a/c$c;->e:J

    sub-long/2addr p3, p0

    iget-wide p0, v2, Lcom/netease/htprotect/c/a/a/c$c;->d:J

    add-long/2addr p3, p0

    return-wide p3

    :cond_0
    add-long/2addr v0, v5

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not map vma to file offset!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/nio/ByteBuffer;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    :goto_0
    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v3, p0, Lcom/netease/htprotect/c/a/a/f;->b:Ljava/nio/channels/FileChannel;

    add-long v4, p2, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private b()Lcom/netease/htprotect/c/a/a/c$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/htprotect/c/a/a/f;->b:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    const-wide/32 v3, 0x464c457f

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    const-wide/16 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result v1

    const-wide/16 v2, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/netease/htprotect/c/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/netease/htprotect/c/a/a/d;

    invoke-direct {v1, v0, p0}, Lcom/netease/htprotect/c/a/a/d;-><init>(ZLcom/netease/htprotect/c/a/a/f;)V

    return-object v1

    :cond_1
    if-ne v1, v3, :cond_2

    new-instance v1, Lcom/netease/htprotect/c/a/a/e;

    invoke-direct {v1, v0, p0}, Lcom/netease/htprotect/c/a/a/e;-><init>(ZLcom/netease/htprotect/c/a/a/f;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid class type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ELF Magic!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/htprotect/c/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result p2

    if-eqz p2, :cond_0

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/nio/ByteBuffer;J)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/htprotect/c/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/htprotect/c/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    return-wide p1
.end method

.method public final a()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/htprotect/c/a/a/f;->b:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/netease/htprotect/c/a/a/f;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5, v2, v3}, Lcom/netease/htprotect/c/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    const-wide/32 v8, 0x464c457f

    cmp-long v10, v6, v8

    if-nez v10, :cond_d

    const-wide/16 v6, 0x4

    invoke-direct {v0, v5, v6, v7}, Lcom/netease/htprotect/c/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result v6

    const-wide/16 v7, 0x5

    invoke-direct {v0, v5, v7, v8}, Lcom/netease/htprotect/c/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result v5

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v5, v10, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ne v6, v11, :cond_1

    new-instance v6, Lcom/netease/htprotect/c/a/a/d;

    invoke-direct {v6, v5, v0}, Lcom/netease/htprotect/c/a/a/d;-><init>(ZLcom/netease/htprotect/c/a/a/f;)V

    goto :goto_1

    :cond_1
    if-ne v6, v10, :cond_c

    new-instance v6, Lcom/netease/htprotect/c/a/a/e;

    invoke-direct {v6, v5, v0}, Lcom/netease/htprotect/c/a/a/e;-><init>(ZLcom/netease/htprotect/c/a/a/f;)V

    :goto_1
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-boolean v5, v6, Lcom/netease/htprotect/c/a/a/c$b;->d:Z

    if-eqz v5, :cond_2

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_2
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_2
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v5, v6, Lcom/netease/htprotect/c/a/a/c$b;->i:I

    int-to-long v10, v5

    const-wide/32 v12, 0xffff

    cmp-long v5, v10, v12

    if-nez v5, :cond_3

    invoke-virtual {v6}, Lcom/netease/htprotect/c/a/a/c$b;->a()Lcom/netease/htprotect/c/a/a/c$d;

    move-result-object v5

    iget-wide v10, v5, Lcom/netease/htprotect/c/a/a/c$d;->a:J

    :cond_3
    move-wide v12, v2

    :goto_3
    const-wide/16 v14, 0x1

    cmp-long v5, v12, v10

    if-gez v5, :cond_5

    invoke-virtual {v6, v12, v13}, Lcom/netease/htprotect/c/a/a/c$b;->a(J)Lcom/netease/htprotect/c/a/a/c$c;

    move-result-object v5

    move-wide/from16 v17, v10

    iget-wide v9, v5, Lcom/netease/htprotect/c/a/a/c$c;->c:J

    const-wide/16 v19, 0x2

    cmp-long v11, v9, v19

    if-nez v11, :cond_4

    iget-wide v9, v5, Lcom/netease/htprotect/c/a/a/c$c;->d:J

    goto :goto_4

    :cond_4
    add-long/2addr v12, v14

    move-wide/from16 v10, v17

    goto :goto_3

    :cond_5
    move-wide/from16 v17, v10

    move-wide v9, v2

    :goto_4
    cmp-long v5, v9, v2

    if-nez v5, :cond_6

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-wide v12, v2

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v6, v9, v10, v11}, Lcom/netease/htprotect/c/a/a/c$b;->a(JI)Lcom/netease/htprotect/c/a/a/c$a;

    move-result-object v2

    iget-wide v7, v2, Lcom/netease/htprotect/c/a/a/c$a;->d:J

    cmp-long v3, v7, v14

    if-nez v3, :cond_7

    iget-wide v7, v2, Lcom/netease/htprotect/c/a/a/c$a;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v21, 0x5

    goto :goto_6

    :cond_7
    iget-wide v7, v2, Lcom/netease/htprotect/c/a/a/c$a;->d:J

    const-wide/16 v21, 0x5

    cmp-long v3, v7, v21

    if-nez v3, :cond_8

    iget-wide v12, v2, Lcom/netease/htprotect/c/a/a/c$a;->e:J

    :cond_8
    :goto_6
    add-int/lit8 v11, v11, 0x1

    iget-wide v2, v2, Lcom/netease/htprotect/c/a/a/c$a;->d:J

    const-wide/16 v7, 0x0

    cmp-long v16, v2, v7

    if-nez v16, :cond_b

    cmp-long v2, v12, v7

    if-eqz v2, :cond_a

    move-wide/from16 v2, v17

    invoke-static {v6, v2, v3, v12, v13}, Lcom/netease/htprotect/c/a/a/f;->a(Lcom/netease/htprotect/c/a/a/c$b;JJ)J

    move-result-wide v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-direct {v0, v4, v6, v7}, Lcom/netease/htprotect/c/a/a/f;->d(Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "String table offset not found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-wide/from16 v7, v21

    goto :goto_5

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid class type!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid ELF Magic!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final b(Ljava/nio/ByteBuffer;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/htprotect/c/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method

.method protected final c(Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/htprotect/c/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    return p1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/htprotect/c/a/a/f;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method
