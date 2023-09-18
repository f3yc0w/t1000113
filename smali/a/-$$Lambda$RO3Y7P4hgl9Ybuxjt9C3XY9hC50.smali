.class public final synthetic La/-$$Lambda$RO3Y7P4hgl9Ybuxjt9C3XY9hC50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:La/o;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(La/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/-$$Lambda$RO3Y7P4hgl9Ybuxjt9C3XY9hC50;->f$0:La/o;

    iput-object p2, p0, La/-$$Lambda$RO3Y7P4hgl9Ybuxjt9C3XY9hC50;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, La/-$$Lambda$RO3Y7P4hgl9Ybuxjt9C3XY9hC50;->f$0:La/o;

    iget-object v1, p0, La/-$$Lambda$RO3Y7P4hgl9Ybuxjt9C3XY9hC50;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, La/o;->a(La/o;Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
