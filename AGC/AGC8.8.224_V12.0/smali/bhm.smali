.class public final Lbhm;
.super Ljava/lang/Object;

# interfaces
.implements Lbgw;
.implements Lbhn;


# instance fields
.field public final a:Z

.field public final b:Lbhs;

.field public final c:Lbhs;

.field public final d:Lbhs;

.field public final e:I

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lbjq;Lbjo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbhm;->f:Ljava/util/List;

    iget-boolean v0, p2, Lbjo;->d:Z

    iput-boolean v0, p0, Lbhm;->a:Z

    iget v0, p2, Lbjo;->e:I

    iput v0, p0, Lbhm;->e:I

    iget-object v0, p2, Lbjo;->a:Lbip;

    invoke-virtual {v0}, Lbip;->a()Lbhs;

    move-result-object v0

    iput-object v0, p0, Lbhm;->b:Lbhs;

    iget-object v1, p2, Lbjo;->b:Lbip;

    invoke-virtual {v1}, Lbip;->a()Lbhs;

    move-result-object v1

    iput-object v1, p0, Lbhm;->c:Lbhs;

    iget-object p2, p2, Lbjo;->c:Lbip;

    invoke-virtual {p2}, Lbip;->a()Lbhs;

    move-result-object p2

    iput-object p2, p0, Lbhm;->d:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, v1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    invoke-virtual {v0, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    return-void
.end method


# virtual methods
.method final a(Lbhn;)V
    .locals 1

    iget-object v0, p0, Lbhm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbhm;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbhm;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbhn;

    invoke-interface {v1}, Lbhn;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
