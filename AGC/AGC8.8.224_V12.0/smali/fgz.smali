.class public final synthetic Lfgz;
.super Ljava/lang/Object;

# interfaces
.implements Lkml;


# instance fields
.field public final synthetic a:Lfhb;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfhb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfgz;->a:Lfhb;

    iput p2, p0, Lfgz;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10

    iget-object v0, p0, Lfgz;->a:Lfhb;

    iget v1, p0, Lfgz;->b:I

    iget-object v2, v0, Lfhb;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v9, v0, Lfhb;->e:Ljad;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkmo;

    iget v3, v2, Lkmo;->f:F

    iget v4, v2, Lkmo;->g:F

    iget-boolean v5, v0, Lfhb;->c:Z

    if-eqz v5, :cond_0

    const/16 v6, 0x5a

    if-eq v1, v6, :cond_1

    :cond_0
    if-nez v5, :cond_2

    const/16 v6, 0x10e

    if-ne v1, v6, :cond_2

    :cond_1
    neg-float v3, v3

    neg-float v4, v4

    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    neg-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, v2, Lkmo;->h:F

    iget-wide v7, v2, Lkmo;->e:J

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Ljad;->k(FFFJ)V

    iget-object v3, v0, Lfhb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v4, v2, Lkmo;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    sget-object p1, Lfhb;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "processGyroSamples called with a null eisNativeWrapper"

    const/16 v1, 0x8ef

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
