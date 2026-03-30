.class public final Lcom/bumptech/glide/manager/LifecycleLifecycle;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfrt;
.implements Leav;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lear;


# direct methods
.method public constructor <init>(Lear;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Lear;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

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

    :goto_5
    invoke-virtual {p1, p0}, Lear;->a(Leav;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfru;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Leaq;->a:Leaq;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_5
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lfru;->i()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Lfru;->g()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Leaq;->a(Leaq;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iget-object p0, p0, Lear;->b:Leaq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Lear;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Lfru;->h()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Leaq;->d:Leaq;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final b(Lfru;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public onDestroy(Leaw;)V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        a = .enum Leap;->ON_DESTROY:Leap;
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v1, 0x20

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lftw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1}, Lfru;->g()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0}, Lear;->c(Leav;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Leaw;->getLifecycle()Lear;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v1, Lfru;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public onStart(Leaw;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        a = .enum Leap;->ON_START:Leap;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lfru;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lfru;->h()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lftw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public onStop(Leaw;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        a = .enum Leap;->ON_STOP:Leap;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lftw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lfru;->i()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lfru;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop
.end method
