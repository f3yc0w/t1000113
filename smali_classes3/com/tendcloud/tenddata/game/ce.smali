.class public Lcom/tendcloud/tenddata/game/ce;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:B

.field private d:B

.field private e:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    const-string v0, "00:00:00:00:00:00"

    .line 13
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    const/16 v0, -0x7f

    .line 14
    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    const/4 v0, 0x1

    .line 15
    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    .line 16
    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BBB)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    .line 24
    iput-byte p3, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    .line 25
    iput-byte p4, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    .line 26
    iput-byte p5, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()B
    .locals 1

    .line 42
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    return v0
.end method

.method public d()B
    .locals 1

    .line 48
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    return v0
.end method

.method public e()B
    .locals 1

    .line 54
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    return v0
.end method

.method public f()Lcom/tendcloud/tenddata/game/ce;
    .locals 7

    .line 61
    new-instance v6, Lcom/tendcloud/tenddata/game/ce;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    iget-byte v3, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    iget-byte v4, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    iget-byte v5, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    return-object v6
.end method

.method public setBand(B)V
    .locals 0

    .line 51
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ce;->d:B

    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce;->b:Ljava/lang/String;

    return-void
.end method

.method public setChannel(B)V
    .locals 0

    .line 57
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ce;->e:B

    return-void
.end method

.method public setRssi(B)V
    .locals 0

    .line 45
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/ce;->c:B

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce;->a:Ljava/lang/String;

    return-void
.end method
