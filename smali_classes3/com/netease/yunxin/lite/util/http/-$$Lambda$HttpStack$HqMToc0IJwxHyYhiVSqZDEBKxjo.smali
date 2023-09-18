.class public final synthetic Lcom/netease/yunxin/lite/util/http/-$$Lambda$HttpStack$HqMToc0IJwxHyYhiVSqZDEBKxjo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/http/-$$Lambda$HttpStack$HqMToc0IJwxHyYhiVSqZDEBKxjo;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/http/-$$Lambda$HttpStack$HqMToc0IJwxHyYhiVSqZDEBKxjo;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/netease/yunxin/lite/util/http/HttpStack;->lambda$configHttps$0(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
