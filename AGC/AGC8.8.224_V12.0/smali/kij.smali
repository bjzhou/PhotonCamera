.class public final Lkij;
.super Lkji;


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

    return-void
.end method


# virtual methods
.method protected final a(Lkoo;Lkiq;Ljava/util/List;Landroid/os/Handler;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p3

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Lmvv;

    invoke-virtual {p3}, Lmvv;->s()Lnad;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkiu;

    invoke-virtual {v1}, Lkiu;->a()Lkow;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lkoo;->e(Ljava/util/List;Lkom;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lkij;->b:Lkaq;

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
