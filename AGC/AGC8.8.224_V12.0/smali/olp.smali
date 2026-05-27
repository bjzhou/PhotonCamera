.class public Lolp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-ltz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lolp;->J(CC)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lolp;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v2

    add-int/2addr v3, v4

    if-ltz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_0
    invoke-virtual {v4, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lonm;->f(II)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p0, p1, v1}, Lolp;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static C(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1, p2}, Lolp;->z(Ljava/lang/CharSequence;[Ljava/lang/String;I)Looc;

    move-result-object p1

    new-instance p2, Loog;

    invoke-direct {p2, p1, v0}, Loog;-><init>(Looc;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lonv;

    invoke-static {p0, v0}, Lolp;->r(Ljava/lang/CharSequence;Lonv;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p0, v1, v0}, Lolp;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_8

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    goto :goto_3

    :cond_2
    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    move v5, p2

    goto :goto_2

    :cond_4
    const/16 v5, 0xa

    :goto_2
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_5
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v5, p2, -0x1

    if-eq p1, v5, :cond_7

    :cond_6
    invoke-static {p0, v1, v0}, Lolp;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_5

    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_4
    return-object v4
.end method

.method public static synthetic D(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lolp;->C(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lolp;->x(Ljava/lang/CharSequence;C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lolp;->w(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static H(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static I(I)V
    .locals 5

    new-instance v0, Lonv;

    const/4 v1, 0x2

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lonv;-><init>(II)V

    iget v3, v0, Lonu;->a:I

    if-gt v3, p0, :cond_0

    iget v0, v0, Lonu;->b:I

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was not in valid range "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lonv;

    invoke-direct {p0, v1, v2}, Lonv;-><init>(II)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static J(CC)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic K(Lotj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lotj;->x(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static L(Lotd;Lolz;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lotc;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lotc;

    iget v1, v0, Lotc;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lotc;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lotc;

    invoke-direct {v0, p2}, Lotc;-><init>(Loku;)V

    :goto_0
    iget-object p2, v0, Lotc;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lotc;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, v0, Lotc;->c:Lolz;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object p2

    sget-object v2, Lora;->c:Lokv;

    invoke-interface {p2, v2}, Lola;->get(Loky;)Lokx;

    move-result-object p2

    if-ne p2, p0, :cond_2

    :try_start_1
    iput-object p1, v0, Lotc;->c:Lolz;

    const/4 p2, 0x1

    iput p2, v0, Lotc;->b:I

    new-instance v2, Lopa;

    invoke-static {v0}, Lolp;->g(Loku;)Loku;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v2}, Lopa;->x()V

    new-instance p2, Lawq;

    const/16 v0, 0x8

    invoke-direct {p2, v2, v0}, Lawq;-><init>(Looz;I)V

    iget-object p0, p0, Lost;->b:Loss;

    invoke-interface {p0, p2}, Loss;->w(Lomk;)V

    invoke-virtual {v2}, Lopa;->m()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    invoke-interface {p1}, Lolz;->a()Ljava/lang/Object;

    sget-object p0, Lojk;->a:Lojk;

    return-object p0

    :catchall_1
    move-exception p0

    :goto_2
    invoke-interface {p1}, Lolz;->a()Ljava/lang/Object;

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static M(Lotf;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, p1}, Lopx;->n(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_1
    invoke-interface {p0, v0}, Lotf;->r(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static N(Lotj;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p1}, Lotj;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Losv;

    if-nez v1, :cond_0

    check-cast v0, Lojk;

    return-void

    :cond_0
    new-instance v0, Losx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Losx;-><init>(Lotj;Ljava/lang/Object;Loku;)V

    invoke-static {v0}, Lone;->k(Lomo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Losw;

    iget-object p0, p0, Losw;->b:Ljava/lang/Object;

    return-void
.end method

.method public static O(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Losu;

    invoke-direct {v0, p0}, Losu;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static synthetic P(III)Loss;
    .locals 3

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    xor-int/2addr v0, v2

    or-int/2addr p1, v0

    if-eqz p1, :cond_3

    and-int/lit8 p1, p2, 0x1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    packed-switch p0, :pswitch_data_0

    if-ne p0, v2, :cond_2

    goto :goto_1

    :pswitch_0
    new-instance p0, Loth;

    invoke-direct {p0}, Loth;-><init>()V

    goto :goto_2

    :pswitch_1
    new-instance p0, Lotb;

    invoke-direct {p0}, Lotb;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance p0, Losq;

    sget p1, Losr;->a:I

    invoke-direct {p0, p1}, Losq;-><init>(I)V

    goto :goto_2

    :cond_2
    move v2, p0

    :goto_1
    new-instance p0, Losq;

    invoke-direct {p0, v2}, Losq;-><init>(I)V

    :goto_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Q(JLomo;Loku;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lorx;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorx;

    iget v1, v0, Lorx;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorx;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorx;

    invoke-direct {v0, p3}, Lorx;-><init>(Loku;)V

    :goto_0
    iget-object p3, v0, Lorx;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lorx;->b:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lorx;->c:Lonk;

    :try_start_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorv; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :pswitch_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long p3, p0, v4

    if-gtz p3, :cond_1

    return-object v3

    :cond_1
    new-instance p3, Lonk;

    invoke-direct {p3}, Lonk;-><init>()V

    :try_start_1
    iput-object p3, v0, Lorx;->c:Lonk;

    const/4 v2, 0x1

    iput v2, v0, Lorx;->b:I

    new-instance v4, Lorw;

    invoke-direct {v4, p0, p1, v0}, Lorw;-><init>(JLoku;)V

    iput-object v4, p3, Lonk;->a:Ljava/lang/Object;

    iget-object p0, v4, Lorw;->e:Loku;

    invoke-interface {p0}, Loku;->d()Lola;

    move-result-object p0

    invoke-static {p0}, Lopx;->i(Lola;)Loqa;

    move-result-object p0

    iget-wide v5, v4, Lorw;->b:J

    iget-object p1, v4, Loor;->a:Lola;

    invoke-interface {p0, v5, v6, v4, p1}, Loqa;->f(JLjava/lang/Runnable;Lola;)Loqh;

    move-result-object p0

    new-instance p1, Loqj;

    invoke-direct {p1, p0}, Loqj;-><init>(Loqh;)V

    const/4 p0, 0x0

    invoke-virtual {v4, p0, v2, p1}, Lori;->dg(ZZLomk;)Loqh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lorv; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x2

    :try_start_2
    invoke-static {p2, p0}, Lonm;->b(Ljava/lang/Object;I)V

    invoke-interface {p2, v4, v4}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    new-instance p1, Lopi;

    invoke-direct {p1, p0}, Lopi;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    sget-object p1, Lolc;->a:Lolc;

    if-ne p0, p1, :cond_2

    move-object p3, p1

    goto :goto_5

    :cond_2
    invoke-virtual {v4, p0}, Lori;->de(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorj;->b:Loxb;

    if-ne p1, p2, :cond_3

    sget-object p0, Lolc;->a:Lolc;

    move-object p3, p0

    goto :goto_5

    :cond_3
    instance-of p2, p1, Lopi;

    if-eqz p2, :cond_b

    check-cast p1, Lopi;

    iget-object p1, p1, Lopi;->b:Ljava/lang/Throwable;

    instance-of p2, p1, Lorv;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Lorv;

    iget-object p2, p2, Lorv;->a:Lora;

    if-eq p2, v4, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Lopi;

    if-eqz p1, :cond_7

    check-cast p0, Lopi;

    iget-object p0, p0, Lopi;->b:Ljava/lang/Throwable;

    iget-object p1, v4, Lowy;->e:Loku;

    sget-boolean p2, Lopw;->b:Z

    if-eqz p2, :cond_6

    instance-of p2, p1, Loli;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0, p1}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object p0

    :cond_6
    :goto_2
    throw p0

    :cond_7
    move-object p3, p0

    goto :goto_5

    :cond_8
    :goto_3
    iget-object p0, v4, Lowy;->e:Loku;

    sget-boolean p2, Lopw;->b:Z

    if-eqz p2, :cond_a

    instance-of p2, p0, Loli;

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {p1, p0}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_2

    :cond_a
    :goto_4
    throw p1

    :cond_b
    invoke-static {p1}, Lorj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Lorv; {:try_start_3 .. :try_end_3} :catch_1

    move-object p3, p0

    :goto_5
    if-ne p3, v1, :cond_c

    return-object v1

    :cond_c
    :goto_6
    return-object p3

    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, p3

    :goto_7
    iget-object p2, p1, Lorv;->a:Lora;

    iget-object p0, p0, Lonk;->a:Ljava/lang/Object;

    if-ne p2, p0, :cond_d

    return-object v3

    :cond_d
    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static R(Lola;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p0, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p0

    check-cast p0, Lora;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lora;->r(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static S(Lola;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p0, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p0

    check-cast p0, Lora;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lolp;->T(Lora;)V

    :cond_0
    return-void
.end method

.method public static T(Lora;)V
    .locals 1

    invoke-interface {p0}, Lora;->dh()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lora;->o()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static U(Lola;)Z
    .locals 1

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p0, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p0

    check-cast p0, Lora;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lora;->dh()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static V(I)Llhz;
    .locals 1

    new-instance v0, Llhz;

    invoke-direct {v0, p0}, Llhz;-><init>(I)V

    return-object v0
.end method

.method public static c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    return-void
.end method

.method public static d(D)Ljava/lang/Double;
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static e(J)Ljava/lang/Long;
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public static f(Lomo;Ljava/lang/Object;Loku;)Loku;
    .locals 2

    instance-of v0, p0, Lolf;

    if-eqz v0, :cond_0

    check-cast p0, Lolf;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v0

    sget-object v1, Lolb;->a:Lolb;

    if-ne v0, v1, :cond_1

    new-instance v0, Lold;

    invoke-direct {v0, p2, p0, p1}, Lold;-><init>(Loku;Lomo;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lole;

    invoke-direct {v1, p2, v0, p0, p1}, Lole;-><init>(Loku;Lola;Lomo;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static g(Loku;)Loku;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lolh;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lolh;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, v0, Lolh;->n:Loku;

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lolh;->d()Lola;

    move-result-object p0

    sget-object v1, Lokw;->a:Lokv;

    invoke-interface {p0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object p0

    check-cast p0, Lokw;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lokw;->cL(Loku;)Loku;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    iput-object p0, v0, Lolh;->n:Loku;

    :cond_2
    return-object p0
.end method

.method public static h(Z)Loom;
    .locals 7

    sget-object v2, Looq;->a:Looq;

    new-instance v6, Loom;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Loom;-><init>(ZLone;[B[B[B)V

    return-object v6
.end method

.method public static i(I)Loon;
    .locals 7

    sget-object v2, Looq;->a:Looq;

    new-instance v6, Loon;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Loon;-><init>(ILone;[B[B[B)V

    return-object v6
.end method

.method public static j(J)Looo;
    .locals 8

    sget-object v3, Looq;->a:Looq;

    new-instance v7, Looo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p0

    invoke-direct/range {v0 .. v6}, Looo;-><init>(JLone;[B[B[B)V

    return-object v7
.end method

.method public static k(Ljava/lang/Object;)Loop;
    .locals 7

    sget-object v2, Looq;->a:Looq;

    new-instance v6, Loop;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Loop;-><init>(Ljava/lang/Object;Lone;[B[B[B)V

    return-object v6
.end method

.method public static l(Ljava/lang/Appendable;Ljava/lang/Object;Lomk;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-nez p2, :cond_3

    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\r\n"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "\n"

    aput-object v3, v0, v2

    const/4 v4, 0x2

    const-string v5, "\r"

    aput-object v5, v0, v4

    invoke-static {p0, v0, v1}, Lolp;->z(Ljava/lang/CharSequence;[Ljava/lang/String;I)Looc;

    move-result-object v0

    new-instance v4, Lawq;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5}, Lawq;-><init>(Ljava/lang/CharSequence;I)V

    new-instance v5, Looi;

    invoke-direct {v5, v0, v4}, Looi;-><init>(Looc;Lomk;)V

    invoke-static {v5}, Lonm;->e(Looc;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lolp;->o(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    const/4 v8, -0x1

    if-ge v7, v6, :cond_3

    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lolp;->H(C)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, -0x1

    :goto_3
    if-ne v7, v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_5

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v4, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_7

    move-object v4, v6

    goto :goto_4

    :cond_8
    :goto_5
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    const-string v4, ""

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lawu;->g:Lawu;

    goto :goto_7

    :cond_a
    new-instance v4, Lawq;

    const/4 v6, 0x6

    invoke-direct {v4, v6}, Lawq;-><init>(I)V

    :goto_7
    invoke-static {v0}, Lljr;->ad(Ljava/util/List;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    if-gez v1, :cond_b

    invoke-static {}, Lljr;->ag()V

    :cond_b
    check-cast v8, Ljava/lang/String;

    if-eqz v1, :cond_c

    if-ne v1, v6, :cond_d

    :cond_c
    invoke-static {v8}, Lolp;->o(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v8, v5

    goto :goto_9

    :cond_d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v2, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Lonm;->g(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_e

    goto :goto_9

    :cond_e
    move-object v8, v1

    :goto_9
    if-eqz v8, :cond_f

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    :goto_a
    move v1, v9

    goto :goto_8

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested character count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is less than zero."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 p0, 0x7c

    invoke-static {v7, v0, v3, v5, p0}, Lljr;->as(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/Long;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa

    invoke-static {v1}, Lolp;->I(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lone;->a(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v6, :cond_3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    goto :goto_3

    :cond_1
    const/16 v9, 0x2d

    if-ne v5, v9, :cond_2

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v9, 0x2b

    if-ne v5, v9, :cond_a

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v11, 0x0

    move-wide v13, v9

    :goto_1
    if-ge v6, v2, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Character;->digit(II)I

    move-result v5

    if-gez v5, :cond_5

    :cond_4
    :goto_2
    goto :goto_3

    :cond_5
    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    cmp-long v15, v13, v9

    if-nez v15, :cond_4

    const-wide v13, -0xcccccccccccccccL

    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v15, 0xa

    mul-long v11, v11, v15

    move/from16 v16, v2

    int-to-long v1, v5

    add-long v17, v7, v1

    cmp-long v5, v11, v17

    if-gez v5, :cond_7

    goto :goto_2

    :cond_7
    sub-long/2addr v11, v1

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    const/16 v1, 0xa

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_9
    neg-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_a
    :goto_3
    return-object v3
.end method

.method public static o(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lonv;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lonv;-><init>(II)V

    invoke-virtual {v0}, Lonu;->a()Lokb;

    move-result-object v0

    :cond_0
    iget-boolean v2, v0, Lokb;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lokb;->a()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lolp;->H(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    return v1
.end method

.method public static p(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-gt v1, v0, :cond_4

    if-eq v3, v2, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lolp;->H(C)Z

    move-result v4

    if-nez v2, :cond_2

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v3

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/CharSequence;Lonv;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lonu;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p1, p1, Lonu;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lolp;->w(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static synthetic t(Ljava/lang/CharSequence;C)Z
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lolp;->p(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Lolp;->J(CC)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static u(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lonm;->f(II)I

    move-result p2

    new-instance v1, Lonv;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Lonm;->g(II)I

    move-result v0

    invoke-direct {v1, p2, v0}, Lonv;-><init>(II)V

    iget p2, v1, Lonu;->a:I

    iget v0, v1, Lonu;->b:I

    const/4 v1, -0x1

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p1, p0, p2, v2}, Lolp;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    if-eq p2, v0, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method public static synthetic v(Ljava/lang/CharSequence;CII)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public static synthetic w(Ljava/lang/CharSequence;Ljava/lang/String;II)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lolp;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic x(Ljava/lang/CharSequence;C)I
    .locals 1

    invoke-static {p0}, Lolp;->p(Ljava/lang/CharSequence;)I

    move-result v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public static y(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v1, Lonv;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    sub-int/2addr p1, p0

    const/4 p0, 0x1

    invoke-direct {v1, p0, p1}, Lonv;-><init>(II)V

    invoke-virtual {v1}, Lonu;->a()Lokb;

    move-result-object p0

    :goto_0
    iget-boolean p1, p0, Lokb;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lokb;->a()I

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Ljava/lang/CharSequence;[Ljava/lang/String;I)Looc;
    .locals 3

    invoke-static {p1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lool;

    new-instance v1, Lovs;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lovs;-><init>(Ljava/util/List;I)V

    invoke-direct {v0, p0, p2, v1}, Lool;-><init>(Ljava/lang/CharSequence;ILomo;)V

    return-object v0
.end method


# virtual methods
.method public a()Lons;
    .locals 1

    new-instance v0, Lonp;

    invoke-direct {v0}, Lonp;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lolo;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
