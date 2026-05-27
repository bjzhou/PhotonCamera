.class public final Lkch;
.super Ljava/lang/Object;

# interfaces
.implements Lkci;


# instance fields
.field private final a:Lklj;

.field private final b:Ljava/util/List;

.field private c:I


# direct methods
.method public constructor <init>(Lklj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkch;->a:Lklj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkch;->b:Ljava/util/List;

    :try_start_0
    invoke-interface {p1}, Lklj;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lklq; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lklr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkln; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lkch;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lkli;
    .locals 4

    iget v0, p0, Lkch;->c:I

    iget-object v1, p0, Lkch;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lkch;->a:Lklj;

    iget-object v1, p0, Lkch;->b:Ljava/util/List;

    iget v2, p0, Lkch;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkch;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkll;

    invoke-interface {v0, v1}, Lklj;->a(Lkll;)Lkli;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkch;->c:I

    return-void
.end method
