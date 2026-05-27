.class public final Lddc;
.super Ldcy;


# instance fields
.field public final a:Lapt;

.field public final b:Laqa;

.field public final c:Lbze;

.field private final d:Lapo;

.field private final e:Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 2

    invoke-direct {p0}, Ldcy;-><init>()V

    new-instance v0, Lbze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbze;-><init>([F)V

    iput-object v0, p0, Lddc;->c:Lbze;

    iput-object p1, p0, Lddc;->a:Lapt;

    new-instance v0, Ldcz;

    invoke-direct {v0, p1}, Ldcz;-><init>(Lapt;)V

    iput-object v0, p0, Lddc;->d:Lapo;

    new-instance v0, Ldda;

    invoke-direct {v0, p1}, Ldda;-><init>(Lapt;)V

    iput-object v0, p0, Lddc;->e:Lapo;

    new-instance v0, Lddb;

    invoke-direct {v0, p1}, Lddb;-><init>(Lapt;)V

    iput-object v0, p0, Lddc;->b:Laqa;

    return-void
.end method


# virtual methods
.method public final a(Lddd;)Ldcx;
    .locals 6

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    new-instance v0, Ldcx;

    invoke-direct {v0, p1}, Ldcx;-><init>(Lddd;)V

    iget-object v1, p0, Lddc;->a:Lapt;

    invoke-virtual {v1}, Lapt;->l()V

    iget-object v1, p0, Lddc;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lddc;->d:Lapo;

    invoke-virtual {v1, v0}, Lapo;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    const-string v0, "SELECT * FROM HardwareHelpDialogCounts WHERE reason = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v0

    invoke-virtual {p1}, Lddd;->ordinal()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lapy;->e(IJ)V

    iget-object p1, p0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->l()V

    iget-object p1, p0, Lddc;->a:Lapt;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "reason"

    invoke-static {p1, v1}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "impressionsBeforeReboot"

    invoke-static {p1, v2}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "impressionsAfterReboot"

    invoke-static {p1, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "rebootCount"

    invoke-static {p1, v4}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {}, Lddd;->values()[Lddd;

    move-result-object v5

    aget-object v1, v5, v1

    new-instance v5, Ldcx;

    invoke-direct {v5, v1}, Ldcx;-><init>(Lddd;)V

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Ldcx;->b:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Ldcx;->c:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Ldcx;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    iget-object p1, p0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p1, p0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->o()V

    return-object v5

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    throw v1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
.end method

.method public final b(Ldcx;)V
    .locals 1

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Lddc;->e:Lapo;

    invoke-virtual {v0, p1}, Lapo;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->o()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lddc;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
.end method
