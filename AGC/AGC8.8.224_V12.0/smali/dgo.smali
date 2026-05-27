.class public final Ldgo;
.super Ljava/lang/Object;


# instance fields
.field public a:Lmqp;

.field private final b:J

.field private final c:J

.field private final d:Lmqp;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:I


# direct methods
.method public constructor <init>(IJJLmqp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldgo;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldgo;->f:Ljava/util/List;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgo;->a:Lmqp;

    iput p1, p0, Ldgo;->g:I

    iput-wide p2, p0, Ldgo;->b:J

    iput-wide p4, p0, Ldgo;->c:J

    iput-object p6, p0, Ldgo;->d:Lmqp;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lnih;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldgo;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldgo;->e:Ljava/util/List;

    iget-wide v1, p0, Ldgo;->c:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(J)Lnii;
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnii;->j:Lnii;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v1, p0, Ldgo;->g:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnii;

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lnii;->b:I

    iget v1, v3, Lnii;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lnii;->a:I

    iget-wide v3, p0, Ldgo;->c:J

    iget-wide v5, p0, Ldgo;->b:J

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnii;

    iget v5, v2, Lnii;->a:I

    const/4 v6, 0x2

    or-int/2addr v5, v6

    iput v5, v2, Lnii;->a:I

    iput-wide v3, v2, Lnii;->c:J

    iget-object v2, p0, Ldgo;->e:Ljava/util/List;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnii;

    iget-object v3, v1, Lnii;->e:Lnwz;

    invoke-interface {v3}, Lnwz;->c()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lnws;->T(Lnwz;)Lnwz;

    move-result-object v3

    iput-object v3, v1, Lnii;->e:Lnwz;

    :cond_3
    iget-object v1, v1, Lnii;->e:Lnwz;

    invoke-static {v2, v1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-wide v1, p0, Ldgo;->c:J

    sub-long/2addr p1, v1

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnii;

    iget v3, v2, Lnii;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lnii;->a:I

    iput-wide p1, v2, Lnii;->g:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnii;

    iput v6, p1, Lnii;->h:I

    iget p2, p1, Lnii;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lnii;->a:I

    iget-object p1, p0, Ldgo;->d:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lngw;->e:Lngw;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object p2, p0, Ldgo;->d:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfjo;

    iget p2, p2, Lfjo;->b:F

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_6
    iget-object v1, p1, Lnwn;->b:Lnws;

    check-cast v1, Lngw;

    iget v2, v1, Lngw;->a:I

    or-int/2addr v2, v6

    iput v2, v1, Lngw;->a:I

    iput p2, v1, Lngw;->c:F

    iget-object p2, p0, Ldgo;->d:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfjo;

    iget p2, p2, Lfjo;->c:F

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object v1, p1, Lnwn;->b:Lnws;

    check-cast v1, Lngw;

    iget v2, v1, Lngw;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lngw;->a:I

    iput p2, v1, Lngw;->b:F

    iget-object p2, p0, Ldgo;->d:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfjo;

    iget p2, p2, Lfjo;->a:I

    int-to-float p2, p2

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_8
    iget-object v1, p1, Lnwn;->b:Lnws;

    check-cast v1, Lngw;

    iget v2, v1, Lngw;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lngw;->a:I

    iput p2, v1, Lngw;->d:F

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lngw;

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_9
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnii;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lnii;->f:Lngw;

    iget p1, p2, Lnii;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Lnii;->a:I

    :cond_a
    iget-object p1, p0, Ldgo;->a:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Ldgo;->a:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Ldgo;->c:J

    sub-long/2addr p1, v1

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnii;

    iget v2, v1, Lnii;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lnii;->a:I

    iput-wide p1, v1, Lnii;->d:J

    :cond_c
    iget-object p1, p0, Ldgo;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Ldgo;->f:Ljava/util/List;

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_d
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnii;

    iget-object v1, p2, Lnii;->i:Lnwy;

    invoke-interface {v1}, Lnwy;->c()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v1}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v1

    iput-object v1, p2, Lnii;->i:Lnwy;

    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnih;

    iget-object v2, p2, Lnii;->i:Lnwy;

    iget v1, v1, Lnih;->d:I

    invoke-interface {v2, v1}, Lnwy;->g(I)V

    goto :goto_0

    :cond_f
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnii;

    iget-object p2, p1, Lnii;->e:Lnwz;

    invoke-interface {p2}, Lnwz;->size()I

    iget-object p2, p0, Ldgo;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
