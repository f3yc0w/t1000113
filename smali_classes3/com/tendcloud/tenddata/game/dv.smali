.class public Lcom/tendcloud/tenddata/game/dv;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    const-string v0, "type"

    .line 6
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->a:Ljava/lang/String;

    const-string v0, "name"

    .line 7
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->c:Ljava/lang/String;

    const-string v0, "extra1"

    .line 8
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->d:Ljava/lang/String;

    const-string v0, "extra2"

    .line 9
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->e:Ljava/lang/String;

    const-string v0, "targetApp"

    .line 10
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setExtra1(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTargetApp(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dv;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
