.class public final Lifx;
.super Ljava/lang/Object;

# interfaces
.implements Lify;
.implements Lifz;
.implements Liga;


# instance fields
.field private A:I

.field public final a:Ljava/util/List;

.field public volatile b:I

.field public volatile c:Z

.field public volatile d:I

.field public volatile e:I

.field public f:Z

.field public volatile g:Z

.field public h:Z

.field public i:Lell;

.field public j:Lj$/util/Optional;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public m:I

.field private final n:Lifw;

.field private final o:Ljava/util/List;

.field private final p:Ljava/util/List;

.field private final q:Ljava/util/List;

.field private volatile r:Landroid/view/View;

.field private volatile s:I

.field private volatile t:I

.field private volatile u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lifw;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lifx;->t:I

    iput v0, p0, Lifx;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lifx;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lifx;->h:Z

    iput-boolean v0, p0, Lifx;->x:Z

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lifx;->j:Lj$/util/Optional;

    iput-boolean v0, p0, Lifx;->k:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lifx;->l:Ljava/lang/Object;

    iput-object p1, p0, Lifx;->n:Lifw;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lifx;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lifx;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lifx;->p:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lifx;->q:Ljava/util/List;

    iput v0, p0, Lifx;->e:I

    iput v0, p0, Lifx;->d:I

    iput-boolean v1, p0, Lifx;->g:Z

    iput-boolean v0, p0, Lifx;->c:Z

    iput v0, p0, Lifx;->A:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    new-instance v0, Lifv;

    invoke-direct {v0, p1}, Lifv;-><init>(Landroid/text/Spannable;)V

    invoke-direct {p0, v0}, Lifx;-><init>(Lifw;)V

    return-void
.end method


