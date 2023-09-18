.class public Lnet/aihelp/utils/SpUtil;
.super Ljava/lang/Object;
.source "SpUtil.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "aihelp_share_data"

.field private static final FILE_NAME_OF_SDK_VERSION_1:Ljava/lang/String; = "com_ab_shared_preferences"

.field private static volatile INSTANCE:Lnet/aihelp/utils/SpUtil; = null

.field public static final KEY_DEVICE_ID_OF_SDK_VERSION_1_x:Ljava/lang/String; = "suuid"

.field public static final KEY_DEVICE_ID_OF_SDK_VERSION_2_x:Ljava/lang/String; = "key_device_id"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lnet/aihelp/utils/SpUtil;
    .locals 2

    .line 33
    sget-object v0, Lnet/aihelp/utils/SpUtil;->INSTANCE:Lnet/aihelp/utils/SpUtil;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lnet/aihelp/utils/SpUtil;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lnet/aihelp/utils/SpUtil;->INSTANCE:Lnet/aihelp/utils/SpUtil;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lnet/aihelp/utils/SpUtil;

    invoke-direct {v1}, Lnet/aihelp/utils/SpUtil;-><init>()V

    sput-object v1, Lnet/aihelp/utils/SpUtil;->INSTANCE:Lnet/aihelp/utils/SpUtil;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lnet/aihelp/utils/SpUtil;->INSTANCE:Lnet/aihelp/utils/SpUtil;

    return-object v0
.end method

.method private isBadContext()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lnet/aihelp/utils/SpUtil;

    invoke-direct {v0}, Lnet/aihelp/utils/SpUtil;-><init>()V

    sput-object v0, Lnet/aihelp/utils/SpUtil;->INSTANCE:Lnet/aihelp/utils/SpUtil;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    .line 172
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get1_xDeviceId()Ljava/lang/String;
    .locals 4

    .line 184
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "com_ab_shared_preferences"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "suuid"

    .line 186
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get2_xDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "key_device_id"

    .line 190
    invoke-virtual {p0, v0}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    .line 119
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 125
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4

    .line 95
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 96
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "aihelp_share_data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    .line 101
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    .line 107
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .line 113
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 114
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    .line 83
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 84
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "aihelp_share_data"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    .line 89
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 90
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 137
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "aihelp_share_data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 131
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 65
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 66
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 67
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 68
    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 70
    :cond_3
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 71
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 72
    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 73
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .line 149
    invoke-direct {p0}, Lnet/aihelp/utils/SpUtil;->isBadContext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/SpUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "aihelp_share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
