.class public final Lhji;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lrss;

.field private final b:J

.field private final c:J

.field private final d:Lrss;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:I


# direct methods
.method public constructor <init>(IJJLrss;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iput-wide p2, p0, Lhji;->b:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-wide p4, p0, Lhji;->c:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object v0, p0, Lhji;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iput p1, p0, Lhji;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iput-object v0, p0, Lhji;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iput-object p6, p0, Lhji;->d:Lrss;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lhji;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a(Lsmm;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhji;->f:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized b(J)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lhji;->c:J

    nop

    nop

    nop

    sub-long/2addr p1, v0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhji;->e:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized c(J)Lsmn;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lsmn;->a:Lsmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_1
    iget v1, p0, Lhji;->g:I

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    check-cast v3, Lsmn;

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, v3, Lsmn;->c:I

    nop

    nop

    nop

    iget v1, v3, Lsmn;->b:I

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, v3, Lsmn;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lhji;->c:J

    nop

    nop

    iget-wide v5, p0, Lhji;->b:J

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_2

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    sub-long/2addr v3, v5

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lsmn;

    nop

    nop

    nop

    iget v5, v2, Lsmn;->b:I

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v5, v6

    nop

    nop

    nop

    iput v5, v2, Lsmn;->b:I

    nop

    iput-wide v3, v2, Lsmn;->d:J

    nop

    nop

    iget-object v2, p0, Lhji;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_3
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Lsmn;

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lsmn;->f:Ltkp;

    nop

    nop

    invoke-interface {v3}, Ltkp;->c()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    invoke-static {v3}, Ltkg;->u(Ltkp;)Ltkp;

    move-result-object v3

    nop

    iput-object v3, v1, Lsmn;->f:Ltkp;

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v1, v1, Lsmn;->f:Ltkp;

    nop

    nop

    invoke-static {v2, v1}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-wide v1, p0, Lhji;->c:J

    nop

    nop

    nop

    nop

    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_5
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lsmn;

    nop

    nop

    nop

    nop

    nop

    iget v3, v2, Lsmn;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x10

    nop

    nop

    nop

    nop

    iput v3, v2, Lsmn;->b:I

    nop

    nop

    nop

    iput-wide p1, v2, Lsmn;->h:J

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_6

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_6
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast p1, Lsmn;

    nop

    nop

    nop

    iput v6, p1, Lsmn;->i:I

    nop

    nop

    nop

    nop

    nop

    iget p2, p1, Lsmn;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 p2, p2, 0x20

    nop

    nop

    nop

    iput p2, p1, Lsmn;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lhji;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_b

    nop

    nop

    nop

    sget-object p1, Lskh;->a:Lskh;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    iget-object p2, p0, Lhji;->d:Lrss;

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Ljyz;

    nop

    nop

    nop

    nop

    nop

    iget p2, p2, Ljyz;->b:F

    nop

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_7
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v1, Lskh;

    nop

    nop

    nop

    iget v2, v1, Lskh;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v2, v6

    nop

    nop

    nop

    nop

    iput v2, v1, Lskh;->b:I

    nop

    nop

    iput p2, v1, Lskh;->d:F

    nop

    nop

    iget-object p2, p0, Lhji;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    check-cast p2, Ljyz;

    nop

    nop

    iget p2, p2, Ljyz;->c:F

    nop

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_8
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    check-cast v1, Lskh;

    nop

    iget v2, v1, Lskh;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v2, v2, 0x1

    nop

    iput v2, v1, Lskh;->b:I

    nop

    nop

    iput p2, v1, Lskh;->c:F

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lhji;->d:Lrss;

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Ljyz;

    nop

    nop

    nop

    nop

    iget p2, p2, Ljyz;->a:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_9
    int-to-float p2, p2

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lskh;

    nop

    nop

    iget v2, v1, Lskh;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    iput v2, v1, Lskh;->b:I

    nop

    nop

    iput p2, v1, Lskh;->e:F

    nop

    nop

    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lskh;

    nop

    nop

    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    if-nez p2, :cond_a

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_a
    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lsmn;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lsmn;->g:Lskh;

    nop

    iget p1, p2, Lsmn;->b:I

    nop

    nop

    nop

    or-int/lit8 p1, p1, 0x8

    nop

    nop

    iput p1, p2, Lsmn;->b:I

    nop

    nop

    nop

    :cond_b
    iget-object p1, p0, Lhji;->a:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lhji;->a:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    nop

    nop

    iget-wide v1, p0, Lhji;->c:J

    nop

    nop

    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_c

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lsmn;

    nop

    nop

    nop

    iget v2, v1, Lsmn;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v2, v2, 0x4

    nop

    nop

    iput v2, v1, Lsmn;->b:I

    nop

    iput-wide p1, v1, Lsmn;->e:J

    nop

    nop

    :cond_d
    iget-object p1, p0, Lhji;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_10

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lhji;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    if-nez p2, :cond_e

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_e
    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast p2, Lsmn;

    nop

    nop

    nop

    nop

    iget-object v1, p2, Lsmn;->j:Ltkm;

    nop

    invoke-interface {v1}, Ltkm;->c()Z

    move-result v2

    nop

    if-nez v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ltkg;->t(Ltkm;)Ltkm;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p2, Lsmn;->j:Ltkm;

    nop

    nop

    nop

    :cond_f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_10

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lsmm;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p2, Lsmn;->j:Ltkm;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Lsmm;->d:I

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ltkm;->g(I)V

    goto :goto_6

    nop

    :cond_10
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lsmn;

    nop

    nop

    nop

    nop

    iget-object p2, p1, Lsmn;->f:Ltkp;

    nop

    invoke-interface {p2}, Ltkp;->size()I

    iget-object p2, p0, Lhji;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
