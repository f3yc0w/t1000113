.class public final La/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/g0$a;
    }
.end annotation


# static fields
.field public static final i:La/g0$a;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:La/i0;

.field public e:Landroidx/browser/customtabs/CustomTabsClient;

.field public f:Landroidx/browser/customtabs/CustomTabsSession;

.field public g:Ljava/lang/Integer;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/g0$a;

    .line 1
    invoke-direct {v0}, La/g0$a;-><init>()V

    .line 2
    sput-object v0, La/g0;->i:La/g0$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;La/i0;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g0;->a:Landroid/app/Activity;

    iput-object p2, p0, La/g0;->b:Ljava/lang/String;

    iput-object p3, p0, La/g0;->c:Ljava/lang/String;

    iput-object p4, p0, La/g0;->d:La/i0;

    sget-object p1, La/l;->b:La/l$a;

    invoke-virtual {p1}, La/l$a;->a()La/l;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, La/l;->a(La/g0;Ljava/lang/String;)V

    invoke-virtual {p0}, La/g0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, La/g0;->i:La/g0$a;

    iget-object v1, p0, La/g0;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, La/g0$a;->a(Landroid/app/Activity;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, La/g0;->a:Landroid/app/Activity;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v2, La/g0$b;

    invoke-direct {v2, p0}, La/g0$b;-><init>(La/g0;)V

    invoke-static {v1, v0, v2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, La/i;->c:La/i$a;

    .line 1
    sget-object v0, La/i;->d:La/i;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Custom Tabs didn\'t bind to a tab service. Something goes wrong. Trying to show the browser without a session."

    const-string v2, "message"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, La/i;->a(ILjava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 5
    iget-object v1, p0, La/g0;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_1
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, p0, La/g0;->a:Landroid/app/Activity;

    iget-object v2, p0, La/g0;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, La/g0;->e:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g0;->h:Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 1
    iget-object v2, p0, La/g0;->f:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_1

    new-instance v2, La/h0;

    invoke-direct {v2, p0}, La/h0;-><init>(La/g0;)V

    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, La/g0;->f:Landroidx/browser/customtabs/CustomTabsSession;

    :cond_1
    iget-object v0, p0, La/g0;->f:Landroidx/browser/customtabs/CustomTabsSession;

    .line 2
    invoke-direct {v1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 3
    iget-object v0, p0, La/g0;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_2
    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, p0, La/g0;->a:Landroid/app/Activity;

    iget-object v2, p0, La/g0;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
