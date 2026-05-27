.class public final Lmrd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Laoz;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmrd;->c:Ljava/lang/Object;

    iput-object p2, p0, Lmrd;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lmrd;->a:Z

    return-void
.end method

.method public constructor <init>(Ldhi;ZLgzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lmrd;->a:Z

    iput-object p1, p0, Lmrd;->b:Ljava/lang/Object;

    iput-object p3, p0, Lmrd;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lily;Lknz;Lkli;Limq;Ldhi;Ljvs;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, p0, Lmrd;->a:Z

    new-instance v0, Lcea;

    invoke-interface {p3}, Lkli;->f()I

    move-result v5

    move-object v1, v0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcea;-><init>(Lknz;Limq;Ldhi;IZLjvs;)V

    iput-object v0, p0, Lmrd;->c:Ljava/lang/Object;

    iput-object p1, p0, Lmrd;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lmrc;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lmqe;->a:Lmqe;

    invoke-direct {p0, p1, v0, v1}, Lmrd;-><init>(Lmrc;ZLmqf;)V

    return-void
.end method

.method private constructor <init>(Lmrc;ZLmqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmrd;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lmrd;->a:Z

    iput-object p3, p0, Lmrd;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(C)Lmrd;
    .locals 3

    new-instance v0, Lmqc;

    invoke-direct {v0, p0}, Lmqc;-><init>(C)V

    new-instance p0, Lmrd;

    new-instance v1, Lmra;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lmra;-><init>(Lmqf;I)V

    invoke-direct {p0, v1}, Lmrd;-><init>(Lmrc;)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lmrd;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lmrd;->b(C)Lmrd;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lmrd;

    new-instance v1, Lmra;

    invoke-direct {v1, p0, v2}, Lmra;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lmrd;-><init>(Lmrc;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lmrd;
    .locals 4

    new-instance v0, Lmrd;

    iget-object v1, p0, Lmrd;->c:Ljava/lang/Object;

    iget-object v2, p0, Lmrd;->b:Ljava/lang/Object;

    check-cast v2, Lmqf;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lmrd;-><init>(Lmrc;ZLmqf;)V

    return-object v0
.end method

.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lmrb;

    invoke-direct {v0, p0, p1}, Lmrb;-><init>(Lmrd;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final e(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmrd;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lmrc;->a(Lmrd;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lmrd;->e(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljvs;
    .locals 4

    invoke-virtual {p0}, Lmrd;->h()Ljwb;

    move-result-object v0

    new-instance v1, Lcdu;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcdu;-><init>(Lmrd;I[B)V

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljwb;
    .locals 2

    iget-object v0, p0, Lmrd;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p0, Lmrd;->c:Ljava/lang/Object;

    sget-object v1, Lgzd;->ar:Lgzs;

    invoke-interface {v0, v1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Lmrd;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmrd;->h()Ljwb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljcb;->n(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
