.class public final enum Lnet/aihelp/config/enums/PushPlatform;
.super Ljava/lang/Enum;
.source "PushPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/config/enums/PushPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/config/enums/PushPlatform;

.field public static final enum APNS:Lnet/aihelp/config/enums/PushPlatform;

.field public static final enum FIREBASE:Lnet/aihelp/config/enums/PushPlatform;

.field public static final enum GETUI:Lnet/aihelp/config/enums/PushPlatform;

.field public static final enum HUAWEI:Lnet/aihelp/config/enums/PushPlatform;

.field public static final enum JPUSH:Lnet/aihelp/config/enums/PushPlatform;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 7
    new-instance v0, Lnet/aihelp/config/enums/PushPlatform;

    const-string v1, "APNS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/config/enums/PushPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/aihelp/config/enums/PushPlatform;->APNS:Lnet/aihelp/config/enums/PushPlatform;

    .line 8
    new-instance v1, Lnet/aihelp/config/enums/PushPlatform;

    const-string v4, "FIREBASE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/aihelp/config/enums/PushPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/aihelp/config/enums/PushPlatform;->FIREBASE:Lnet/aihelp/config/enums/PushPlatform;

    .line 9
    new-instance v4, Lnet/aihelp/config/enums/PushPlatform;

    const-string v6, "JPUSH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/aihelp/config/enums/PushPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/aihelp/config/enums/PushPlatform;->JPUSH:Lnet/aihelp/config/enums/PushPlatform;

    .line 10
    new-instance v6, Lnet/aihelp/config/enums/PushPlatform;

    const-string v8, "GETUI"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/aihelp/config/enums/PushPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/aihelp/config/enums/PushPlatform;->GETUI:Lnet/aihelp/config/enums/PushPlatform;

    .line 11
    new-instance v8, Lnet/aihelp/config/enums/PushPlatform;

    const-string v10, "HUAWEI"

    const/4 v11, 0x6

    invoke-direct {v8, v10, v9, v11}, Lnet/aihelp/config/enums/PushPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/aihelp/config/enums/PushPlatform;->HUAWEI:Lnet/aihelp/config/enums/PushPlatform;

    const/4 v10, 0x5

    new-array v10, v10, [Lnet/aihelp/config/enums/PushPlatform;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 5
    sput-object v10, Lnet/aihelp/config/enums/PushPlatform;->$VALUES:[Lnet/aihelp/config/enums/PushPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lnet/aihelp/config/enums/PushPlatform;->value:I

    return-void
.end method

.method public static fromValue(I)Lnet/aihelp/config/enums/PushPlatform;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    sget-object p0, Lnet/aihelp/config/enums/PushPlatform;->HUAWEI:Lnet/aihelp/config/enums/PushPlatform;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lnet/aihelp/config/enums/PushPlatform;->GETUI:Lnet/aihelp/config/enums/PushPlatform;

    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lnet/aihelp/config/enums/PushPlatform;->JPUSH:Lnet/aihelp/config/enums/PushPlatform;

    return-object p0

    .line 28
    :cond_3
    sget-object p0, Lnet/aihelp/config/enums/PushPlatform;->FIREBASE:Lnet/aihelp/config/enums/PushPlatform;

    return-object p0

    .line 26
    :cond_4
    sget-object p0, Lnet/aihelp/config/enums/PushPlatform;->APNS:Lnet/aihelp/config/enums/PushPlatform;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/config/enums/PushPlatform;
    .locals 1

    .line 5
    const-class v0, Lnet/aihelp/config/enums/PushPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/config/enums/PushPlatform;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/config/enums/PushPlatform;
    .locals 1

    .line 5
    sget-object v0, Lnet/aihelp/config/enums/PushPlatform;->$VALUES:[Lnet/aihelp/config/enums/PushPlatform;

    invoke-virtual {v0}, [Lnet/aihelp/config/enums/PushPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/config/enums/PushPlatform;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lnet/aihelp/config/enums/PushPlatform;->value:I

    return v0
.end method
