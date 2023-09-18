.class public Lcom/netease/mobsec/sdk/oaid/OaidHelper;
.super Ljava/lang/Object;


# static fields
.field private static final isP:Z

.field private static final isQ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3e

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.asus.msa.SupplementaryDID"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.asus.msa.SupplementaryDID"

    const-string v5, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v2}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/netease/mobsec/sdk/oaid/b$a;->a:I

    if-nez v1, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/b;

    if-eqz v4, :cond_2

    :try_start_2
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/b;

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/b$a$a;

    invoke-direct {v3, v1}, Lcom/netease/mobsec/sdk/oaid/b$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    :goto_1
    return-object v0

    :cond_4
    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isHuawei()Z

    move-result v2

    const/16 v5, 0x18

    if-eqz v2, :cond_7

    sget-object v1, Lcom/netease/mobsec/sdk/oaid/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_5

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pps_oaid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pps_track_limit"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/netease/mobsec/sdk/oaid/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/netease/mobsec/sdk/oaid/g;

    invoke-direct {v4, p0}, Lcom/netease/mobsec/sdk/oaid/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/netease/mobsec/sdk/oaid/h$a;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v3, v1, v2}, Lcom/netease/mobsec/sdk/oaid/h$a;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    :cond_5
    invoke-static {p0}, Lcom/netease/mobsec/sdk/oaid/h;->a(Landroid/content/Context;)Lcom/netease/mobsec/sdk/oaid/h$a;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v3, Lcom/netease/mobsec/sdk/oaid/h$a;->a:Ljava/lang/String;

    :goto_3
    return-object v0

    :cond_7
    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isLenovo()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_b

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.zui.deviceidservice"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.zui.deviceidservice"

    const-string v4, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v2}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v2}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/netease/mobsec/sdk/oaid/l$a;->a:I

    if-nez v1, :cond_8

    move-object v3, v0

    goto :goto_4

    :cond_8
    const-string v3, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_9

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/l;

    if-eqz v4, :cond_9

    :try_start_9
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/l;

    goto :goto_4

    :cond_9
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/l$a$a;

    invoke-direct {v3, v1}, Lcom/netease/mobsec/sdk/oaid/l$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/l;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_3
    :try_start_a
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    :cond_a
    :goto_5
    return-object v0

    :cond_b
    const-string v2, "MEIZU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_f

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.meizu.flyme.openidsdk"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :try_start_e
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string p0, "oaid"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_d
    move-object v1, v0

    :goto_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-nez p0, :cond_e

    move-object v0, v1

    :catch_6
    :catchall_3
    :cond_e
    :goto_7
    return-object v0

    :cond_f
    const-string v2, "NUBIA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_14

    const-string v1, "content://cn.nubia.identity/identity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const-string v1, "getOAID"

    invoke-virtual {p0, v1, v0, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-lt v2, v5, :cond_10

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "getOAID"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_12

    const-string p0, "code"

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "id"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string v1, "get oaid failed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    :catch_7
    :cond_13
    :goto_9
    return-object v0

    :cond_14
    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isOppo()Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_1d

    const-class v1, Lcom/netease/mobsec/sdk/oaid/f;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-ne v2, v5, :cond_15

    goto/16 :goto_f

    :cond_15
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.heytap.openid"

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_16

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-ltz v2, :cond_17

    goto :goto_a

    :cond_16
    if-eqz v2, :cond_17

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-lez v2, :cond_17

    :goto_a
    const/4 v4, 0x1

    goto :goto_b

    :catch_8
    nop

    :cond_17
    :goto_b
    if-eqz v4, :cond_1c

    :try_start_12
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.heytap.openid"

    const-string v6, "com.heytap.openid.IdentifyService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v4}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v2, :cond_1c

    :try_start_13
    invoke-virtual {v4}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v2

    sget v3, Lcom/netease/mobsec/sdk/oaid/e$a;->a:I

    if-nez v2, :cond_18

    move-object v3, v0

    goto :goto_c

    :cond_18
    const-string v3, "com.heytap.openid.IOpenID"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v3, :cond_19

    instance-of v5, v3, Lcom/netease/mobsec/sdk/oaid/e;

    if-eqz v5, :cond_19

    :try_start_14
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/e;

    goto :goto_c

    :cond_19
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/e$a$a;

    invoke-direct {v3, v2}, Lcom/netease/mobsec/sdk/oaid/e$a$a;-><init>(Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :goto_c
    if-nez v3, :cond_1a

    goto :goto_e

    :cond_1a
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/mobsec/sdk/oaid/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OUID"

    invoke-interface {v3, v2, v5, v6}, Lcom/netease/mobsec/sdk/oaid/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_d

    :catch_9
    move-object v2, v0

    :goto_d
    :try_start_16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v3, :cond_1b

    goto :goto_e

    :cond_1b
    move-object v0, v2

    :catch_a
    :goto_e
    :try_start_17
    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_f

    :catchall_4
    move-exception v2

    :try_start_18
    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :catch_b
    :try_start_19
    throw v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :catch_c
    :cond_1c
    :goto_f
    monitor-exit v1

    return-object v0

    :catchall_5
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1d
    const-string v2, "SAMSUNG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_21

    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.deviceidservice"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.deviceidservice"

    const-string v4, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v2}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    if-eqz v1, :cond_20

    :try_start_1b
    invoke-virtual {v2}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/netease/mobsec/sdk/oaid/j$a;->a:I

    if-nez v1, :cond_1e

    move-object v3, v0

    goto :goto_10

    :cond_1e
    const-string v3, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v3, :cond_1f

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/j;

    if-eqz v4, :cond_1f

    :try_start_1c
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/j;

    goto :goto_10

    :cond_1f
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/j$a$a;

    invoke-direct {v3, v1}, Lcom/netease/mobsec/sdk/oaid/j$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_10
    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/j;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :catch_d
    :try_start_1d
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_11

    :catchall_6
    move-exception v1

    :try_start_1e
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e

    :catch_e
    :try_start_1f
    throw v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    :catch_f
    :cond_20
    :goto_11
    return-object v0

    :cond_21
    const-string v2, "VIVO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isP:Z

    if-eqz v2, :cond_24

    const-string v1, "persist.sys.identifierid.supported"

    const-string v2, "0"

    :try_start_20
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10

    const-string v6, "get"

    const/4 v7, 0x2

    :try_start_21
    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10

    move-object v2, v1

    goto :goto_12

    :catch_10
    nop

    :goto_12
    const-string v1, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_13

    :cond_22
    :try_start_22
    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_11

    if-lez p0, :cond_23

    move-object v0, v1

    :catch_11
    :cond_23
    :goto_13
    return-object v0

    :cond_24
    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isXiaomi()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isP:Z

    if-eqz v2, :cond_25

    :try_start_23
    const-string v1, "com.android.id.impl.IdProviderImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_12

    const-string v5, "getOAID"

    :try_start_24
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_12

    move-object v0, p0

    :catch_12
    return-object v0

    :cond_25
    const-string v2, "ZTE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x20

    if-eqz v2, :cond_2b

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_2b

    :try_start_25
    const-string v1, "android.app.ZteDeviceIdentifyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_13

    const-string v6, "getOAID"

    :try_start_26
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13

    goto :goto_14

    :catch_13
    move-object v1, v0

    :goto_14
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_26

    return-object v1

    :cond_26
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.mdid.msa"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_17

    :try_start_28
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.mdid.msa"

    const-string v5, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.bun.msa.action.start.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    const-string v2, "com.bun.msa.param.pkgname"

    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.bun.msa.param.runinset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_14

    const/4 v4, 0x1

    goto :goto_15

    :catch_14
    nop

    :goto_15
    if-nez v4, :cond_27

    goto :goto_17

    :cond_27
    :try_start_2a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.mdid.msa"

    const-string v4, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.bun.msa.action.bindto.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_17

    const-string v2, "com.bun.msa.param.pkgname"

    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v2}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_17

    if-eqz v1, :cond_2a

    :try_start_2c
    invoke-virtual {v2}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/netease/mobsec/sdk/oaid/c$a;->a:I

    if-nez v1, :cond_28

    move-object v3, v0

    goto :goto_16

    :cond_28
    const-string v3, "com.bun.lib.MsaIdInterface"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_15
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    if-eqz v3, :cond_29

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/c;

    if-eqz v4, :cond_29

    :try_start_2d
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/c;

    goto :goto_16

    :cond_29
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/c$a$a;

    invoke-direct {v3, v1}, Lcom/netease/mobsec/sdk/oaid/c$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_16
    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/c;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_15
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    :catch_15
    :try_start_2e
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_17

    goto :goto_17

    :catchall_7
    move-exception v1

    :try_start_2f
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_16

    :catch_16
    :try_start_30
    throw v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_17

    :catch_17
    :cond_2a
    :goto_17
    return-object v0

    :cond_2b
    const-string v2, "FERRMEOS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isFreeMeOS()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2c
    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_30

    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.creator"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.action.msa"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.creator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v2}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1a

    if-eqz v1, :cond_2f

    :try_start_32
    invoke-virtual {v2}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/netease/mobsec/sdk/oaid/a$a;->a:I

    if-nez v1, :cond_2d

    move-object v3, v0

    goto :goto_18

    :cond_2d
    const-string v3, "com.android.creator.IdsSupplier"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_18
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    if-eqz v3, :cond_2e

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/a;

    if-eqz v4, :cond_2e

    :try_start_33
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/a;

    goto :goto_18

    :cond_2e
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/a$a$a;

    invoke-direct {v3, v1}, Lcom/netease/mobsec/sdk/oaid/a$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_18
    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/a;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_18
    .catchall {:try_start_33 .. :try_end_33} :catchall_8

    :catch_18
    :try_start_34
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1a

    goto :goto_19

    :catchall_8
    move-exception v1

    :try_start_35
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_19

    :catch_19
    :try_start_36
    throw v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1a

    :catch_1a
    :cond_2f
    :goto_19
    return-object v0

    :cond_30
    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isSmartisan()Z

    move-result v2

    if-eqz v2, :cond_33

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_33

    :try_start_37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oaid"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_32

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1b

    if-eqz v1, :cond_31

    goto :goto_1a

    :cond_31
    move-object v0, p0

    :catch_1b
    :cond_32
    :goto_1a
    return-object v0

    :cond_33
    invoke-static {}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isBBK()Z

    move-result v2

    if-eqz v2, :cond_38

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_38

    :try_start_38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oaid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_34

    goto :goto_1b

    :cond_34
    move-object v0, v1

    goto :goto_1c

    :cond_35
    :goto_1b
    const-string v1, "ovum_msaserver"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1c

    const-string v2, "getOaid"

    :try_start_39
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1c

    if-eq v1, v5, :cond_36

    goto :goto_1c

    :cond_36
    move-object v0, p0

    :catch_1c
    :cond_37
    :goto_1c
    return-object v0

    :cond_38
    const-string v2, "COOLPAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-boolean v2, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v2, :cond_3c

    :try_start_3a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.coolpad.deviceidsupport"

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.coolpad.deviceidsupport"

    const-string v5, "com.coolpad.deviceidsupport.DeviceIdService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v2}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1f

    if-eqz v1, :cond_3b

    :try_start_3b
    invoke-virtual {v2}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/netease/mobsec/sdk/oaid/d$a;->a:I

    if-nez v1, :cond_39

    move-object v3, v0

    goto :goto_1d

    :cond_39
    const-string v3, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_1d
    .catchall {:try_start_3b .. :try_end_3b} :catchall_9

    if-eqz v3, :cond_3a

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/d;

    if-eqz v4, :cond_3a

    :try_start_3c
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/d;

    goto :goto_1d

    :cond_3a
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/d$a$a;

    invoke-direct {v3, v1}, Lcom/netease/mobsec/sdk/oaid/d$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/netease/mobsec/sdk/oaid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_1d
    .catchall {:try_start_3c .. :try_end_3c} :catchall_9

    :catch_1d
    :try_start_3d
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1f

    goto :goto_1e

    :catchall_9
    move-exception v1

    :try_start_3e
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1e

    :catch_1e
    :try_start_3f
    throw v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_1f

    :catch_1f
    :cond_3b
    :goto_1e
    return-object v0

    :cond_3c
    const-string v2, "PRIZE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-boolean v1, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->isQ:Z

    if-eqz v1, :cond_3d

    invoke-static {p0}, Lcom/netease/mobsec/sdk/oaid/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    return-object v0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can not run in main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "get"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const-string p0, "unknown"

    aput-object p0, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static isBBK()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEBBK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isFreeMeOS()Z
    .locals 2

    const-string v0, "ro.build.freeme.label"

    invoke-static {v0}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FREEMEOS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isHuawei()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HUAWEI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HONOR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u534e\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isLenovo()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LENOVO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MOTOLORA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZUK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isOppo()Z
    .locals 4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPPO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ONEPLUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "REALME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isSmartisan()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMARTISAN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DELTAINNO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isXiaomi()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XIAOMI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BLACKSHARK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "REDMI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MEITU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
