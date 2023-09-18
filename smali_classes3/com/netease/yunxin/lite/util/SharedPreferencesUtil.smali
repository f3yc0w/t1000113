.class public Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/util/SharedPreferencesUtil$InstanceHolder;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL_RACING_LIMIT:Ljava/lang/String; = "KEY_CHANNEL_RACING_LIMIT"

.field public static final KEY_COMPAT_DEVICE_NAME:Ljava/lang/String; = "compat_device_name"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_HTTP_DNS:Ljava/lang/String; = "KEY_HTTP_DNS"

.field public static final KEY_HTTP_ZERO_RTT:Ljava/lang/String; = "KEY_HTTP_ZERO_RTT"

.field public static final KEY_IS_EMULATOR:Ljava/lang/String; = "is_emulator"

.field public static final NETEASE_YUNXIN_NERTC_PREFER:Ljava/lang/String; = "com_netease_yunxin_nertc_prefer"


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/util/SharedPreferencesUtil$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;-><init>()V

    return-void
.end method

.method private checkPreferences(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "com_netease_yunxin_nertc_prefer"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;
    .locals 1

    .line 22
    invoke-static {}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil$InstanceHolder;->access$100()Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "defautlValue"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->checkPreferences(Landroid/content/Context;)V

    .line 62
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "defautlValue"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->checkPreferences(Landroid/content/Context;)V

    .line 52
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "defValue"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->checkPreferences(Landroid/content/Context;)V

    .line 41
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "value"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->checkPreferences(Landroid/content/Context;)V

    .line 67
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "value"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->checkPreferences(Landroid/content/Context;)V

    .line 57
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "value"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->checkPreferences(Landroid/content/Context;)V

    .line 46
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
