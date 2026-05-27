.class public abstract Lnaq;
.super Ljava/lang/Object;

# interfaces
.implements Lnaz;
.implements Lnbp;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public final b:J

.field public c:Lnap;

.field private final d:Ljava/util/logging/Level;

.field private e:Lnat;

.field private f:Lncp;

.field private g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lnaq;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;)V
    .locals 3

    invoke-static {}, Lncn;->b()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lnaq;->c:Lnap;

    iput-object v2, p0, Lnaq;->e:Lnat;

    iput-object v2, p0, Lnaq;->f:Lncp;

    iput-object v2, p0, Lnaq;->g:[Ljava/lang/Object;

    const-string v2, "level"

    invoke-static {p1, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lnaq;->d:Ljava/util/logging/Level;

    iput-wide v0, p0, Lnaq;->b:J

    return-void
.end method

.method private final varargs K(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    iput-object p2, p0, Lnaq;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    instance-of v3, v2, Lnal;

    if-eqz v3, :cond_0

    check-cast v2, Lnal;

    invoke-interface {v2}, Lnal;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lnaq;->a:Ljava/lang/String;

    if-eq p1, p2, :cond_2

    new-instance p2, Lncp;

    invoke-virtual {p0}, Lnaq;->a()Lndu;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lncp;-><init>(Lndu;Ljava/lang/String;)V

    iput-object p2, p0, Lnaq;->f:Lncp;

    :cond_2
    invoke-static {}, Lncn;->k()Lndl;

    move-result-object p1

    invoke-virtual {p1}, Lndl;->a()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lnaq;->j()Lnbu;

    move-result-object p2

    sget-object v1, Lnao;->f:Lnbc;

    invoke-virtual {p2, v1}, Lnbu;->d(Lnbc;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lndl;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lndl;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lndl;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, p2

    goto :goto_1

    :cond_3
    new-instance v1, Lndl;

    new-instance v2, Lndj;

    iget-object p1, p1, Lndl;->c:Lndj;

    iget-object p2, p2, Lndl;->c:Lndj;

    invoke-direct {v2, p1, p2}, Lndj;-><init>(Lndj;Lndj;)V

    invoke-direct {v1, v2}, Lndl;-><init>(Lndj;)V

    move-object p1, v1

    :cond_4
    :goto_1
    sget-object p2, Lnao;->f:Lnbc;

    invoke-virtual {p0, p2, p1}, Lnaq;->n(Lnbc;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lnaq;->c()Lnaf;

    move-result-object p1

    :try_start_0
    sget-object p2, Lndz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lndz;

    iget v1, p2, Lndz;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p2, Lndz;->b:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_9

    const/16 v3, 0x64

    if-gt v1, v3, :cond_6

    :try_start_1
    iget-object v1, p1, Lnaf;->a:Lnbq;

    invoke-virtual {v1, p0}, Lnbq;->c(Lnbp;)V

    goto :goto_2

    :cond_6
    const-string v1, "unbounded recursion in log statement"

    invoke-static {v1, p0}, Lnaf;->e(Ljava/lang/String;Lnbp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p2, :cond_7

    :try_start_2
    invoke-virtual {p2}, Lndz;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    return-void

    :catchall_0
    move-exception v1

    if-eqz p2, :cond_8

    :try_start_3
    invoke-virtual {p2}, Lndz;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_4
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    :cond_8
    :goto_3
    :try_start_5
    throw v1

    :cond_9
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Overflow of RecursionDepth (possible error in core library)"

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p2

    :try_start_6
    iget-object p1, p1, Lnaf;->a:Lnbq;

    invoke-virtual {p1, p2, p0}, Lnbq;->b(Ljava/lang/RuntimeException;Lnbp;)V
    :try_end_6
    .catch Lnbr; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lnaf;->e(Ljava/lang/String;Lnbp;)V

    :try_start_7
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception p1

    return-void

    :catch_4
    move-exception p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final L()Z
    .locals 6

    iget-object v0, p0, Lnaq;->e:Lnat;

    if-nez v0, :cond_0

    invoke-static {}, Lncn;->g()Lncm;

    move-result-object v0

    const-class v1, Lnaq;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lncm;->a(Ljava/lang/Class;I)Lnat;

    move-result-object v0

    iput-object v0, p0, Lnaq;->e:Lnat;

    :cond_0
    iget-object v0, p0, Lnaq;->e:Lnat;

    sget-object v1, Lnat;->a:Lnat;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lnaq;->c:Lnap;

    if-eqz v1, :cond_4

    iget v2, v1, Lnap;->b:I

    if-lez v2, :cond_4

    const-string v2, "logSiteKey"

    invoke-static {v0, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Lnap;->b:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    sget-object v4, Lnao;->d:Lnbc;

    invoke-virtual {v1, v3}, Lnbu;->c(I)Lnbc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnbc;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lnbu;->e(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lnba;

    if-eqz v5, :cond_1

    check-cast v4, Lnba;

    invoke-virtual {v4}, Lnba;->b()Lnau;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v5, Lnbd;

    invoke-direct {v5, v0, v4}, Lnbd;-><init>(Lnau;Ljava/lang/Object;)V

    move-object v0, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Lnaq;->b(Lnau;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final E()Z
    .locals 3

    iget-object v0, p0, Lnaq;->c:Lnap;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lnaq;->c:Lnap;

    sget-object v2, Lnao;->e:Lnbc;

    invoke-virtual {v1, v2}, Lnap;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnaq;->f:Lncp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnaq;->g:[Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get arguments unless a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G(I)Lnaz;
    .locals 1

    new-instance v0, Lnas;

    invoke-direct {v0, p1}, Lnas;-><init>(I)V

    iget-object p1, p0, Lnaq;->e:Lnat;

    if-nez p1, :cond_0

    iput-object v0, p0, Lnaq;->e:Lnat;

    :cond_0
    invoke-virtual {p0}, Lnaq;->d()Lnaz;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/util/concurrent/TimeUnit;)Lnaz;
    .locals 2

    invoke-virtual {p0}, Lnaq;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnaq;->d()Lnaz;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lnao;->c:Lnbc;

    new-instance v1, Lnaw;

    invoke-direct {v1, p1}, Lnaw;-><init>(Ljava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, v0, v1}, Lnaq;->n(Lnbc;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnaq;->d()Lnaz;

    move-result-object p1

    return-object p1
.end method

.method public final I(FF)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

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

    const-string p1, "Avoiding b/115930193, modeListWidth=%g myWidth=%g"

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final J(FLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Focal length needed = %g / available: %s"

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected abstract a()Lndu;
.end method

.method protected b(Lnau;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract c()Lnaf;
.end method

.method protected abstract d()Lnaz;
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lnaq;->b:J

    return-wide v0
.end method

.method public final f()Lnat;
    .locals 2

    iget-object v0, p0, Lnaq;->e:Lnat;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lnbc;Ljava/lang/Object;)Lnaz;
    .locals 1

    const-string v0, "metadata key"

    invoke-static {p1, v0}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lnaq;->n(Lnbc;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lnaq;->d()Lnaz;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Throwable;)Lnaz;
    .locals 1

    sget-object v0, Lnao;->a:Lnbc;

    invoke-virtual {p0, v0, p1}, Lnaq;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lnbe;)Lnaz;
    .locals 1

    const-string v0, "stack size"

    invoke-static {p1, v0}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnbe;->e:Lnbe;

    if-eq p1, v0, :cond_0

    sget-object v0, Lnao;->g:Lnbc;

    invoke-virtual {p0, v0, p1}, Lnaq;->n(Lnbc;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lnaq;->d()Lnaz;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lnbu;
    .locals 1

    iget-object v0, p0, Lnaq;->c:Lnap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lnbt;->a:Lnbt;

    return-object v0
.end method

.method public final k()Lncp;
    .locals 1

    iget-object v0, p0, Lnaq;->f:Lncp;

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnaq;->f:Lncp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnaq;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get literal argument if a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lnaq;->d:Ljava/util/logging/Level;

    return-object v0
.end method

.method protected final n(Lnbc;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lnaq;->c:Lnap;

    if-nez v0, :cond_0

    new-instance v0, Lnap;

    invoke-direct {v0}, Lnap;-><init>()V

    iput-object v0, p0, Lnaq;->c:Lnap;

    :cond_0
    iget-object v0, p0, Lnaq;->c:Lnap;

    iget-boolean v1, p1, Lnbc;->b:Z

    const-string v2, "metadata value"

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lnap;->a(Lnbc;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnap;->a:[Ljava/lang/Object;

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, p1, v1

    return-void

    :cond_2
    :goto_0
    iget v1, v0, Lnap;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v0, Lnap;->a:[Ljava/lang/Object;

    array-length v4, v3

    add-int/2addr v1, v1

    if-le v1, v4, :cond_3

    add-int/2addr v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lnap;->a:[Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Lnap;->a:[Ljava/lang/Object;

    iget v3, v0, Lnap;->b:I

    add-int/2addr v3, v3

    const-string v4, "metadata key"

    invoke-static {p1, v4}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v1, v3

    iget-object p1, v0, Lnap;->a:[Ljava/lang/Object;

    iget v1, v0, Lnap;->b:I

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, p1, v1

    iget p1, v0, Lnap;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lnap;->b:I

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnaq;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/String;IJ)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final u(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;JJ)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lnaq;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lnaq;->K(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
