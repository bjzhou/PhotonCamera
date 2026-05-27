.class final Lbrm;
.super Ljava/lang/Object;

# interfaces
.implements Lbrp;
.implements Lbqn;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lbrq;

.field private final c:Lbro;

.field private d:I

.field private e:Lbqb;

.field private f:Ljava/util/List;

.field private g:I

.field private h:Ljava/io/File;

.field private volatile i:Lva;


# direct methods
.method public constructor <init>(Ljava/util/List;Lbrq;Lbro;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbrm;->d:I

    iput-object p1, p0, Lbrm;->a:Ljava/util/List;

    iput-object p2, p0, Lbrm;->b:Lbrq;

    iput-object p3, p0, Lbrm;->c:Lbro;

    return-void
.end method

.method private final d()Z
    .locals 2

    iget v0, p0, Lbrm;->g:I

    iget-object v1, p0, Lbrm;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbrm;->i:Lva;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lbqo;->bg()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lbrm;->c:Lbro;

    iget-object v1, p0, Lbrm;->e:Lbqb;

    iget-object v2, p0, Lbrm;->i:Lva;

    iget-object v3, v2, Lva;->a:Ljava/lang/Object;

    const/4 v4, 0x3

    iget-object v5, p0, Lbrm;->e:Lbqb;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lbro;->d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V

    return-void
.end method

.method public final c()Z
    .locals 7

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lbrm;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lbrm;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbrm;->i:Lva;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0}, Lbrm;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbrm;->f:Ljava/util/List;

    iget v3, p0, Lbrm;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbrm;->g:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbuz;

    iget-object v3, p0, Lbrm;->h:Ljava/io/File;

    iget-object v4, p0, Lbrm;->b:Lbrq;

    iget v5, v4, Lbrq;->e:I

    iget v6, v4, Lbrq;->f:I

    iget-object v4, v4, Lbrq;->h:Lbqf;

    invoke-interface {v0, v3, v5, v6, v4}, Lbuz;->b(Ljava/lang/Object;IILbqf;)Lva;

    move-result-object v0

    iput-object v0, p0, Lbrm;->i:Lva;

    iget-object v0, p0, Lbrm;->i:Lva;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbrm;->b:Lbrq;

    iget-object v3, p0, Lbrm;->i:Lva;

    iget-object v3, v3, Lva;->a:Ljava/lang/Object;

    invoke-interface {v3}, Lbqo;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbrq;->h(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbrm;->i:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    iget-object v1, p0, Lbrm;->b:Lbrq;

    iget-object v1, v1, Lbrq;->n:Lbos;

    invoke-interface {v0, v1, p0}, Lbqo;->f(Lbos;Lbqn;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_2
    iget v0, p0, Lbrm;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lbrm;->d:I

    iget-object v2, p0, Lbrm;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lbrm;->a:Ljava/util/List;

    iget v2, p0, Lbrm;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqb;

    new-instance v2, Lbrn;

    iget-object v3, p0, Lbrm;->b:Lbrq;

    iget-object v4, v3, Lbrq;->m:Lbqb;

    invoke-direct {v2, v0, v4}, Lbrn;-><init>(Lbqb;Lbqb;)V

    invoke-virtual {v3}, Lbrq;->d()Lbtl;

    move-result-object v3

    invoke-interface {v3, v2}, Lbtl;->a(Lbqb;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lbrm;->h:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lbrm;->e:Lbqb;

    iget-object v0, p0, Lbrm;->b:Lbrq;

    invoke-virtual {v0, v2}, Lbrq;->g(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrm;->f:Ljava/util/List;

    iput v1, p0, Lbrm;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lbrm;->c:Lbro;

    iget-object v1, p0, Lbrm;->e:Lbqb;

    iget-object v2, p0, Lbrm;->i:Lva;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-interface {v0, v1, p1, v2, v3}, Lbro;->b(Lbqb;Ljava/lang/Exception;Lbqo;I)V

    return-void
.end method
