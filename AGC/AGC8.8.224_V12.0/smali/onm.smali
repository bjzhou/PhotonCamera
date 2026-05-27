.class public final Lonm;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;I)Z
    .locals 3

    instance-of v0, p0, Loix;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    instance-of v0, p0, Lonc;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Lonc;

    invoke-interface {p0}, Lonc;->i()I

    move-result p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lolz;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lomk;

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lomo;

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lomp;

    if-eqz v0, :cond_4

    const/4 p0, 0x3

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lomq;

    if-eqz v0, :cond_5

    const/4 p0, 0x4

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lomr;

    if-eqz v0, :cond_6

    const/4 p0, 0x5

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Loms;

    if-eqz v0, :cond_7

    const/4 p0, 0x6

    goto/16 :goto_0

    :cond_7
    instance-of v0, p0, Lomt;

    if-eqz v0, :cond_8

    const/4 p0, 0x7

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lomu;

    if-eqz v0, :cond_9

    const/16 p0, 0x8

    goto/16 :goto_0

    :cond_9
    instance-of v0, p0, Lomv;

    if-eqz v0, :cond_a

    const/16 p0, 0x9

    goto/16 :goto_0

    :cond_a
    instance-of v0, p0, Loma;

    if-eqz v0, :cond_b

    const/16 p0, 0xa

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lomb;

    if-eqz v0, :cond_c

    const/16 p0, 0xb

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lomc;

    if-eqz v0, :cond_d

    const/16 p0, 0xc

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lomd;

    if-eqz v0, :cond_e

    const/16 p0, 0xd

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lome;

    if-eqz v0, :cond_f

    const/16 p0, 0xe

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lomf;

    if-eqz v0, :cond_10

    const/16 p0, 0xf

    goto :goto_0

    :cond_10
    instance-of v0, p0, Lomg;

    if-eqz v0, :cond_11

    const/16 p0, 0x10

    goto :goto_0

    :cond_11
    instance-of v0, p0, Lomh;

    if-eqz v0, :cond_12

    const/16 p0, 0x11

    goto :goto_0

    :cond_12
    instance-of v0, p0, Lomi;

    if-eqz v0, :cond_13

    const/16 p0, 0x12

    goto :goto_0

    :cond_13
    instance-of v0, p0, Lomj;

    if-eqz v0, :cond_14

    const/16 p0, 0x13

    goto :goto_0

    :cond_14
    instance-of v0, p0, Loml;

    if-eqz v0, :cond_15

    const/16 p0, 0x14

    goto :goto_0

    :cond_15
    instance-of v0, p0, Lomm;

    if-eqz v0, :cond_16

    const/16 p0, 0x15

    goto :goto_0

    :cond_16
    instance-of p0, p0, Lomn;

    if-eqz p0, :cond_17

    const/16 p0, 0x16

    goto :goto_0

    :cond_17
    const/4 p0, -0x1

    :goto_0
    if-ne p0, p1, :cond_18

    return v2

    :cond_18
    return v1
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {p0, p1}, Lonm;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlin.jvm.functions.Function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Lonm;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lone;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1
.end method

.method public static final c(Lonc;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kotlin.jvm.functions."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final d(Lomo;)Looc;
    .locals 2

    new-instance v0, Loof;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loof;-><init>(Lomo;I)V

    return-object v0
.end method

.method public static e(Looc;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Looc;->a()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lojx;->a:Lojx;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public static g(II)I
    .locals 0

    if-le p0, p1, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public static h(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    return-wide p2

    :cond_0
    return-wide p0
.end method

.method public static final j(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while trying to handle coroutine exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final k(Lola;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lokv;

    invoke-interface {p0, v0}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandler;->handleException(Lola;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lopr;->a(Lola;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1, v0}, Lonm;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, Lopr;->a(Lola;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final l(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lopi;

    if-eqz v0, :cond_1

    check-cast p0, Lopi;

    iget-object p0, p0, Lopi;->b:Ljava/lang/Throwable;

    sget-boolean v0, Lopw;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lopi;

    invoke-direct {p0, v0}, Lopi;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static final n(Loku;)Lopa;
    .locals 5

    instance-of v0, p0, Lowh;

    if-nez v0, :cond_0

    new-instance v0, Lopa;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lopa;-><init>(Loku;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lowh;

    iget-object v1, v0, Lowh;->e:Loop;

    :cond_1
    :goto_0
    iget-object v2, v1, Loop;->a:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v0, v0, Lowh;->e:Loop;

    sget-object v1, Lowi;->b:Loxb;

    invoke-virtual {v0, v1}, Loop;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lopa;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lowh;->e:Loop;

    sget-object v4, Lowi;->b:Loxb;

    invoke-virtual {v3, v2, v4}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lopa;

    :goto_1
    if-eqz v0, :cond_4

    sget-boolean p0, Lopw;->a:Z

    iget-object p0, v0, Lopa;->d:Loop;

    iget-object p0, p0, Loop;->a:Ljava/lang/Object;

    instance-of v1, p0, Loph;

    if-eqz v1, :cond_3

    check-cast p0, Loph;

    iget-object p0, p0, Loph;->d:Ljava/lang/Object;

    :cond_3
    iget-object p0, v0, Lopa;->c:Loon;

    const/4 v1, 0x0

    iput v1, p0, Loon;->b:I

    iget-object p0, v0, Lopa;->d:Loop;

    sget-object v1, Loos;->a:Loos;

    invoke-virtual {p0, v1}, Loop;->c(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance v0, Lopa;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lopa;-><init>(Loku;I)V

    return-object v0

    :cond_5
    sget-object v3, Lowi;->b:Loxb;

    if-eq v2, v3, :cond_1

    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final o(Looz;Loqh;)V
    .locals 1

    new-instance v0, Loqi;

    invoke-direct {v0, p1}, Loqi;-><init>(Loqh;)V

    invoke-interface {p0, v0}, Looz;->a(Lomk;)V

    return-void
.end method

.method public static synthetic p(Looz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Looz;->k(Ljava/lang/Throwable;)V

    return-void
.end method
