.class final Lbss;
.super Ljava/lang/Object;

# interfaces
.implements Lbrp;
.implements Lbro;


# instance fields
.field public final a:Lbrq;

.field public final b:Lbro;

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Lbrn;

.field private volatile e:I

.field private volatile f:Lbrm;

.field private volatile g:Lva;


# direct methods
.method public constructor <init>(Lbrq;Lbro;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbss;->a:Lbrq;

    iput-object p2, p0, Lbss;->b:Lbro;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbss;->g:Lva;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lbqo;->bg()V

    :cond_0
    return-void
.end method

.method public final b(Lbqb;Ljava/lang/Exception;Lbqo;I)V
    .locals 1

    iget-object p4, p0, Lbss;->b:Lbro;

    iget-object v0, p0, Lbss;->g:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lbqo;->g()I

    move-result v0

    invoke-interface {p4, p1, p2, p3, v0}, Lbro;->b(Lbqb;Ljava/lang/Exception;Lbqo;I)V

    return-void
.end method

.method public final c()Z
    .locals 10

    iget-object v0, p0, Lbss;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbss;->c:Ljava/lang/Object;

    iput-object v2, p0, Lbss;->c:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lbss;->a:Lbrq;

    iget-object v4, v4, Lbrq;->c:Lboq;

    invoke-virtual {v4}, Lboq;->a()Lboy;

    move-result-object v4

    invoke-virtual {v4, v0}, Lboy;->a(Ljava/lang/Object;)Lbqq;

    move-result-object v0

    invoke-interface {v0}, Lbqq;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lbss;->a:Lbrq;

    iget-object v5, v5, Lbrq;->c:Lboq;

    invoke-virtual {v5}, Lboq;->a()Lboy;

    move-result-object v5

    iget-object v5, v5, Lboy;->d:Lbkc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbkc;->k(Ljava/lang/Class;)Lbpt;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Lva;

    iget-object v7, p0, Lbss;->a:Lbrq;

    iget-object v7, v7, Lbrq;->h:Lbqf;

    invoke-direct {v6, v5, v4, v7}, Lva;-><init>(Lbpt;Ljava/lang/Object;Lbqf;)V

    new-instance v4, Lbrn;

    iget-object v5, p0, Lbss;->g:Lva;

    iget-object v5, v5, Lva;->b:Ljava/lang/Object;

    iget-object v7, p0, Lbss;->a:Lbrq;

    iget-object v8, v7, Lbrq;->m:Lbqb;

    invoke-direct {v4, v5, v8}, Lbrn;-><init>(Lbqb;Lbqb;)V

    invoke-virtual {v7}, Lbrq;->d()Lbtl;

    move-result-object v5

    invoke-interface {v5, v4, v6}, Lbtl;->b(Lbqb;Lva;)V

    invoke-interface {v5, v4}, Lbtl;->a(Lbqb;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    iput-object v4, p0, Lbss;->d:Lbrn;

    new-instance v0, Lbrm;

    iget-object v4, p0, Lbss;->g:Lva;

    iget-object v4, v4, Lva;->b:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lbss;->a:Lbrq;

    invoke-direct {v0, v4, v5, p0}, Lbrm;-><init>(Ljava/util/List;Lbrq;Lbro;)V

    iput-object v0, p0, Lbss;->f:Lbrm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lbss;->g:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lbqo;->d()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v4, p0, Lbss;->b:Lbro;

    iget-object v5, p0, Lbss;->g:Lva;

    iget-object v5, v5, Lva;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lbqq;->a()Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lbss;->g:Lva;

    iget-object v7, v0, Lva;->a:Ljava/lang/Object;

    iget-object v0, p0, Lbss;->g:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lbqo;->g()I

    move-result v8

    iget-object v0, p0, Lbss;->g:Lva;

    iget-object v9, v0, Lva;->b:Ljava/lang/Object;

    invoke-interface/range {v4 .. v9}, Lbro;->d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_4
    new-instance v0, Lbox;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v4}, Lbox;-><init>(Ljava/lang/Class;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    :try_start_5
    iget-object v4, p0, Lbss;->g:Lva;

    iget-object v4, v4, Lva;->a:Ljava/lang/Object;

    invoke-interface {v4}, Lbqo;->d()V

    :cond_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lbss;->f:Lbrm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbss;->f:Lbrm;

    invoke-virtual {v0}, Lbrm;->c()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    :goto_2
    iput-object v2, p0, Lbss;->f:Lbrm;

    iput-object v2, p0, Lbss;->g:Lva;

    :cond_6
    :goto_3
    if-nez v1, :cond_8

    iget v0, p0, Lbss;->e:I

    iget-object v2, p0, Lbss;->a:Lbrq;

    invoke-virtual {v2}, Lbrq;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lbss;->a:Lbrq;

    invoke-virtual {v0}, Lbrq;->f()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lbss;->e:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lbss;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    iput-object v0, p0, Lbss;->g:Lva;

    iget-object v0, p0, Lbss;->g:Lva;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbss;->a:Lbrq;

    iget-object v0, v0, Lbrq;->o:Lbry;

    iget-object v2, p0, Lbss;->g:Lva;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lbqo;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lbry;->c(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lbss;->a:Lbrq;

    iget-object v2, p0, Lbss;->g:Lva;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lbqo;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbrq;->h(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    iget-object v6, p0, Lbss;->g:Lva;

    iget-object v0, p0, Lbss;->g:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    iget-object v1, p0, Lbss;->a:Lbrq;

    iget-object v1, v1, Lbrq;->n:Lbos;

    new-instance v2, Lbsr;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lbsr;-><init>(Lbss;Lva;[B[B[B)V

    invoke-interface {v0, v1, v2}, Lbqo;->f(Lbos;Lbqn;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    return v1
.end method

.method public final d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V
    .locals 6

    iget-object v0, p0, Lbss;->b:Lbro;

    iget-object p4, p0, Lbss;->g:Lva;

    iget-object p4, p4, Lva;->a:Ljava/lang/Object;

    invoke-interface {p4}, Lbqo;->g()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lbro;->d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V

    return-void
.end method

.method final e(Lva;)Z
    .locals 1

    iget-object v0, p0, Lbss;->g:Lva;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
