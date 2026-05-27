.class public final Lazc;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p0

    return p0
.end method

.method public static b(Lbbs;Lbbx;)Lbbr;
    .locals 5

    iget-object v0, p1, Lbbx;->a:Ljava/lang/String;

    iget p1, p1, Lbbx;->b:I

    const-string v1, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lapy;->g(ILjava/lang/String;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lapy;->e(IJ)V

    check-cast p0, Lbbw;

    iget-object p1, p0, Lbbw;->a:Lapt;

    invoke-virtual {p1}, Lapt;->l()V

    iget-object p0, p0, Lbbw;->a:Lapt;

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v0, "generation"

    invoke-static {p0, v0}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "system_id"

    invoke-static {p0, v2}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v2, Lbbr;

    invoke-direct {v2, v4, p1, v0}, Lbbr;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_1

    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lapy;->j()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lapy;->j()V

    throw p1
.end method
