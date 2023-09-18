.class public Lnet/aihelp/common/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# static fields
.field public static CUSTOM_DATA:Ljava/lang/String; = "{\"elva-custom-metadata\":{}}"

.field public static ENTRANCE_TAGS:Ljava/lang/String; = ""

.field public static PUSH_PLATFORM:I = 0x0

.field public static PUSH_TOKEN:Ljava/lang/String; = ""

.field public static SERVER_ID:Ljava/lang/String; = ""

.field public static USER_ID:Ljava/lang/String; = ""

.field public static USER_NAME:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetUserProfile(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-static {p0}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    const-string p0, "anonymous"

    .line 22
    sput-object p0, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    const-string p0, "-1"

    .line 23
    sput-object p0, Lnet/aihelp/common/UserProfile;->SERVER_ID:Ljava/lang/String;

    const-string p0, "{\"elva-custom-metadata\":{}}"

    .line 24
    sput-object p0, Lnet/aihelp/common/UserProfile;->CUSTOM_DATA:Ljava/lang/String;

    const-string p0, ""

    .line 25
    sput-object p0, Lnet/aihelp/common/UserProfile;->PUSH_TOKEN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput v0, Lnet/aihelp/common/UserProfile;->PUSH_PLATFORM:I

    .line 27
    sput-object p0, Lnet/aihelp/common/UserProfile;->ENTRANCE_TAGS:Ljava/lang/String;

    return-void
.end method
