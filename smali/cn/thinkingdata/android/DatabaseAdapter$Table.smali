.class public final enum Lcn/thinkingdata/android/DatabaseAdapter$Table;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/DatabaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/thinkingdata/android/DatabaseAdapter$Table;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/thinkingdata/android/DatabaseAdapter$Table;

.field public static final enum EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;


# instance fields
.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/thinkingdata/android/DatabaseAdapter$Table;

    const-string v1, "EVENTS"

    const/4 v2, 0x0

    const-string v3, "events"

    invoke-direct {v0, v1, v2, v3}, Lcn/thinkingdata/android/DatabaseAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/thinkingdata/android/DatabaseAdapter$Table;

    aput-object v0, v1, v2

    sput-object v1, Lcn/thinkingdata/android/DatabaseAdapter$Table;->$VALUES:[Lcn/thinkingdata/android/DatabaseAdapter$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/thinkingdata/android/DatabaseAdapter$Table;->mTableName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/thinkingdata/android/DatabaseAdapter$Table;
    .locals 1

    const-class v0, Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/thinkingdata/android/DatabaseAdapter$Table;

    return-object p0
.end method

.method public static values()[Lcn/thinkingdata/android/DatabaseAdapter$Table;
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/DatabaseAdapter$Table;->$VALUES:[Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {v0}, [Lcn/thinkingdata/android/DatabaseAdapter$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/thinkingdata/android/DatabaseAdapter$Table;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DatabaseAdapter$Table;->mTableName:Ljava/lang/String;

    return-object v0
.end method
