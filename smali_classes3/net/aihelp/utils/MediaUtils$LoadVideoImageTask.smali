.class public Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;
.super Landroid/os/AsyncTask;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/utils/MediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadVideoImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;


# direct methods
.method public constructor <init>(Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    iput-object p1, p0, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->listener:Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 68
    aget-object p1, p1, v0

    invoke-static {p1}, Lnet/aihelp/utils/MediaUtils;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->doInBackground([Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->listener:Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;->onLoadImage(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
