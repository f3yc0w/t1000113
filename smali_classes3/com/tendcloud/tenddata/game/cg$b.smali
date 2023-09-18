.class Lcom/tendcloud/tenddata/game/cg$b;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final DEFAULT_MAX_BSS_ENTRIES:I = 0x32

.field static final DEFAULT_MAX_FINGERPRINTS:I = 0xa

.field static final DEFAULT_MIN_FINGERPRINTS:I = 0x3

.field static final DEFAULT_RSSI_THRESHOLD:I = -0x55


# instance fields
.field private maxBssEntries:I

.field private maxFingerprints:I

.field private minFingerprints:I

.field private rssiThreshold:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 432
    iput v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->maxFingerprints:I

    const/4 v0, 0x3

    .line 433
    iput v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->minFingerprints:I

    const/16 v0, 0x32

    .line 434
    iput v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->maxBssEntries:I

    const/16 v0, -0x55

    .line 435
    iput v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->rssiThreshold:I

    return-void
.end method


# virtual methods
.method getMaxBssEntries()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->maxBssEntries:I

    return v0
.end method

.method getMaxFingerprints()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->maxFingerprints:I

    return v0
.end method

.method getMinFingerprints()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->minFingerprints:I

    return v0
.end method

.method getRssiThreshold()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/tendcloud/tenddata/game/cg$b;->rssiThreshold:I

    return v0
.end method

.method setMaxBssEntries(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/tendcloud/tenddata/game/cg$b;->maxBssEntries:I

    return-void
.end method

.method setMaxFingerprints(I)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/tendcloud/tenddata/game/cg$b;->maxFingerprints:I

    return-void
.end method

.method setMinFingerprints(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/tendcloud/tenddata/game/cg$b;->minFingerprints:I

    return-void
.end method

.method setRssiThreshold(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/tendcloud/tenddata/game/cg$b;->rssiThreshold:I

    return-void
.end method
