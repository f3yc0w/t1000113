.class public final Lcom/netease/lava/nertc/impl/RtcKey;
.super Ljava/lang/Object;
.source "RtcKey.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2770dec1002423b3L


# instance fields
.field private final mHash:I

.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Key needs a valid name"

    .line 27
    invoke-static {p1, v0}, Lcom/netease/yunxin/lite/util/Checker;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Type needs to be non-null"

    .line 28
    invoke-static {p2, v0}, Lcom/netease/yunxin/lite/util/Checker;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mType:Ljava/lang/Class;

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mHash:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/netease/lava/nertc/impl/RtcKey;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    instance-of v1, p1, Lcom/netease/lava/nertc/impl/RtcKey;

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Lcom/netease/lava/nertc/impl/RtcKey;

    .line 76
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/lava/nertc/impl/RtcKey;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/lava/nertc/impl/RtcKey;->mHash:I

    return v0
.end method
