.class public final Lcom/netease/htprotect/c/a/a/i;
.super Lcom/netease/htprotect/c/a/a/c$d;


# direct methods
.method public constructor <init>(Lcom/netease/htprotect/c/a/a/f;Lcom/netease/htprotect/c/a/a/c$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/htprotect/c/a/a/c$d;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-boolean v1, p2, Lcom/netease/htprotect/c/a/a/c$b;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v1, p2, Lcom/netease/htprotect/c/a/a/c$b;->g:J

    iget p2, p2, Lcom/netease/htprotect/c/a/a/c$b;->j:I

    mul-int/lit8 p2, p2, 0x0

    int-to-long v3, p2

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1c

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/htprotect/c/a/a/i;->a:J

    return-void
.end method
