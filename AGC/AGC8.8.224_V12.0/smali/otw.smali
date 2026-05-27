.class public final Lotw;
.super Ljava/lang/Object;

# interfaces
.implements Lott;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lotw;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lotv;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lotv;

    iget v1, v0, Lotv;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lotv;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lotv;

    invoke-direct {v0, p0, p2}, Lotv;-><init>(Lotw;Loku;)V

    :goto_0
    iget-object p2, v0, Lotv;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lotv;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lotv;->e:Ljava/util/Iterator;

    iget-object v2, v0, Lotv;->d:Lotu;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lotw;->a:Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    iput-object v2, v0, Lotv;->d:Lotu;

    iput-object p1, v0, Lotv;->e:Ljava/util/Iterator;

    const/4 v3, 0x1

    iput v3, v0, Lotv;->b:I

    invoke-interface {v2, p2, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
