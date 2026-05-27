.class public final synthetic Llsj;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Llsl;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Llsl;ILjava/util/List;I)V
    .locals 0

    iput p4, p0, Llsj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsj;->a:Llsl;

    iput p2, p0, Llsj;->b:I

    iput-object p3, p0, Llsj;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Llsl;Ljava/util/List;II)V
    .locals 0

    iput p4, p0, Llsj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsj;->a:Llsl;

    iput-object p2, p0, Llsj;->c:Ljava/util/List;

    iput p3, p0, Llsj;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 8

    iget v0, p0, Llsj;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v6, p0, Llsj;->a:Llsl;

    iget-object v4, p0, Llsj;->c:Ljava/util/List;

    iget v3, p0, Llsj;->b:I

    move-object v2, p1

    check-cast v2, Lnxy;

    invoke-static {v4}, Lnsy;->u(Ljava/lang/Iterable;)Lnom;

    move-result-object p1

    new-instance v7, Llsk;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Llsk;-><init>(Llsl;Lnxy;ILjava/util/List;I)V

    invoke-static {v7}, Lmny;->a(Lnnn;)Lnnn;

    move-result-object v0

    iget-object v1, v6, Llsl;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lnom;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Llsj;->a:Llsl;

    iget v0, p0, Llsj;->b:I

    iget-object v1, p0, Llsj;->c:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-static {v4}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Llsl;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llsi;

    invoke-interface {v4}, Llsi;->a()Lnou;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lnsy;->w(Ljava/lang/Iterable;)Lnom;

    move-result-object p1

    new-instance v0, Llig;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Llig;-><init>(I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-virtual {p1, v0, v1}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
