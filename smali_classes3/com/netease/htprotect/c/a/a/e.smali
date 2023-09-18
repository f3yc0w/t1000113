.class public final Lcom/netease/htprotect/c/a/a/e;
.super Lcom/netease/htprotect/c/a/a/c$b;


# instance fields
.field private final m:Lcom/netease/htprotect/c/a/a/f;


# direct methods
.method public constructor <init>(ZLcom/netease/htprotect/c/a/a/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/htprotect/c/a/a/c$b;-><init>()V

    iput-boolean p1, p0, Lcom/netease/htprotect/c/a/a/e;->d:Z

    iput-object p2, p0, Lcom/netease/htprotect/c/a/a/e;->m:Lcom/netease/htprotect/c/a/a/f;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/htprotect/c/a/a/e;->e:I

    const-wide/16 v1, 0x20

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->a(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/htprotect/c/a/a/e;->f:J

    const-wide/16 v1, 0x28

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->a(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/htprotect/c/a/a/e;->g:J

    const-wide/16 v1, 0x36

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/htprotect/c/a/a/e;->h:I

    const-wide/16 v1, 0x38

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/htprotect/c/a/a/e;->i:I

    const-wide/16 v1, 0x3a

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/htprotect/c/a/a/e;->j:I

    const-wide/16 v1, 0x3c

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/htprotect/c/a/a/e;->k:I

    const-wide/16 v1, 0x3e

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/htprotect/c/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/htprotect/c/a/a/e;->l:I

    return-void
.end method


# virtual methods
.method public final a(JI)Lcom/netease/htprotect/c/a/a/c$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/netease/htprotect/c/a/a/b;

    iget-object v1, p0, Lcom/netease/htprotect/c/a/a/e;->m:Lcom/netease/htprotect/c/a/a/f;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/htprotect/c/a/a/b;-><init>(Lcom/netease/htprotect/c/a/a/f;Lcom/netease/htprotect/c/a/a/c$b;JI)V

    return-object v6
.end method

.method public final a(J)Lcom/netease/htprotect/c/a/a/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/netease/htprotect/c/a/a/h;

    iget-object v1, p0, Lcom/netease/htprotect/c/a/a/e;->m:Lcom/netease/htprotect/c/a/a/f;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/netease/htprotect/c/a/a/h;-><init>(Lcom/netease/htprotect/c/a/a/f;Lcom/netease/htprotect/c/a/a/c$b;J)V

    return-object v0
.end method

.method public final a()Lcom/netease/htprotect/c/a/a/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/netease/htprotect/c/a/a/j;

    iget-object v1, p0, Lcom/netease/htprotect/c/a/a/e;->m:Lcom/netease/htprotect/c/a/a/f;

    invoke-direct {v0, v1, p0}, Lcom/netease/htprotect/c/a/a/j;-><init>(Lcom/netease/htprotect/c/a/a/f;Lcom/netease/htprotect/c/a/a/c$b;)V

    return-object v0
.end method
