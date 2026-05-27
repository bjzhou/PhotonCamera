.class public final Lkth;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkte;

.field private final b:Lksx;

.field private final c:Lkrw;

.field private final d:I

.field private final e:I

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Lnaa;


# direct methods
.method public constructor <init>(Lnaa;Lkte;Lksx;Lkrw;IILjava/util/ArrayDeque;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkth;->g:Lnaa;

    iput-object p2, p0, Lkth;->a:Lkte;

    iput-object p3, p0, Lkth;->b:Lksx;

    iput-object p4, p0, Lkth;->c:Lkrw;

    iput p5, p0, Lkth;->d:I

    iput p6, p0, Lkth;->e:I

    iput-object p7, p0, Lkth;->f:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Lnwp;)V
    .locals 4

    iget-object v0, p1, Lnwp;->b:Lnws;

    check-cast v0, Loah;

    iget v0, v0, Loah;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    iget-object v0, p1, Lnwp;->b:Lnws;

    check-cast v0, Loah;

    const/4 v1, 0x2

    invoke-static {v1}, Lkwp;->x(I)I

    move-result v1

    iput v1, v0, Loah;->h:I

    iget v1, v0, Loah;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Loah;->a:I

    :goto_0
    iget-object v0, p0, Lkth;->c:Lkrw;

    iget-object v0, v0, Lkrw;->b:Lmqp;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lktf;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object v2, p1, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Loah;->a:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Loah;->a:I

    iput-object v1, v2, Loah;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loah;

    iget-object v1, p0, Lkth;->a:Lkte;

    invoke-virtual {v1, p1}, Lkte;->b(Loah;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkth;->b:Lksx;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lksx;->a(Loah;Lmqp;)V

    :cond_3
    return-void
.end method

.method public final b(I)Lnwp;
    .locals 5

    sget-object v0, Loah;->n:Loah;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    check-cast v0, Lnwp;

    iget-object v1, p0, Lkth;->c:Lkrw;

    iget-object v1, v1, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Loah;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Loah;->a:I

    iput-object v1, v2, Loah;->b:Ljava/lang/String;

    iget-object v1, p0, Lkth;->g:Lnaa;

    iget-object v2, p0, Lkth;->c:Lkrw;

    iget-object v2, v2, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnaa;->f(Landroid/content/Context;)I

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    iget v3, v2, Loah;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Loah;->a:I

    iput v1, v2, Loah;->c:I

    iget v1, p0, Lkth;->d:I

    int-to-long v1, v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v3, v0, Lnwp;->b:Lnws;

    check-cast v3, Loah;

    iget v4, v3, Loah;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Loah;->a:I

    iput-wide v1, v3, Loah;->d:J

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v1, v0, Lnwp;->b:Lnws;

    check-cast v1, Loah;

    iget v2, v1, Loah;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Loah;->a:I

    const-wide/32 v2, -0x79209ddf

    iput-wide v2, v1, Loah;->e:J

    iget v1, p0, Lkth;->e:I

    int-to-long v1, v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v3, v0, Lnwp;->b:Lnws;

    check-cast v3, Loah;

    iget v4, v3, Loah;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Loah;->a:I

    iput-wide v1, v3, Loah;->f:J

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v1

    iget-object v2, p0, Lkth;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lksd;

    iget v3, v3, Lksd;->d:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object v2, v0, Lnwp;->b:Lnws;

    check-cast v2, Loah;

    invoke-virtual {v2}, Loah;->f()V

    iget-object v2, v2, Loah;->k:Lnwz;

    invoke-static {v1, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object v1, v0, Lnwp;->b:Lnws;

    check-cast v1, Loah;

    invoke-static {p1}, Lkwp;->x(I)I

    move-result p1

    iput p1, v1, Loah;->h:I

    iget p1, v1, Loah;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v1, Loah;->a:I

    return-object v0
.end method
