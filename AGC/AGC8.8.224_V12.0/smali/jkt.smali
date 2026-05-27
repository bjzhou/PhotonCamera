.class public final Ljkt;
.super Landroid/database/sqlite/SQLiteException;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteException;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
