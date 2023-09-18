.class public final La/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e$a;
    }
.end annotation


# static fields
.field public static final b:La/e$a;

.field public static final c:La/e;


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "La/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/e$a;

    .line 1
    invoke-direct {v0}, La/e$a;-><init>()V

    .line 2
    sput-object v0, La/e;->b:La/e$a;

    new-instance v0, La/e;

    invoke-direct {v0}, La/e;-><init>()V

    sput-object v0, La/e;->c:La/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/e;->a:Ljava/util/HashMap;

    return-void
.end method