# virtual methods
.method public final a()Lkad;
    .locals 14

    iget-object v0, p0, Lifx;->i:Lell;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lifx;->n:Lifw;

    iget-object v1, p0, Lifx;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lifw;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lifx;->r:Landroid/view/View;

    new-instance v1, Ligd;

    invoke-direct {v1, v0}, Ligd;-><init>(Landroid/view/View;)V

    new-instance v0, Lifu;

    iget v5, p0, Lifx;->s:I

    iget-object v6, p0, Lifx;->r:Landroid/view/View;

    iget v7, p0, Lifx;->b:I

    iget v8, p0, Lifx;->y:I

    iget v9, p0, Lifx;->z:I

    iget v10, p0, Lifx;->e:I

    iget v11, p0, Lifx;->m:I

    iget-boolean v12, p0, Lifx;->v:Z

    iget-boolean v13, p0, Lifx;->f:Z

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v13}, Lifu;-><init>(Ligb;Landroid/view/View;ILandroid/view/View;IIIIIZZ)V

    iget v2, p0, Lifx;->t:I

    int-to-long v2, v2

    iget-object v4, v0, Lifu;->a:Lige;

    iput-wide v2, v4, Lige;->s:J

    iget v2, p0, Lifx;->u:I

    int-to-long v2, v2

    iget-object v4, v0, Lifu;->a:Lige;

    iput-wide v2, v4, Lige;->t:J

    iget v2, p0, Lifx;->d:I

    int-to-long v2, v2

    iget-object v4, v0, Lifu;->a:Lige;

    iput-wide v2, v4, Lige;->r:J

    iget-boolean v2, p0, Lifx;->g:Z

    iget-object v3, v0, Lifu;->a:Lige;

    iput-boolean v2, v3, Lige;->g:Z

    new-instance v2, Lhqn;

    const/16 v4, 0xc

    invoke-direct {v2, p0, v0, v4}, Lhqn;-><init>(Lifx;Lifu;I)V

    iput-object v2, v0, Lifu;->c:Ljava/lang/Runnable;

    iput-object v2, v3, Lige;->h:Ljava/lang/Runnable;

    iget v2, p0, Lifx;->A:I

    iget-object v4, v3, Lige;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v3, Lige;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lifx;->j:Lj$/util/Optional;

    new-instance v3, Licl;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Licl;-><init>(Lifu;I)V

    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lifx;->a:Ljava/util/List;

    iput-object v2, v0, Lifu;->b:Ljava/util/List;

    iget-object v2, p0, Lifx;->o:Ljava/util/List;

    iget-object v3, v0, Lifu;->a:Lige;

    iput-object v2, v3, Lige;->u:Ljava/util/List;

    iget-object v2, v1, Ligd;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Ligd;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-boolean v4, v1, Ligd;->f:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Ligd;->f:Z

    new-instance v5, Ligc;

    invoke-direct {v5, v1, v3, v4}, Ligc;-><init>(Ligd;Landroid/view/ViewTreeObserver;I)V

    iput-object v5, v1, Ligd;->g:Lkad;

    new-instance v4, Ligc;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Ligc;-><init>(Ligd;Landroid/view/ViewTreeObserver;I)V

    iput-object v4, v1, Ligd;->h:Lkad;

    monitor-exit v2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    new-instance v2, Lhqn;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v0, v3}, Lhqn;-><init>(Lifx;Lifu;I)V

    iget-object v3, v1, Ligd;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lifx;->p:Ljava/util/List;

    iget-object v3, v0, Lifu;->a:Lige;

    iget-object v4, v3, Lige;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v3, v3, Lige;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v2, p0, Lifx;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lifx;->x:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both allowDelayUntilVisible and allowDelayUntilVileWithinScrollView cannot be true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    iget-boolean v3, p0, Lifx;->w:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lifx;->b(Lifu;)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    new-instance v2, Lhqn;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v0, v3}, Lhqn;-><init>(Lifx;Lifu;I)V

    iget-object v3, v1, Ligd;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-boolean v2, p0, Lifx;->x:Z

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ligb;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lifx;->b(Lifu;)V

    goto :goto_3

    :cond_6
    new-instance v2, Lhqn;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v0, v3}, Lhqn;-><init>(Lifx;Lifu;I)V

    iget-object v3, v1, Ligd;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v2, v1, Ligd;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v0}, Lifx;->b(Lifu;)V

    :cond_8
    :goto_3
    new-instance v2, Lfit;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v1, v3}, Lfit;-><init>(Lifx;Lifu;Ligb;I)V

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lifu;)V
    .locals 3

    iget-object v0, p0, Lifx;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lifx;->k:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lifx;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lifx;->i:Lell;

    invoke-interface {v1, p1}, Lell;->d(Lelk;)Lkad;

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lifx;->r:Landroid/view/View;

    const/4 p1, 0x1

    iput p1, p0, Lifx;->s:I

    iput p2, p0, Lifx;->z:I

    return-void
.end method

.method public final d(Ljava/util/function/Supplier;)V
    .locals 1

    iget-object v0, p0, Lifx;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lifx;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lifx;->o:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    iget-object v0, p0, Lifx;->a:Ljava/util/List;

    new-instance v1, Lift;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Lift;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lifx;->r:Landroid/view/View;

    const/4 p1, 0x4

    iput p1, p0, Lifx;->s:I

    iput p2, p0, Lifx;->y:I

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lifx;->b:I

    return-void
.end method

.method public final j(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lifx;->r:Landroid/view/View;

    const/4 p1, 0x3

    iput p1, p0, Lifx;->s:I

    iput p2, p0, Lifx;->y:I

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lifx;->r:Landroid/view/View;

    const v1, 0x7f0401ba

    invoke-static {v0, v1}, Lkwp;->l(Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lifx;->A:I

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lifx;->v:Z

    return-void
.end method

.method public final m()V
    .locals 1

    const/16 v0, 0x190

    iput v0, p0, Lifx;->t:I

    return-void
.end method

.method public final n()V
    .locals 1

    const/16 v0, 0x12c

    iput v0, p0, Lifx;->u:I

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lifx;->w:Z

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lifx;->x:Z

    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lifx;->c(Landroid/view/View;I)V

    return-void
.end method

.method public final r(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lifx;->r:Landroid/view/View;

    const/4 p1, 0x2

    iput p1, p0, Lifx;->s:I

    const/4 p1, 0x0

    iput p1, p0, Lifx;->z:I

    return-void
.end method
