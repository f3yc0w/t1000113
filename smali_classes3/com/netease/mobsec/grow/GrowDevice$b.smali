.class public Lcom/netease/mobsec/grow/GrowDevice$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobsec/grow/GrowDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/netease/mobsec/grow/GrowDevice;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mobsec/grow/GrowDevice;

    .line 1
    invoke-direct {v0}, Lcom/netease/mobsec/grow/GrowDevice;-><init>()V

    .line 2
    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice$b;->a:Lcom/netease/mobsec/grow/GrowDevice;

    return-void
.end method
