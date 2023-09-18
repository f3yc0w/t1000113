.class public final La/a0$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a0;-><init>(Landroid/app/Activity;Ljava/lang/String;La/i0;La/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a0;


# direct methods
.method public constructor <init>(La/a0;)V
    .locals 0

    iput-object p1, p0, La/a0$a;->a:La/a0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p2, p0, La/a0$a;->a:La/a0;

    .line 1
    iget-object p2, p2, La/a0;->e:Ljava/util/HashMap;

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/h;

    if-eqz p2, :cond_3

    .line 3
    iget-object v2, p2, La/h;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p2, La/h;->b:Ljava/lang/String;

    .line 5
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const-string v5, "download"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Landroid/app/DownloadManager;

    const-string v8, ""

    if-eqz v7, :cond_1

    check-cast v5, Landroid/app/DownloadManager;

    invoke-virtual {v5, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_0

    iget-object v4, p0, La/a0$a;->a:La/a0;

    .line 6
    iget-object v4, v4, La/a0;->a:Landroid/app/Activity;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_COMPLETED:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/io/File;

    iget-object v4, p0, La/a0$a;->a:La/a0;

    .line 8
    iget-object v4, v4, La/a0;->a:Landroid/app/Activity;

    .line 9
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {p1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string p1, "file.absolutePath"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "reason"

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "-1"

    .line 10
    :goto_0
    iget-boolean p2, p2, La/h;->c:Z

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, La/f0;

    invoke-direct {p2, v2, p1, v8}, La/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La/a0$a;->a:La/a0;

    .line 12
    iget-object v2, p1, La/a0;->c:La/i0;

    .line 13
    iget-object p1, p1, La/a0;->b:Ljava/lang/String;

    .line 14
    sget-object v3, La/j0;->h:La/j0;

    invoke-interface {v2, p1, v3, p2}, La/i0;->a(Ljava/lang/String;La/j0;La/f0;)V

    :cond_2
    iget-object p1, p0, La/a0$a;->a:La/a0;

    .line 15
    iget-object p1, p1, La/a0;->e:Ljava/util/HashMap;

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
