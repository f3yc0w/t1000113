.class public final enum Lnet/aihelp/core/util/permission/Permission$State;
.super Ljava/lang/Enum;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/permission/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/util/permission/Permission$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/util/permission/Permission$State;

.field public static final enum ASKABLE:Lnet/aihelp/core/util/permission/Permission$State;

.field public static final enum AVAILABLE:Lnet/aihelp/core/util/permission/Permission$State;

.field public static final enum RATIONAL:Lnet/aihelp/core/util/permission/Permission$State;

.field public static final enum UNAVAILABLE:Lnet/aihelp/core/util/permission/Permission$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lnet/aihelp/core/util/permission/Permission$State;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/util/permission/Permission$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/util/permission/Permission$State;->AVAILABLE:Lnet/aihelp/core/util/permission/Permission$State;

    .line 17
    new-instance v1, Lnet/aihelp/core/util/permission/Permission$State;

    const-string v3, "UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/util/permission/Permission$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/util/permission/Permission$State;->UNAVAILABLE:Lnet/aihelp/core/util/permission/Permission$State;

    .line 18
    new-instance v3, Lnet/aihelp/core/util/permission/Permission$State;

    const-string v5, "ASKABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/util/permission/Permission$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/util/permission/Permission$State;->ASKABLE:Lnet/aihelp/core/util/permission/Permission$State;

    .line 19
    new-instance v5, Lnet/aihelp/core/util/permission/Permission$State;

    const-string v7, "RATIONAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/aihelp/core/util/permission/Permission$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/aihelp/core/util/permission/Permission$State;->RATIONAL:Lnet/aihelp/core/util/permission/Permission$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/aihelp/core/util/permission/Permission$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 15
    sput-object v7, Lnet/aihelp/core/util/permission/Permission$State;->$VALUES:[Lnet/aihelp/core/util/permission/Permission$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/util/permission/Permission$State;
    .locals 1

    .line 15
    const-class v0, Lnet/aihelp/core/util/permission/Permission$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/util/permission/Permission$State;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/util/permission/Permission$State;
    .locals 1

    .line 15
    sget-object v0, Lnet/aihelp/core/util/permission/Permission$State;->$VALUES:[Lnet/aihelp/core/util/permission/Permission$State;

    invoke-virtual {v0}, [Lnet/aihelp/core/util/permission/Permission$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/util/permission/Permission$State;

    return-object v0
.end method
