.class final Ldtr;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field final synthetic b:Lkfj;

.field final synthetic c:Ldts;


# direct methods
.method public constructor <init>(Ldts;Lkeb;Lkfj;)V
    .locals 0

    iput-object p1, p0, Ldtr;->c:Ldts;

    iput-object p2, p0, Ldtr;->a:Lkeb;

    iput-object p3, p0, Ldtr;->b:Lkfj;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bj()V
    .locals 1

    iget-object v0, p0, Ldtr;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    return-void
.end method

.method public final bk()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Ldtr;->c:Ldts;

    iget-object v0, v0, Ldts;->b:Lcea;

    invoke-virtual {v0}, Lcea;->d()Lkab;

    move-result-object v0

    iget-object v1, p0, Ldtr;->a:Lkeb;

    invoke-interface {v1}, Lkeb;->c()Lkou;

    move-result-object v1

    iget v0, v0, Lkab;->e:I

    if-eqz v1, :cond_1

    new-instance v2, Lgrw;

    iget-object v3, p0, Ldtr;->c:Ldts;

    iget-object v3, v3, Ldts;->a:Landroid/graphics/Rect;

    invoke-direct {v2, v1, v0, v3}, Lgrw;-><init>(Lkoq;ILandroid/graphics/Rect;)V

    iget-object v0, p0, Ldtr;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    move-result-object v0

    iget-object v1, p0, Ldtr;->a:Lkeb;

    iget-object v2, p0, Ldtr;->b:Lkfj;

    invoke-interface {v1, v2}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Ldtr;->c:Ldts;

    iget-object v2, v2, Ldts;->c:Lfxf;

    iget-wide v3, v0, Lkeg;->b:J

    iget-object v0, v2, Lfxf;->a:Ljava/lang/Object;

    iget-object v2, v2, Lfxf;->b:Ljava/lang/Object;

    check-cast v0, Lbkb;

    invoke-virtual {v0, v1}, Lbkb;->C(Lkpb;)F

    move-result v0

    check-cast v2, Lduv;

    invoke-virtual {v2, v3, v4, v0}, Lduv;->g(JF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Lkpb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_4
    throw v0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkpb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    iget-object v0, p0, Ldtr;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Ldtr;->a:Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    throw v0
.end method
