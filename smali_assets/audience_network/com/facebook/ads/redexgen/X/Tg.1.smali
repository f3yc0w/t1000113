.class public final Lcom/facebook/ads/redexgen/X/Tg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/57;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Td;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Td;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 54835
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/redexgen/X/Td;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8M()Z
    .locals 1

    .line 54836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/redexgen/X/Td;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Td;->A02(Lcom/facebook/ads/redexgen/X/Td;)Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/redexgen/X/Td;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Td;->A02(Lcom/facebook/ads/redexgen/X/Td;)Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->goBack()V

    .line 54838
    const/4 v0, 0x1

    return v0

    .line 54839
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
