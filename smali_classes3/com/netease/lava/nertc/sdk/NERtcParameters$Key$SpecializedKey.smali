.class Lcom/netease/lava/nertc/sdk/NERtcParameters$Key$SpecializedKey;
.super Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;
.source "NERtcParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecializedKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/lava/nertc/sdk/NERtcParameters$Key<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xa0c854b917184bL


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "clazz"
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

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
