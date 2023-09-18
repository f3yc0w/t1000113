.class public final Lcom/netease/htprotect/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/htprotect/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/htprotect/a/a$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netease/htprotect/a/a$b;->b:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/a/a$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic a(Lcom/netease/htprotect/a/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/netease/htprotect/a/a$b;->b:Z

    return p0
.end method

.method private static synthetic b(Lcom/netease/htprotect/a/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/netease/htprotect/a/a$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/htprotect/a/a$b;->b:Z

    return v0
.end method
