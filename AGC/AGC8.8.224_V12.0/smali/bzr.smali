.class public final Lbzr;
.super Ljava/lang/Object;

# interfaces
.implements Lbzk;
.implements Lbzy;
.implements Lbzq;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lbzo;

.field private final c:Lbzm;

.field private final d:Landroid/content/Context;

.field private final e:Lboq;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Class;

.field private final h:Lbzg;

.field private final i:I

.field private final j:I

.field private final k:Lbos;

.field private final l:Lbzz;

.field private final m:Ljava/util/List;

.field private final n:Ljava/util/concurrent/Executor;

.field private o:Lbsn;

.field private p:Lbsb;

.field private q:J

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Ljava/lang/RuntimeException;

.field private x:I

.field private final y:Lfkg;

.field private volatile z:Llij;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lboq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lbzg;IILbos;Lbzz;Lbzo;Ljava/util/List;Lbzm;Llij;Ljava/util/concurrent/Executor;[B[B[B[B)V
    .locals 3

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lfkg;->d()Lfkg;

    move-result-object v2

    iput-object v2, v0, Lbzr;->y:Lfkg;

    move-object v2, p3

    iput-object v2, v0, Lbzr;->a:Ljava/lang/Object;

    move-object v2, p1

    iput-object v2, v0, Lbzr;->d:Landroid/content/Context;

    iput-object v1, v0, Lbzr;->e:Lboq;

    move-object v2, p4

    iput-object v2, v0, Lbzr;->f:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Lbzr;->g:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, Lbzr;->h:Lbzg;

    move v2, p7

    iput v2, v0, Lbzr;->i:I

    move v2, p8

    iput v2, v0, Lbzr;->j:I

    move-object v2, p9

    iput-object v2, v0, Lbzr;->k:Lbos;

    move-object v2, p10

    iput-object v2, v0, Lbzr;->l:Lbzz;

    move-object v2, p11

    iput-object v2, v0, Lbzr;->b:Lbzo;

    move-object v2, p12

    iput-object v2, v0, Lbzr;->m:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, Lbzr;->c:Lbzm;

    move-object/from16 v2, p14

    iput-object v2, v0, Lbzr;->z:Llij;

    move-object/from16 v2, p15

    iput-object v2, v0, Lbzr;->n:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    iput v2, v0, Lbzr;->x:I

    iget-object v2, v0, Lbzr;->w:Ljava/lang/RuntimeException;

    if-nez v2, :cond_0

    iget-object v1, v1, Lboq;->f:Lbkc;

    const-class v2, Lbon;

    invoke-virtual {v1, v2}, Lbkc;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lbzr;->w:Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private static h(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    int-to-float p0, p0

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private final i()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lbzr;->s:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbzr;->h:Lbzg;

    iget-object v1, v0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lbzr;->s:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget v0, v0, Lbzg;->f:I

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lbzr;->o(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lbzr;->s:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lbzr;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final o(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lbzr;->h:Lbzg;

    iget-object v0, v0, Lbzg;->p:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbzr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lbzr;->d:Landroid/content/Context;

    invoke-static {v1, v1, p1, v0}, Lbxo;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private final p()V
    .locals 2

    iget-boolean v0, p0, Lbzr;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final q()Z
    .locals 1

    iget-object v0, p0, Lbzr;->c:Lbzm;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lbzm;->h(Lbzk;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final r()V
    .locals 1

    iget-object v0, p0, Lbzr;->c:Lbzm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbzm;->a()Lbzm;

    move-result-object v0

    invoke-interface {v0}, Lbzm;->j()Z

    :cond_0
    return-void
.end method

.method private final s(Lbsj;)V
    .locals 7

    iget-object v0, p0, Lbzr;->y:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzr;->e:Lboq;

    iget v1, v1, Lboq;->e:I

    const-string v1, "Glide"

    iget-object v2, p0, Lbzr;->f:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lbzr;->t:I

    iget v4, p0, Lbzr;->u:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load failed for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with dimensions ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lbsj;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lbzr;->p:Lbsb;

    const/4 v2, 0x5

    iput v2, p0, Lbzr;->x:I

    iget-object v2, p0, Lbzr;->c:Lbzm;

    if-eqz v2, :cond_1

    invoke-interface {v2, p0}, Lbzm;->d(Lbzk;)V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbzr;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lbzr;->m:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbzo;

    invoke-direct {p0}, Lbzr;->r()V

    invoke-interface {v4, p1}, Lbzo;->l(Lbsj;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lbzr;->b:Lbzo;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lbzr;->r()V

    invoke-interface {v2, p1}, Lbzo;->l(Lbsj;)V

    :cond_3
    invoke-direct {p0}, Lbzr;->q()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lbzr;->r:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    iput-object v1, p0, Lbzr;->r:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lbzr;->h:Lbzg;

    iget p1, p1, Lbzg;->d:I

    if-lez p1, :cond_5

    invoke-direct {p0, p1}, Lbzr;->o(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lbzr;->r:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object p1, p0, Lbzr;->r:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_6

    invoke-direct {p0}, Lbzr;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_6
    iget-object v1, p0, Lbzr;->l:Lbzz;

    invoke-interface {v1, p1}, Lbzz;->e(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iput-boolean v3, p0, Lbzr;->v:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v3, p0, Lbzr;->v:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbzr;->y:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lbzr;->p()V

    iget-object v1, p0, Lbzr;->y:Lfkg;

    invoke-virtual {v1}, Lfkg;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Lbzr;->q:J

    iget-object v1, p0, Lbzr;->f:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget v1, p0, Lbzr;->i:I

    iget v2, p0, Lbzr;->j:I

    invoke-static {v1, v2}, Lcaw;->n(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lbzr;->i:I

    iput v1, p0, Lbzr;->t:I

    iget v1, p0, Lbzr;->j:I

    iput v1, p0, Lbzr;->u:I

    :cond_0
    new-instance v1, Lbsj;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lbsj;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lbzr;->s(Lbsj;)V

    monitor-exit v0

    return-void

    :cond_1
    iget v1, p0, Lbzr;->x:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lbzr;->o:Lbsn;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lbzr;->e(Lbsn;I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lbzr;->m:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbzo;

    instance-of v4, v3, Lbzi;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    check-cast v3, Lbzi;

    const/4 v1, 0x0

    throw v1

    :cond_5
    :goto_1
    const/4 v1, 0x3

    iput v1, p0, Lbzr;->x:I

    iget v3, p0, Lbzr;->i:I

    iget v4, p0, Lbzr;->j:I

    invoke-static {v3, v4}, Lcaw;->n(II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lbzr;->i:I

    iget v4, p0, Lbzr;->j:I

    invoke-virtual {p0, v3, v4}, Lbzr;->g(II)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lbzr;->l:Lbzz;

    invoke-interface {v3, p0}, Lbzz;->d(Lbzy;)V

    :goto_2
    iget v3, p0, Lbzr;->x:I

    if-eq v3, v2, :cond_7

    if-ne v3, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Lbzr;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lbzr;->l:Lbzz;

    invoke-direct {p0}, Lbzr;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lbzz;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    monitor-exit v0

    return-void

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lbzr;->p()V

    iget-object v1, p0, Lbzr;->y:Lfkg;

    invoke-virtual {v1}, Lfkg;->c()V

    iget v1, p0, Lbzr;->x:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    invoke-direct {p0}, Lbzr;->p()V

    iget-object v1, p0, Lbzr;->y:Lfkg;

    invoke-virtual {v1}, Lfkg;->c()V

    iget-object v1, p0, Lbzr;->l:Lbzz;

    invoke-interface {v1, p0}, Lbzz;->j(Lbzy;)V

    iget-object v1, p0, Lbzr;->p:Lbsb;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, v1, Lbsb;->c:Llij;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v1, Lbsb;->a:Lbsf;

    iget-object v1, v1, Lbsb;->b:Lbzq;

    invoke-virtual {v5, v1}, Lbsf;->g(Lbzq;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v3, p0, Lbzr;->p:Lbsb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lbzr;->o:Lbsn;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lbzr;->o:Lbsn;

    move-object v3, v1

    goto :goto_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lbzr;->c:Lbzm;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Lbzm;->g(Lbzk;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lbzr;->l:Lbzz;

    invoke-direct {p0}, Lbzr;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v1, v4}, Lbzz;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iput v2, p0, Lbzr;->x:I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_4

    check-cast v3, Lbsh;

    invoke-virtual {v3}, Lbsh;->f()V

    :cond_4
    return-void

    :cond_5
    :try_start_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public final d(Lbsj;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzr;->s(Lbsj;)V

    return-void
.end method

.method public final e(Lbsn;I)V
    .locals 10

    iget-object v0, p0, Lbzr;->y:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iput-object v0, p0, Lbzr;->p:Lbsb;

    if-nez p1, :cond_0

    new-instance p1, Lbsj;

    iget-object p2, p0, Lbzr;->g:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " inside, but instead got null."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbzr;->d(Lbsj;)V

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {p1}, Lbsn;->c()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, p0, Lbzr;->g:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, p0, Lbzr;->c:Lbzm;

    const/4 v4, 0x4

    if-eqz v3, :cond_3

    invoke-interface {v3, p0}, Lbzm;->i(Lbzk;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    iput-object v0, p0, Lbzr;->o:Lbsn;

    iput v4, p0, Lbzr;->x:I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    check-cast p1, Lbsh;

    :goto_0
    invoke-virtual {p1}, Lbsh;->f()V

    return-void

    :cond_3
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lbzr;->r()V

    iput v4, p0, Lbzr;->x:I

    iput-object p1, p0, Lbzr;->o:Lbsn;

    iget-object p1, p0, Lbzr;->e:Lboq;

    iget p1, p1, Lboq;->e:I

    const/4 v3, 0x3

    if-gt p1, v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lbze;->G(I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lbzr;->f:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lbzr;->t:I

    iget v5, p0, Lbzr;->u:I

    iget-wide v6, p0, Lbzr;->q:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sget-wide v6, Lcar;->a:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with size ["

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] in "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p1, p0, Lbzr;->c:Lbzm;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lbzm;->e(Lbzk;)V

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lbzr;->v:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 p1, 0x0

    :try_start_5
    iget-object p2, p0, Lbzr;->m:Ljava/util/List;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbzo;

    invoke-interface {v4, v2}, Lbzo;->m(Ljava/lang/Object;)V

    instance-of v5, v4, Lbzi;

    if-eqz v5, :cond_6

    check-cast v4, Lbzi;

    invoke-virtual {v4}, Lbzi;->a()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :cond_8
    iget-object p2, p0, Lbzr;->b:Lbzo;

    if-eqz p2, :cond_9

    invoke-interface {p2, v2}, Lbzo;->m(Ljava/lang/Object;)V

    :cond_9
    if-nez v3, :cond_a

    iget-object p2, p0, Lbzr;->l:Lbzz;

    invoke-interface {p2, v2}, Lbzz;->b(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :try_start_6
    iput-boolean p1, p0, Lbzr;->v:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p2

    iput-boolean p1, p0, Lbzr;->v:Z

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_b
    :goto_3
    :try_start_7
    iput-object v0, p0, Lbzr;->o:Lbsn;

    new-instance p2, Lbsj;

    iget-object v0, p0, Lbzr;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_4

    :cond_c
    const-string v3, ""

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_d

    const-string v2, ""

    goto :goto_5

    :cond_d
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected to receive an object of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but instead got "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "} inside Resource{"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lbsj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lbzr;->d(Lbsj;)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    check-cast p1, Lbsh;

    goto/16 :goto_0

    :catchall_1
    move-exception p2

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    :goto_6
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p2

    move-object v0, p1

    goto :goto_7

    :catchall_4
    move-exception p2

    goto :goto_6

    :catchall_5
    move-exception p1

    move-object p2, p1

    :goto_7
    if-eqz v0, :cond_e

    check-cast v0, Lbsh;

    invoke-virtual {v0}, Lbsh;->f()V

    :cond_e
    goto :goto_9

    :goto_8
    throw p2

    :goto_9
    goto :goto_8
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lbzr;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbzr;->c()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g(II)V
    .locals 29

    move-object/from16 v9, p0

    iget-object v0, v9, Lbzr;->y:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-object v10, v9, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget v0, v9, Lbzr;->x:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x2

    iput v0, v9, Lbzr;->x:I

    iget-object v1, v9, Lbzr;->h:Lbzg;

    iget v1, v1, Lbzg;->a:F

    move/from16 v2, p1

    invoke-static {v2, v1}, Lbzr;->h(IF)I

    move-result v2

    iput v2, v9, Lbzr;->t:I

    move/from16 v2, p2

    invoke-static {v2, v1}, Lbzr;->h(IF)I

    move-result v1

    iput v1, v9, Lbzr;->u:I

    iget-object v8, v9, Lbzr;->z:Llij;

    iget-object v1, v9, Lbzr;->e:Lboq;

    iget-object v2, v9, Lbzr;->f:Ljava/lang/Object;

    iget-object v3, v9, Lbzr;->h:Lbzg;

    iget-object v4, v3, Lbzg;->j:Lbqb;

    iget v5, v9, Lbzr;->t:I

    iget v6, v9, Lbzr;->u:I

    iget-object v7, v3, Lbzg;->o:Ljava/lang/Class;

    iget-object v15, v9, Lbzr;->g:Ljava/lang/Class;

    iget-object v14, v9, Lbzr;->k:Lbos;

    iget-object v13, v3, Lbzg;->b:Lbry;

    iget-object v12, v3, Lbzg;->n:Ljava/util/Map;

    iget-boolean v11, v3, Lbzg;->k:Z

    iget-boolean v0, v3, Lbzg;->s:Z

    move/from16 p1, v0

    iget-object v0, v3, Lbzg;->m:Lbqf;

    move-object/from16 p2, v1

    iget-boolean v1, v3, Lbzg;->g:Z

    move/from16 v20, v1

    iget-boolean v1, v3, Lbzg;->t:Z

    iget-boolean v3, v3, Lbzg;->r:Z

    move/from16 v21, v1

    iget-object v1, v9, Lbzr;->n:Ljava/util/concurrent/Executor;

    move-object/from16 v22, v1

    new-instance v1, Lbsg;

    move/from16 v23, v11

    move-object v11, v1

    move-object/from16 v24, v12

    move-object v12, v2

    move-object/from16 v25, v13

    move-object v13, v4

    move-object/from16 v26, v14

    move v14, v5

    move-object/from16 v27, v15

    move v15, v6

    move-object/from16 v16, v24

    move-object/from16 v17, v7

    move-object/from16 v18, v27

    move-object/from16 v19, v0

    invoke-direct/range {v11 .. v19}, Lbsg;-><init>(Ljava/lang/Object;Lbqb;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lbqf;)V

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v15, 0x0

    if-nez v20, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v11, v8, Llij;->e:Ljava/lang/Object;

    check-cast v11, Lbrk;

    invoke-virtual {v11, v1}, Lbrk;->a(Lbqb;)Lbsh;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lbsh;->d()V

    :cond_1
    if-nez v11, :cond_5

    iget-object v11, v8, Llij;->c:Ljava/lang/Object;

    check-cast v11, Lbtp;

    invoke-virtual {v11, v1}, Lbtp;->b(Lbqb;)Lbsn;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    instance-of v11, v12, Lbsh;

    if-eqz v11, :cond_3

    check-cast v12, Lbsh;

    move-object v15, v12

    goto :goto_0

    :cond_3
    new-instance v28, Lbsh;

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v11, v28

    move-object v14, v1

    move-object v15, v8

    invoke-direct/range {v11 .. v19}, Lbsh;-><init>(Lbsn;ZLbqb;Llij;[B[B[B[B)V

    move-object/from16 v15, v28

    :goto_0
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lbsh;->d()V

    iget-object v11, v8, Llij;->e:Ljava/lang/Object;

    check-cast v11, Lbrk;

    invoke-virtual {v11, v1, v15}, Lbrk;->b(Lbqb;Lbsh;)V

    :cond_4
    if-nez v15, :cond_6

    const/4 v15, 0x0

    goto :goto_1

    :cond_5
    move-object v15, v11

    :cond_6
    :goto_1
    if-nez v15, :cond_8

    iget-object v11, v8, Llij;->f:Ljava/lang/Object;

    check-cast v11, Ldne;

    invoke-virtual {v11, v3}, Ldne;->G(Z)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbsf;

    if-eqz v11, :cond_7

    move-object/from16 v12, v22

    invoke-virtual {v11, v9, v12}, Lbsf;->b(Lbzq;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lbsb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, v8

    move-object/from16 v3, p0

    move-object v4, v11

    move-object v11, v8

    move-object v8, v12

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lbsb;-><init>(Llij;Lbzq;Lbsf;[B[B[B[B)V

    move-object v15, v0

    goto/16 :goto_2

    :cond_7
    move-object v11, v8

    move-object/from16 v12, v22

    iget-object v8, v11, Llij;->a:Ljava/lang/Object;

    check-cast v8, Ldfa;

    iget-object v8, v8, Ldfa;->e:Ljava/lang/Object;

    invoke-interface {v8}, Laed;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbsf;

    invoke-static {v8}, Lbze;->v(Ljava/lang/Object;)V

    move/from16 v13, v20

    move/from16 v14, v21

    invoke-virtual {v8, v1, v13, v14, v3}, Lbsf;->i(Lbqb;ZZZ)V

    iget-object v13, v11, Llij;->g:Ljava/lang/Object;

    move-object v14, v13

    check-cast v14, Liks;

    iget-object v14, v14, Liks;->b:Ljava/lang/Object;

    invoke-interface {v14}, Laed;->a()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lbrt;

    invoke-static {v14}, Lbze;->v(Ljava/lang/Object;)V

    move-object v15, v13

    check-cast v15, Liks;

    iget v15, v15, Liks;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v9, v15, 0x1

    :try_start_3
    check-cast v13, Liks;

    iput v9, v13, Liks;->a:I

    iget-object v9, v14, Lbrt;->a:Lbrq;

    iget-object v13, v14, Lbrt;->q:Lbsa;

    move-object/from16 v22, v12

    move-object/from16 v12, p2

    iput-object v12, v9, Lbrq;->c:Lboq;

    iput-object v2, v9, Lbrq;->d:Ljava/lang/Object;

    iput-object v4, v9, Lbrq;->m:Lbqb;

    iput v5, v9, Lbrq;->e:I

    iput v6, v9, Lbrq;->f:I

    move-object/from16 v2, v25

    iput-object v2, v9, Lbrq;->o:Lbry;

    iput-object v7, v9, Lbrq;->g:Ljava/lang/Class;

    iput-object v13, v9, Lbrq;->r:Lbsa;

    move-object/from16 v7, v27

    iput-object v7, v9, Lbrq;->j:Ljava/lang/Class;

    move-object/from16 v7, v26

    iput-object v7, v9, Lbrq;->n:Lbos;

    iput-object v0, v9, Lbrq;->h:Lbqf;

    move-object/from16 v13, v24

    iput-object v13, v9, Lbrq;->i:Ljava/util/Map;

    move/from16 v13, v23

    iput-boolean v13, v9, Lbrq;->p:Z

    move/from16 v13, p1

    iput-boolean v13, v9, Lbrq;->q:Z

    iput-object v12, v14, Lbrt;->c:Lboq;

    iput-object v4, v14, Lbrt;->d:Lbqb;

    iput-object v7, v14, Lbrt;->e:Lbos;

    iput v5, v14, Lbrt;->f:I

    iput v6, v14, Lbrt;->g:I

    iput-object v2, v14, Lbrt;->h:Lbry;

    iput-boolean v3, v14, Lbrt;->l:Z

    iput-object v0, v14, Lbrt;->i:Lbqf;

    iput-object v8, v14, Lbrt;->j:Lbrr;

    iput v15, v14, Lbrt;->k:I

    const/4 v0, 0x1

    iput v0, v14, Lbrt;->p:I

    iget-object v0, v11, Llij;->f:Ljava/lang/Object;

    iget-boolean v2, v8, Lbsf;->d:Z

    check-cast v0, Ldne;

    invoke-virtual {v0, v2}, Ldne;->G(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v9, p0

    move-object/from16 v0, v22

    :try_start_4
    invoke-virtual {v8, v9, v0}, Lbsf;->b(Lbzq;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v8, v14}, Lbsf;->h(Lbrt;)V

    new-instance v0, Lbsb;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, v11

    move-object/from16 v3, p0

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lbsb;-><init>(Llij;Lbzq;Lbsf;[B[B[B[B)V

    move-object v15, v0

    :goto_2
    monitor-exit v11

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_4

    :cond_8
    move-object v11, v8

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x5

    :try_start_5
    invoke-interface {v9, v15, v0}, Lbzq;->e(Lbsn;I)V

    const/4 v15, 0x0

    :goto_3
    iput-object v15, v9, Lbzr;->p:Lbsb;

    iget v0, v9, Lbzr;->x:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    iput-object v0, v9, Lbzr;->p:Lbsb;

    :cond_9
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v11, v8

    :goto_4
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_a
    monitor-exit v10

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbzr;->x:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbzr;->x:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbzr;->x:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(Lbzk;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lbzr;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, v1, Lbzr;->i:I

    iget v5, v1, Lbzr;->j:I

    iget-object v6, v1, Lbzr;->f:Ljava/lang/Object;

    iget-object v7, v1, Lbzr;->g:Ljava/lang/Class;

    iget-object v8, v1, Lbzr;->h:Lbzg;

    iget-object v9, v1, Lbzr;->k:Lbos;

    iget-object v10, v1, Lbzr;->m:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast v0, Lbzr;

    iget-object v11, v0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v2, v0, Lbzr;->i:I

    iget v12, v0, Lbzr;->j:I

    iget-object v13, v0, Lbzr;->f:Ljava/lang/Object;

    iget-object v14, v0, Lbzr;->g:Ljava/lang/Class;

    iget-object v15, v0, Lbzr;->h:Lbzg;

    iget-object v3, v0, Lbzr;->k:Lbos;

    iget-object v0, v0, Lbzr;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_6

    if-ne v5, v12, :cond_6

    sget-object v2, Lcaw;->a:[C

    if-nez v6, :cond_3

    if-nez v13, :cond_6

    goto :goto_3

    :cond_3
    instance-of v2, v6, Lbuw;

    if-eqz v2, :cond_4

    check-cast v6, Lbuw;

    invoke-interface {v6}, Lbuw;->a()Z

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v8, v15}, Lbzg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v9, v3, :cond_6

    if-ne v10, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final n()Z
    .locals 4

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbzr;->x:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbzr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzr;->f:Ljava/lang/Object;

    iget-object v2, p0, Lbzr;->g:Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[model="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transcodeClass="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
