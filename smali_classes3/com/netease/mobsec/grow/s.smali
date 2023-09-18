.class public Lcom/netease/mobsec/grow/s;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mobsec/grow/s;->a:I

    iput-object p2, p0, Lcom/netease/mobsec/grow/s;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/netease/mobsec/grow/s;
    .locals 2

    new-instance v0, Lcom/netease/mobsec/grow/s;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/netease/mobsec/grow/s;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
