.class public final La/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:La/v;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/v;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/u;->a:La/v;

    iput-boolean p2, p0, La/u;->b:Z

    iput-object p3, p0, La/u;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, La/u;->a:La/v;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, La/v;->i:Landroid/view/animation/AnimationSet;

    .line 2
    iget-boolean v0, p0, La/u;->b:Z

    iget-object v1, p0, La/u;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0, v1}, La/v;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
