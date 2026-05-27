.class public final synthetic Lnsy;
.super Ljava/lang/Object;


# direct methods
.method public static $default$onFinalStatusNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IILjava/lang/String;[B)V
    .locals 5

    sget-object v0, Lmpx;->a:Lmpx;

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v1

    sget-object v2, Lntd;->r:Lntd;

    array-length v3, p4

    const/4 v4, 0x0

    invoke-static {v2, p4, v4, v3, v1}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p4

    invoke-static {p4}, Lnws;->ae(Lnws;)V

    check-cast p4, Lntd;

    invoke-static {p4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    :cond_0
    :goto_0
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;->a(IILjava/lang/String;Lmqp;)V

    return-void
.end method

.method public static $default$onImageNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IJILjava/lang/String;J)V
    .locals 7

    packed-switch p4, :pswitch_data_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p4, 0x5

    const/4 v4, 0x5

    goto :goto_0

    :pswitch_1
    const/4 p4, 0x4

    const/4 v4, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p4, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p4, 0x2

    const/4 v4, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p4, 0x1

    const/4 v4, 0x1

    :goto_0
    new-instance v6, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {v6, p6, p7}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;->e(IJILjava/lang/String;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A(Ljava/lang/Throwable;)Lnou;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lnoq;

    invoke-direct {v0, p0}, Lnoq;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static B(Ljava/lang/Object;)Lnou;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lnor;->a:Lnou;

    return-object p0

    :cond_0
    new-instance v0, Lnor;

    invoke-direct {v0, p0}, Lnor;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static C(Lnou;)Lnou;
    .locals 2

    invoke-interface {p0}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnon;

    invoke-direct {v0, p0}, Lnon;-><init>(Lnou;)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p0, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static D(Lnnn;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;
    .locals 0

    invoke-static {p0}, Lnpo;->g(Lnnn;)Lnpo;

    move-result-object p0

    invoke-interface {p4, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Llmm;

    const/16 p3, 0xe

    invoke-direct {p2, p1, p3}, Llmm;-><init>(Ljava/util/concurrent/Future;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-virtual {p0, p2, p1}, Lnnb;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public static E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnpo;->i(Ljava/lang/Runnable;Ljava/lang/Object;)Lnpo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;
    .locals 0

    invoke-static {p0}, Lnpo;->h(Ljava/util/concurrent/Callable;)Lnpo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;
    .locals 0

    invoke-static {p0}, Lnpo;->g(Lnnn;)Lnpo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static H(Ljava/lang/Iterable;)Lnou;
    .locals 2

    new-instance v0, Lnnq;

    invoke-static {p0}, Lmvv;->i(Ljava/lang/Iterable;)Lmvv;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnnq;-><init>(Lmvm;Z)V

    return-object v0
.end method

.method public static I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;
    .locals 2

    invoke-interface {p0}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnpl;

    invoke-direct {v0, p0}, Lnpl;-><init>(Lnou;)V

    new-instance v1, Lnpj;

    invoke-direct {v1, v0}, Lnpj;-><init>(Lnpl;)V

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lnpl;->b:Ljava/util/concurrent/ScheduledFuture;

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {p0, v1, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static J(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lnsy;->n(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static K(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p0}, Lnsy;->n(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lnnw;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lnnw;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lnpp;

    invoke-direct {v0, p0}, Lnpp;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lnok;

    invoke-direct {v0, p0, p1}, Lnok;-><init>(Ljava/util/concurrent/Future;Lnoj;)V

    invoke-interface {p0, v0, p2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static M(Lnou;Ljava/util/concurrent/Future;)V
    .locals 1

    instance-of v0, p0, Lnnb;

    if-eqz v0, :cond_0

    check-cast p0, Lnnb;

    invoke-virtual {p0, p1}, Lnnb;->o(Ljava/util/concurrent/Future;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnou;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public static N(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lmoz;->i(ZLjava/lang/String;J)V

    return v0
.end method

.method public static O(III)I
    .locals 2

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lmoz;->k(ZLjava/lang/String;II)V

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static P([IIII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs Q([I)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    const/4 v1, 0x0

    aget v1, p0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    aget v2, p0, v0

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs R([I)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    const/4 v1, 0x0

    aget v1, p0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static S(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method public static varargs T([I)Ljava/util/List;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lnme;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lnme;-><init>([III)V

    return-object v1
.end method

.method public static U(FFF)F
    .locals 2

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {p1, v0}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs V([F)F
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    aget v0, p0, v1

    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    aget v1, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static W([FFII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    aget v0, p0, p2

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs X([F)Ljava/util/List;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lnmc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lnmc;-><init>([FII)V

    return-object v1
.end method

.method public static Y(Ljava/util/Collection;)[F
    .locals 4

    instance-of v0, p0, Lnmc;

    if-eqz v0, :cond_0

    check-cast p0, Lnmc;

    iget-object v0, p0, Lnmc;->a:[F

    iget v1, p0, Lnmc;->b:I

    iget p0, p0, Lnmc;->c:I

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static Z(ZLjava/lang/String;JJ)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overflow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)Landroid/util/Pair;
    .locals 3

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v1

    new-instance p0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static aa(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ab(JI)I
    .locals 4

    int-to-long v0, p2

    rem-long/2addr p0, v0

    const-wide/16 v2, 0x0

    cmp-long p2, p0, v2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p0, v0

    :goto_0
    long-to-int p1, p0

    return p1
.end method

.method public static ac(JJ)J
    .locals 10

    xor-long v0, p0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-long v6, p0, p2

    xor-long v8, p0, v6

    cmp-long v1, v8, v4

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    const-string v1, "checkedAdd"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lnsy;->Z(ZLjava/lang/String;JJ)V

    return-wide v6
.end method

.method public static ad(JJ)J
    .locals 10

    const-wide/16 v0, -0x1

    xor-long v2, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    add-int/2addr v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    add-int/2addr v4, v2

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v4, v0

    const/16 v0, 0x41

    if-le v4, v0, :cond_0

    mul-long v0, p0, p2

    return-wide v0

    :cond_0
    const/16 v0, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lnsy;->Z(ZLjava/lang/String;JJ)V

    const/4 v0, 0x1

    const-string v1, "checkedMultiply"

    invoke-static/range {v0 .. v5}, Lnsy;->Z(ZLjava/lang/String;JJ)V

    mul-long v8, p0, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_3

    div-long v0, v8, p0

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lnsy;->Z(ZLjava/lang/String;JJ)V

    return-wide v8
.end method

.method public static ae(JJ)J
    .locals 10

    xor-long v0, p0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-long v6, p0, p2

    xor-long v8, p0, v6

    cmp-long v1, v8, v4

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    const-string v1, "checkedSubtract"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lnsy;->Z(ZLjava/lang/String;JJ)V

    return-wide v6
.end method

.method public static af(JJLjava/math/RoundingMode;)J
    .locals 8

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    xor-long/2addr p0, p2

    sget-object v6, Lnmb;->a:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x3f

    shr-long/2addr p0, v7

    long-to-int p1, p0

    const/4 p0, 0x1

    or-int/2addr p1, p0

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long/2addr p2, v2

    sub-long/2addr v2, p2

    cmp-long p2, v2, v4

    if-nez p2, :cond_1

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p4, p2, :cond_3

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_4

    const-wide/16 p2, 0x1

    and-long/2addr p2, v0

    cmp-long p4, p2, v4

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_1
    cmp-long p2, v2, v4

    if-lez p2, :cond_4

    goto :goto_0

    :pswitch_1
    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :pswitch_2
    if-gez p1, :cond_4

    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    :pswitch_3
    int-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0

    :pswitch_4
    invoke-static {v7}, Lnsy;->aa(Z)V

    :cond_5
    :pswitch_5
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ag(IILjava/math/RoundingMode;)I
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_7

    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    sget-object v2, Lnma;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    shr-int/lit8 p0, p0, 0x1f

    const/4 v3, 0x1

    or-int/2addr p0, v3

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_2

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_4

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, v0, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    if-lez v1, :cond_5

    goto :goto_1

    :pswitch_1
    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_2
    if-gez p0, :cond_5

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    :pswitch_3
    add-int/2addr v0, p0

    return v0

    :pswitch_4
    invoke-static {v4}, Lnsy;->aa(Z)V

    :cond_6
    :pswitch_5
    return v0

    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ah(ILjava/math/RoundingMode;)I
    .locals 2

    if-lez p0, :cond_1

    sget-object v0, Lnma;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    sub-int/2addr v0, p0

    ushr-int/lit8 p0, v0, 0x1f

    add-int/2addr p1, p0

    return p1

    :pswitch_1
    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    :pswitch_2
    add-int/lit8 p1, p0, -0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lnsy;->aa(Z)V

    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") must be > 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b([BLcom/google/googlex/gcam/HalAfMetadata;)V
    .locals 8

    invoke-static {p0}, Lnsy;->a([B)Landroid/util/Pair;

    move-result-object p0

    new-instance v0, Lnrf;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnrf;-><init>(J)V

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    int-to-long v6, p0

    iget-wide v1, p1, Lcom/google/googlex/gcam/HalAfMetadata;->a:J

    invoke-static {v0}, Lnrf;->a(Lnrf;)J

    move-result-wide v4

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->HalAfMetadata_SetFaceDeblurInfoFromBytes(JLcom/google/googlex/gcam/HalAfMetadata;JJ)Z

    return-void
.end method

.method public static c(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "POSTVIEW_THUMBNAIL"

    return-object p0

    :pswitch_0
    const-string p0, "ACTION_PAN"

    return-object p0

    :pswitch_1
    const-string p0, "LONG_EXPOSURE"

    return-object p0

    :pswitch_2
    const-string p0, "HDR_PLUS"

    return-object p0

    :pswitch_3
    const-string p0, "PROCESSOR_OUTPUT_IMAGE_TYPE_UNDEFINED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvReadView;
    .locals 4

    new-instance v0, Lnrk;

    new-instance v1, Lcom/google/googlex/gcam/YuvReadView;

    iget-wide v2, p0, Lcom/google/googlex/gcam/YuvImage;->a:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvImage_cref(JLcom/google/googlex/gcam/YuvImage;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/googlex/gcam/YuvReadView;-><init>(J)V

    invoke-direct {v0, v1, p0}, Lnrk;-><init>(Lcom/google/googlex/gcam/YuvReadView;Lcom/google/googlex/gcam/YuvImage;)V

    return-object v0
.end method

.method public static f(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;
    .locals 4

    new-instance v0, Lnrk;

    new-instance v1, Lcom/google/googlex/gcam/YuvReadView;

    iget-wide v2, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_cref(JLcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/googlex/gcam/YuvReadView;-><init>(J)V

    invoke-direct {v0, v1, p0}, Lnrk;-><init>(Lcom/google/googlex/gcam/YuvReadView;Lcom/google/googlex/gcam/YuvWriteView;)V

    return-object v0
.end method

.method public static g(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;
    .locals 4

    new-instance v0, Lnrl;

    new-instance v1, Lcom/google/googlex/gcam/YuvWriteView;

    iget-wide v2, p0, Lcom/google/googlex/gcam/YuvImage;->a:J

    invoke-static {v2, v3, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvImage_ref(JLcom/google/googlex/gcam/YuvImage;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(J)V

    invoke-direct {v0, v1, p0}, Lnrl;-><init>(Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/googlex/gcam/YuvImage;)V

    return-object v0
.end method

.method public static h(Lnqp;)I
    .locals 0

    iget p0, p0, Lnqp;->j:I

    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ImageRotationToDegrees(I)I

    move-result p0

    return p0
.end method

.method public static i(I)Lnqp;
    .locals 0

    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->DegreesToImageRotation(I)I

    move-result p0

    invoke-static {p0}, Lnqp;->a(I)Lnqp;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/google/googlex/gcam/ShotMetadata;Lnqn;)V
    .locals 2

    invoke-static {p0}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    iget p1, p1, Lnqn;->j:I

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SetThermalState(JLcom/google/googlex/gcam/ShotMetadata;I)V

    return-void
.end method

.method public static k(Lnqz;)Z
    .locals 0

    iget p0, p0, Lnqz;->l:I

    invoke-static {p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsRgb8(I)Z

    move-result p0

    return p0
.end method

.method public static l(Lcom/google/googlex/gcam/ShotMetadata;I)V
    .locals 2

    invoke-static {p0}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->RotateShotMetadata__SWIG_1(JLcom/google/googlex/gcam/ShotMetadata;I)Z

    return-void
.end method

.method public static m(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    throw p0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static o(Ljava/lang/Throwable;)V
    .locals 0

    instance-of p0, p0, Ljava/lang/InterruptedException;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public static p(Ljava/util/concurrent/ExecutorService;)Lnow;
    .locals 1

    instance-of v0, p0, Lnow;

    if-eqz v0, :cond_0

    check-cast p0, Lnow;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lnpc;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lnpc;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lnoz;

    invoke-direct {v0, p0}, Lnoz;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static q()Lnow;
    .locals 1

    new-instance v0, Lnoy;

    invoke-direct {v0}, Lnoy;-><init>()V

    return-object v0
.end method

.method public static r(Ljava/util/concurrent/ScheduledExecutorService;)Lnox;
    .locals 1

    instance-of v0, p0, Lnox;

    if-eqz v0, :cond_0

    check-cast p0, Lnox;

    goto :goto_0

    :cond_0
    new-instance v0, Lnpc;

    invoke-direct {v0, p0}, Lnpc;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lnpg;

    invoke-direct {v0, p0}, Lnpg;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static t(Ljava/util/concurrent/Executor;Lnnb;)Ljava/util/concurrent/Executor;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lnnv;->a:Lnnv;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lkxf;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lkxf;-><init>(Ljava/util/concurrent/Executor;Lnnb;I)V

    return-object v0
.end method

.method public static u(Ljava/lang/Iterable;)Lnom;
    .locals 2

    new-instance v0, Lnom;

    const/4 v1, 0x0

    invoke-static {p0}, Lmvv;->i(Ljava/lang/Iterable;)Lmvv;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnom;-><init>(ZLmvv;)V

    return-object v0
.end method

.method public static varargs v([Lnou;)Lnom;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lnom;

    const/4 v1, 0x0

    invoke-static {p0}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnom;-><init>(ZLmvv;)V

    return-object v0
.end method

.method public static w(Ljava/lang/Iterable;)Lnom;
    .locals 2

    new-instance v0, Lnom;

    const/4 v1, 0x1

    invoke-static {p0}, Lmvv;->i(Ljava/lang/Iterable;)Lmvv;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnom;-><init>(ZLmvv;)V

    return-object v0
.end method

.method public static x(Ljava/lang/Iterable;)Lnou;
    .locals 2

    new-instance v0, Lnnq;

    invoke-static {p0}, Lmvv;->i(Ljava/lang/Iterable;)Lmvv;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lnnq;-><init>(Lmvm;Z)V

    return-object v0
.end method

.method public static varargs y([Lnou;)Lnou;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lnnq;

    invoke-static {p0}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lnnq;-><init>(Lmvm;Z)V

    return-object v0
.end method

.method public static z()Lnou;
    .locals 1

    sget-object v0, Lnop;->a:Lnop;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnop;

    invoke-direct {v0}, Lnop;-><init>()V

    return-object v0
.end method
