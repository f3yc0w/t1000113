.class Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/DatabaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mDatabaseFile:Ljava/io/File;

.field private final mMinimumDatabaseLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mDatabaseFile:Ljava/io/File;

    invoke-static {p1}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDContextConfig;->getMinimumDatabaseLimit()I

    move-result p1

    iput p1, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mMinimumDatabaseLimit:I

    return-void
.end method


# virtual methods
.method belowMemThreshold()Z
    .locals 6

    iget-object v0, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    iget v0, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mMinimumDatabaseLimit:I

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v0, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method deleteDatabase()V
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lcn/thinkingdata/android/DatabaseAdapter$DatabaseHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "ThinkingAnalytics.DatabaseAdapter"

    const-string v1, "Creating a new ThinkingData events database"

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/thinkingdata/android/DatabaseAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/thinkingdata/android/DatabaseAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "ThinkingAnalytics.DatabaseAdapter"

    const-string p3, "Upgrading ThinkingData events database"

    invoke-static {p2, p3}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DROP TABLE IF EXISTS "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {p3}, Lcn/thinkingdata/android/DatabaseAdapter$Table;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/thinkingdata/android/DatabaseAdapter;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcn/thinkingdata/android/DatabaseAdapter;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
