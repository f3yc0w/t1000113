.class public final enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;
.super Ljava/lang/Enum;
.source "AccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/annotation/AccessPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/annotation/AccessPolicy;

.field public static final enum READ:Lcom/netease/yunxin/lite/annotation/AccessPolicy;

.field public static final enum WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/annotation/AccessPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/annotation/AccessPolicy;->READ:Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    .line 29
    new-instance v1, Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/annotation/AccessPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 19
    sput-object v3, Lcom/netease/yunxin/lite/annotation/AccessPolicy;->$VALUES:[Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/annotation/AccessPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 19
    const-class v0, Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/annotation/AccessPolicy;
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/yunxin/lite/annotation/AccessPolicy;->$VALUES:[Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/annotation/AccessPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    return-object v0
.end method
