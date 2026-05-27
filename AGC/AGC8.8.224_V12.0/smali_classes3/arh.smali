.class public final Larh;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .locals 1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static final b(Lnaa;Landroid/database/sqlite/SQLiteDatabase;)Laqy;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lnaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Laqy;

    iget-object v1, v0, Laqy;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Laqy;

    invoke-direct {v0, p1}, Laqy;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lnaa;->a:Ljava/lang/Object;

    return-object v0
.end method
