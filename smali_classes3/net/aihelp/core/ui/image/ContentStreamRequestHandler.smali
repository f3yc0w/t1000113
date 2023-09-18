.class Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;
.super Lnet/aihelp/core/ui/image/RequestHandler;
.source "ContentStreamRequestHandler.java"


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestHandler;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public canHandleRequest(Lnet/aihelp/core/ui/image/Request;)Z
    .locals 1

    .line 37
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getInputStream(Lnet/aihelp/core/ui/image/Request;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public load(Lnet/aihelp/core/ui/image/Request;I)Lnet/aihelp/core/ui/image/RequestHandler$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;->getInputStream(Lnet/aihelp/core/ui/image/Request;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    .line 42
    new-instance p2, Lnet/aihelp/core/ui/image/RequestHandler$Result;

    sget-object v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-direct {p2, p1, v0}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    return-object p2
.end method
