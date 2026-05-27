.class public final Lkik;
.super Lkji;


# instance fields
.field private final e:Lkli;

.field private final f:Ljava/util/Set;

.field private final g:Lkfd;


# direct methods
.method public constructor <init>(Lkli;Lkeq;Lkkc;Lkjn;Lkaq;Lkbc;)V
    .locals 7

    invoke-interface {p1}, Lkli;->P()I

    move-result v1

    iget-object v2, p2, Lkeq;->b:Lkez;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lkji;-><init>(ILkez;Lkkc;Lkjn;Lkaq;Lkbc;)V

    iput-object p1, p0, Lkik;->e:Lkli;

    iget-object p1, p2, Lkeq;->h:Lmwn;

    iput-object p1, p0, Lkik;->f:Ljava/util/Set;

    iget-object p1, p2, Lkeq;->c:Lkfd;

    iput-object p1, p0, Lkik;->g:Lkfd;

    return-void
.end method

.method private static final c(Lkkr;Lkfa;)V
    .locals 1

    iget-object v0, p1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Lkfa;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a(Lkoo;Lkiq;Ljava/util/List;Landroid/os/Handler;)V
    .locals 8

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    move-object v0, p3

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Lmvv;

    invoke-virtual {p3}, Lmvv;->s()Lnad;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkiu;

    invoke-virtual {v0}, Lkiu;->a()Lkow;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljud;

    invoke-direct {v3, p4}, Ljud;-><init>(Landroid/os/Handler;)V

    iget-object p3, p0, Lkik;->g:Lkfd;

    iget p3, p3, Lkfd;->a:I

    invoke-interface {p1, p3}, Lkoo;->h(I)Lkkr;

    move-result-object p3

    iget-object p4, p0, Lkik;->e:Lkli;

    invoke-interface {p4}, Lkli;->A()Ljava/util/Set;

    move-result-object p4

    invoke-static {p4}, Lkfg;->v(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p4

    iget-object v0, p0, Lkik;->g:Lkfd;

    iget-object v0, v0, Lkfd;->b:Lmvv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkfa;

    invoke-virtual {v6}, Lkfa;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p3, v6}, Lkik;->c(Lkkr;Lkfa;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lkik;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfa;

    invoke-virtual {v1}, Lkfa;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p3, v1}, Lkik;->c(Lkkr;Lkfa;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lkkr;->a()Lkop;

    move-result-object v5

    iget-object p3, p0, Lkik;->a:Lkez;

    sget-object p4, Lkez;->b:Lkez;

    if-ne p3, p4, :cond_5

    const/4 p3, 0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz p2, :cond_6

    new-instance p3, Lkox;

    move-object v0, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lkox;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Lkom;Lkop;)V

    invoke-interface {p1, p3}, Lkoo;->c(Lkox;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "Null stateCallback"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lkik;->b:Lkaq;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "Unable to createCaptureSession for "

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lkiq;->b()V

    return-void
.end method
