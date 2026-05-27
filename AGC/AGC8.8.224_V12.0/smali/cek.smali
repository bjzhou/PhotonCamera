.class public final Lcek;
.super Ljava/lang/Object;

# interfaces
.implements Lceh;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljuf;

.field private c:Ljvs;

.field private d:Ljvs;

.field private e:Ljvs;

.field private f:Ljvs;

.field private g:Z

.field private final h:Lmqi;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljuf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcej;-><init>(I)V

    iput-object v0, p0, Lcek;->h:Lmqi;

    iput-object p1, p0, Lcek;->a:Ljava/util/Set;

    iput-object p2, p0, Lcek;->b:Ljuf;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcek;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcek;->g:Z

    iget-object v0, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lceu;

    invoke-interface {v1}, Lceu;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcek;->g:Z

    return-void
.end method

.method public final d(Lkll;)V
    .locals 2

    iget-object v0, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lceu;

    invoke-interface {v1, p1}, Lceu;->d(Lkll;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ldbw;)V
    .locals 3

    iget-object v0, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lceu;

    iget-object v2, p1, Ldbw;->c:Lfuz;

    invoke-interface {v1, v2}, Lceu;->e(Lkli;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lgqr;)V
    .locals 4

    iget-boolean v0, p0, Lcek;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcek;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lgqr;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    return-void

    :cond_0
    new-instance v0, Lkma;

    iget-object v1, p1, Lgqr;->a:Lkpb;

    iget-object v2, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkma;-><init>(Lkpb;I)V

    iget-object v1, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lceu;

    invoke-interface {v2}, Lceu;->b()Lceq;

    move-result-object v3

    invoke-interface {v3}, Lceq;->a()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcer;

    if-eqz v3, :cond_1

    new-instance v3, Lkmb;

    invoke-direct {v3, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-static {v3, p1}, Lgqr;->c(Lkpb;Lgqr;)Lgqr;

    check-cast v2, Lcer;

    invoke-interface {v2}, Lcer;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkma;->l()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g(Lgqr;)V
    .locals 4

    iget-boolean v0, p0, Lcek;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcek;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lkma;

    iget-object v1, p1, Lgqr;->a:Lkpb;

    iget-object v2, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkma;-><init>(Lkpb;I)V

    iget-object v1, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lceu;

    invoke-interface {v2}, Lceu;->b()Lceq;

    move-result-object v3

    invoke-interface {v3}, Lceq;->a()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcet;

    if-eqz v3, :cond_1

    new-instance v3, Lkmb;

    invoke-direct {v3, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-static {v3, p1}, Lgqr;->c(Lkpb;Lgqr;)Lgqr;

    move-result-object v3

    check-cast v2, Lcet;

    invoke-interface {v2, v3}, Lcet;->a(Lgqr;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkma;->l()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p1, p1, Lgqr;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    return-void
.end method

.method public final h(Lkou;)V
    .locals 3

    iget-boolean v0, p0, Lcek;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcek;->e:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lceu;

    invoke-interface {v1}, Lceu;->b()Lceq;

    move-result-object v2

    invoke-interface {v2}, Lceq;->a()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lces;

    if-eqz v2, :cond_1

    check-cast v1, Lces;

    invoke-interface {v1, p1}, Lces;->a(Lkou;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcek;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j(Lcey;)V
    .locals 2

    iget-object v0, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lceu;

    invoke-interface {v1, p1}, Lceu;->f(Lcey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcek;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lceu;

    invoke-interface {v6}, Lceu;->b()Lceq;

    move-result-object v7

    instance-of v8, v6, Lcet;

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lceq;->a()Ljvs;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lceq;->a()Ljvs;

    move-result-object v8

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lceq;->b()Ljwb;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v8, v6, Lces;

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lceq;->a()Ljvs;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lceq;->a()Ljvs;

    move-result-object v8

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lceq;->b()Ljwb;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v6, v6, Lcer;

    if-eqz v6, :cond_0

    invoke-interface {v7}, Lceq;->a()Ljvs;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    iget-object v5, p0, Lcek;->h:Lmqi;

    invoke-static {v0, v5}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Lcek;->c:Ljvs;

    invoke-static {v1}, Ljvw;->h(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Lcek;->d:Ljvs;

    invoke-static {v2}, Ljvw;->h(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Lcek;->e:Ljvs;

    invoke-static {v3}, Ljvw;->h(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Lcek;->f:Ljvs;

    iget-object v0, p0, Lcek;->c:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcei;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcei;-><init>(Ljvs;I)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    iget-object v0, p0, Lcek;->d:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcei;

    invoke-direct {v1, v0, v4}, Lcei;-><init>(Ljvs;I)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    iget-object v0, p0, Lcek;->e:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcei;

    invoke-direct {v1, v0, v4}, Lcei;-><init>(Ljvs;I)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    iget-object v0, p0, Lcek;->f:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcei;

    invoke-direct {v1, v0, v4}, Lcei;-><init>(Ljvs;I)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    return-void
.end method
