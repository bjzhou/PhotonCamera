.class public abstract Lnws;
.super Lnve;


# static fields
.field public static final aH:Ljava/util/Map;


# instance fields
.field public aI:I

.field public aJ:Lnza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnws;->aH:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnve;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnws;->aI:I

    sget-object v0, Lnza;->a:Lnza;

    iput-object v0, p0, Lnws;->aJ:Lnza;

    return-void
.end method

.method public static Q(Lnws;[BIILnwh;)Lnws;
    .locals 7

    invoke-virtual {p0}, Lnws;->P()Lnws;

    move-result-object p0

    :try_start_0
    sget-object v0, Lnyh;->a:Lnyh;

    invoke-virtual {v0, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v6

    add-int v4, p2, p3

    new-instance v5, Lnvj;

    invoke-direct {v5, p4}, Lnvj;-><init>(Lnwh;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lnyo;->i(Ljava/lang/Object;[BIILnvj;)V

    invoke-interface {v6, p0}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnyz; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lnxd;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnxd;

    throw p0

    :cond_0
    new-instance p1, Lnxd;

    invoke-direct {p1, p0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lnyz;->a()Lnxd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    iget-boolean p1, p0, Lnxd;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, Lnxd;

    invoke-direct {p1, p0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    throw p0
.end method

.method public static R(Lnwx;)Lnwx;
    .locals 1

    invoke-interface {p0}, Lnwx;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lnwx;->f(I)Lnwx;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lnwy;)Lnwy;
    .locals 1

    invoke-interface {p0}, Lnwy;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lnwy;->f(I)Lnwy;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lnwz;)Lnwz;
    .locals 1

    invoke-interface {p0}, Lnwz;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lnwz;->d(I)Lnwz;

    move-result-object p0

    return-object p0
.end method

.method public static U(Lnxa;)Lnxa;
    .locals 1

    invoke-interface {p0}, Lnxa;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lnxa;->e(I)Lnxa;

    move-result-object p0

    return-object p0
.end method

.method static varargs W(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lnyj;

    invoke-direct {v0, p0, p1, p2}, Lnyj;-><init>(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static aa(Ljava/lang/Class;Lnws;)V
    .locals 1

    invoke-virtual {p1}, Lnws;->Z()V

    sget-object v0, Lnws;->aH:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final ab(Lnws;Z)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v1, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v1

    invoke-interface {v1, p0}, Lnyo;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p1, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lnws;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public static ae(Lnws;)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnws;->cH()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnws;->K()Lnyz;

    move-result-object p0

    invoke-virtual {p0}, Lnyz;->a()Lnxd;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static af(Lnxy;Ljava/lang/Object;Lnxy;ILnzl;)Llhj;
    .locals 2

    new-instance v0, Llhj;

    new-instance v1, Lnwr;

    invoke-direct {v1, p3, p4}, Lnwr;-><init>(ILnzl;)V

    invoke-direct {v0, p0, p1, p2, v1}, Llhj;-><init>(Lnxy;Ljava/lang/Object;Lnxy;Lnwr;)V

    return-object v0
.end method


# virtual methods
.method public final G(Lnyo;)I
    .locals 3

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnws;->M(Lnyo;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lnws;->aI:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lnws;->M(Lnyo;)I

    move-result p1

    if-ltz p1, :cond_3

    iget v0, p0, Lnws;->aI:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lnws;->aI:I

    return p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()I
    .locals 1

    sget-object v0, Lnyh;->a:Lnyh;

    invoke-virtual {v0, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v0

    invoke-interface {v0, p0}, Lnyo;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final M(Lnyo;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lnyh;->a:Lnyh;

    invoke-virtual {p1, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object p1

    invoke-interface {p1, p0}, Lnyo;->a(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1, p0}, Lnyo;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final N()I
    .locals 4

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lnws;->M(Lnyo;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v0, p0, Lnws;->aI:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lnws;->M(Lnyo;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Lnws;->aI:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lnws;->aI:I

    :goto_0
    return v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final O()Lnwn;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    return-object v0
.end method

.method public final P()Lnws;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnws;

    return-object v0
.end method

.method public final V()Lnyf;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnyf;

    return-object v0
.end method

.method protected final Y()V
    .locals 1

    sget-object v0, Lnyh;->a:Lnyh;

    invoke-virtual {v0, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v0

    invoke-interface {v0, p0}, Lnyo;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnws;->Z()V

    return-void
.end method

.method final Z()V
    .locals 2

    iget v0, p0, Lnws;->aI:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lnws;->aI:I

    return-void
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final ac()Z
    .locals 2

    iget v0, p0, Lnws;->aI:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ad(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnws;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic bo()Lnxx;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    return-object v0
.end method

.method public final synthetic cF()Lnxy;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnws;

    return-object v0
.end method

.method public final cG(Lnwd;)V
    .locals 2

    sget-object v0, Lnyh;->a:Lnyh;

    invoke-virtual {v0, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v0

    iget-object v1, p1, Lnwd;->f:Llzz;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Llzz;

    invoke-direct {v1, p1}, Llzz;-><init>(Lnwd;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lnyo;->l(Ljava/lang/Object;Llzz;)V

    return-void
.end method

.method public final cH()Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lnws;->ab(Lnws;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic ct()Lnxx;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    invoke-virtual {v0, p0}, Lnwn;->s(Lnws;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    sget-object v0, Lnyh;->a:Lnyh;

    invoke-virtual {v0, p0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v0

    check-cast p1, Lnws;

    invoke-interface {v0, p0, p1}, Lnyo;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lnws;->aG:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnws;->L()I

    move-result v0

    iput v0, p0, Lnws;->aG:I

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnws;->L()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lnya;->b(Lnxy;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
