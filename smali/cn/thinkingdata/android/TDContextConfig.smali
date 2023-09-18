.class Lcn/thinkingdata/android/TDContextConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_MIN_DB_LIMIT:I = 0x20

.field private static final DEFAULT_QUIT_SAFELY_TIME_OUT:I = 0x7d0

.field private static final DEFAULT_RETENTION_DAYS:I = 0xf

.field private static final KEY_ENABLE_LOG:Ljava/lang/String; = "cn.thinkingdata.android.EnableTrackLogging"

.field private static final KEY_ENABLE_QUIT_SAFELY:Ljava/lang/String; = "cn.thinkingdata.android.EnableQuitSafely"

.field private static final KEY_MAIN_PROCESS_NAME:Ljava/lang/String; = "cn.thinkingdata.android.MainProcessName"

.field private static final KEY_MIN_DB_LIMIT:Ljava/lang/String; = "cn.thinkingdata.android.MinimumDatabaseLimit"

.field private static final KEY_QUIT_SAFELY_TIMEOUT:Ljava/lang/String; = "cn.thinkingdata.android.QuitSafelyTimeout"

.field private static final KEY_RETENTION_DAYS:Ljava/lang/String; = "cn.thinkingdata.android.RetentionDays"

.field private static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcn/thinkingdata/android/TDContextConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnableQuitSafely:Z

.field private final mMainProcessName:Ljava/lang/String;

.field private final mMinimumDatabaseLimit:I

.field private final mQuitSafelyTimeout:I

.field private final mRetentionDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/TDContextConfig;->sInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "cn.thinkingdata.android.MainProcessName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mMainProcessName:Ljava/lang/String;

    const-string v0, "cn.thinkingdata.android.RetentionDays"

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v1, v0

    :cond_1
    iput v1, p0, Lcn/thinkingdata/android/TDContextConfig;->mRetentionDays:I

    const-string v0, "cn.thinkingdata.android.EnableQuitSafely"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mEnableQuitSafely:Z

    const-string v0, "cn.thinkingdata.android.QuitSafelyTimeout"

    const/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v2, v0

    :cond_2
    iput v2, p0, Lcn/thinkingdata/android/TDContextConfig;->mQuitSafelyTimeout:I

    const-string v0, "cn.thinkingdata.android.MinimumDatabaseLimit"

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    move v2, v0

    :cond_3
    iput v2, p0, Lcn/thinkingdata/android/TDContextConfig;->mMinimumDatabaseLimit:I

    const-string v0, "cn.thinkingdata.android.EnableTrackLogging"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcn/thinkingdata/android/utils/TDLog;->setEnableLog(Z)V

    :cond_4
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/TDContextConfig;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/thinkingdata/android/TDContextConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcn/thinkingdata/android/TDContextConfig;

    invoke-direct {v1, p0}, Lcn/thinkingdata/android/TDContextConfig;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method getDataExpiration()J
    .locals 2

    iget v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mRetentionDays:I

    const v1, 0x5265c00

    mul-int v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method getMainProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mMainProcessName:Ljava/lang/String;

    return-object v0
.end method

.method getMinimumDatabaseLimit()I
    .locals 1

    iget v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mMinimumDatabaseLimit:I

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method getQuitSafelyTimeout()I
    .locals 1

    iget v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mQuitSafelyTimeout:I

    return v0
.end method

.method quitSafelyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/thinkingdata/android/TDContextConfig;->mEnableQuitSafely:Z

    return v0
.end method
