.class public Lcom/tendcloud/tenddata/game/cf;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0x3

.field public static final c:I = 0x32

.field public static final d:I = -0x55


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 16
    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->e:I

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->f:I

    const/16 v0, 0x32

    .line 18
    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->g:I

    const/16 v0, -0x55

    .line 19
    iput v0, p0, Lcom/tendcloud/tenddata/game/cf;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/tendcloud/tenddata/game/cf;->h:I

    return v0
.end method

.method public setMaxBssEntries(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->g:I

    return-void
.end method

.method public setMaxFingerprints(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->e:I

    return-void
.end method

.method public setMinFingerprints(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->f:I

    return-void
.end method

.method public setRssiThreshold(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/tendcloud/tenddata/game/cf;->h:I

    return-void
.end method
