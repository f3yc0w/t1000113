.class final Lcom/netease/htprotect/c/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/htprotect/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/zip/ZipFile;

.field public b:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/htprotect/c/a/a$a;->a:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lcom/netease/htprotect/c/a/a$a;->b:Ljava/util/zip/ZipEntry;

    return-void
.end method
