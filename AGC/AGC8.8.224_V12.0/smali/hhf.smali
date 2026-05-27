.class final Lhhf;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:I

.field final synthetic b:[I

.field final synthetic c:F

.field final synthetic d:Lhhh;


# direct methods
.method public constructor <init>(Lhhh;I[IF)V
    .locals 0

    iput-object p1, p0, Lhhf;->d:Lhhh;

    iput p2, p0, Lhhf;->a:I

    iput-object p3, p0, Lhhf;->b:[I

    iput p4, p0, Lhhf;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lhhh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xe1d

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Sound resource %d failed to load: %s"

    iget v2, p0, Lhhf;->a:I

    invoke-interface {v0, v1, v2, p1}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lhhf;->d:Lhhh;

    iget v0, p0, Lhhf;->a:I

    invoke-virtual {p1, v0}, Lhhh;->h(I)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lhhf;->d:Lhhh;

    iget-object p1, p1, Lhhh;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lhhf;->d:Lhhh;

    iget-boolean v1, v0, Lhhh;->d:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lhhh;->c:Landroid/util/SparseArray;

    iget v1, p0, Lhhf;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhg;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhhf;->b:[I

    iget-object v2, p0, Lhhf;->d:Lhhh;

    invoke-virtual {v2}, Lhhh;->g()Landroid/media/SoundPool;

    move-result-object v3

    iget v4, v0, Lhhg;->b:I

    iget v6, p0, Lhhf;->c:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v6

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    iget-object v0, p0, Lhhf;->d:Lhhh;

    iget-object v0, v0, Lhhh;->e:Ljava/util/Collection;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lhhf;->b:[I

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lhhf;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    sget-object p1, Lhhh;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xe1e

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget v0, p0, Lhhf;->a:I

    const-string v1, "Sound resource %d failed to load."

    invoke-interface {p1, v1, v0}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lhhf;->d:Lhhh;

    iget v0, p0, Lhhf;->a:I

    invoke-virtual {p1, v0}, Lhhh;->h(I)V

    return-void
.end method
