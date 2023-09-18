.class Lcom/tendcloud/tenddata/game/cg$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private band:B

.field private bssid:Ljava/lang/String;

.field private channel:B

.field private rssi:B

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cg;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cg;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->this$0:Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 357
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->ssid:Ljava/lang/String;

    const-string p1, "00:00:00:00:00:00"

    .line 358
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->bssid:Ljava/lang/String;

    const/16 p1, -0x7f

    .line 359
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->rssi:B

    const/4 p1, 0x1

    .line 360
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->band:B

    .line 361
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->channel:B

    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/cg;Ljava/lang/String;Ljava/lang/String;BBB)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->this$0:Lcom/tendcloud/tenddata/game/cg;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cg$a;->ssid:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cg$a;->bssid:Ljava/lang/String;

    .line 369
    iput-byte p4, p0, Lcom/tendcloud/tenddata/game/cg$a;->rssi:B

    .line 370
    iput-byte p5, p0, Lcom/tendcloud/tenddata/game/cg$a;->band:B

    .line 371
    iput-byte p6, p0, Lcom/tendcloud/tenddata/game/cg$a;->channel:B

    return-void
.end method


# virtual methods
.method cloneBssEntry()Lcom/tendcloud/tenddata/game/cg$a;
    .locals 8

    .line 415
    new-instance v7, Lcom/tendcloud/tenddata/game/cg$a;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cg$a;->this$0:Lcom/tendcloud/tenddata/game/cg;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cg$a;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cg$a;->bssid:Ljava/lang/String;

    iget-byte v4, p0, Lcom/tendcloud/tenddata/game/cg$a;->rssi:B

    iget-byte v5, p0, Lcom/tendcloud/tenddata/game/cg$a;->band:B

    iget-byte v6, p0, Lcom/tendcloud/tenddata/game/cg$a;->channel:B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/cg$a;-><init>(Lcom/tendcloud/tenddata/game/cg;Ljava/lang/String;Ljava/lang/String;BBB)V

    return-object v7
.end method

.method getBand()B
    .locals 1

    .line 399
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/cg$a;->band:B

    return v0
.end method

.method getBssid()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cg$a;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method getChannel()B
    .locals 1

    .line 407
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/cg$a;->channel:B

    return v0
.end method

.method getRssi()B
    .locals 1

    .line 391
    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/cg$a;->rssi:B

    return v0
.end method

.method getSsid()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cg$a;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method setBand(B)V
    .locals 0

    .line 403
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->band:B

    return-void
.end method

.method setBssid(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->bssid:Ljava/lang/String;

    return-void
.end method

.method setChannel(B)V
    .locals 0

    .line 411
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->channel:B

    return-void
.end method

.method setRssi(B)V
    .locals 0

    .line 395
    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->rssi:B

    return-void
.end method

.method setSsid(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$a;->ssid:Ljava/lang/String;

    return-void
.end method
