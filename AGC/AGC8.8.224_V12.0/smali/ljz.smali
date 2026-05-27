.class public Lljz;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:J

.field private static b:Lmmb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Lomo;Ljava/lang/Object;Loku;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lolp;->f(Lomo;Ljava/lang/Object;Loku;)Loku;

    move-result-object p0

    invoke-static {p0}, Lolp;->g(Loku;)Loku;

    move-result-object p0

    sget-object p1, Lojk;->a:Lojk;

    invoke-static {p0, p1}, Lowi;->a(Loku;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Loku;->e(Ljava/lang/Object;)V

    throw p0
.end method

.method public static B(Ljava/lang/String;III)I
    .locals 7

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lljz;->C(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static C(Ljava/lang/String;JJJ)J
    .locals 4

    invoke-static {p0}, Loxc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-static {v0}, Lolp;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "\'"

    const-string v1, "System property \'"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-gtz p1, :cond_1

    cmp-long p1, v2, p5

    if-gtz p1, :cond_1

    return-wide v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but is \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static D(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0}, Loxc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static synthetic E(Ljava/lang/String;IIII)I
    .locals 2

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    xor-int/2addr v0, v1

    or-int/2addr p2, v0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lljz;->B(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static synthetic F(Ljava/lang/String;J)J
    .locals 7

    const-wide/16 v3, 0x1

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lljz;->C(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static G(JJ)J
    .locals 2

    const-wide/16 v0, -0x1

    xor-long/2addr p2, v0

    and-long/2addr p0, p2

    return-wide p0
.end method

.method public static H(JI)J
    .locals 2

    const-wide/32 v0, 0x3fffffff

    invoke-static {p0, p1, v0, v1}, Lljz;->G(JJ)J

    move-result-wide p0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static I(Lnou;Loku;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnsy;->n(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    new-instance v0, Lopa;

    invoke-static {p1}, Lolp;->g(Loku;)Loku;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v0}, Lopa;->x()V

    new-instance p1, Lbdy;

    const/4 v1, 0x7

    invoke-direct {p1, p0, v0, v1}, Lbdy;-><init>(Lnou;Looz;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p0, p1, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lawq;

    const/16 v1, 0x9

    invoke-direct {p1, p0, v1}, Lawq;-><init>(Lnou;I)V

    invoke-interface {v0, p1}, Looz;->a(Lomk;)V

    invoke-virtual {v0}, Lopa;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lljz;->J(Ljava/util/concurrent/ExecutionException;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static J(Ljava/util/concurrent/ExecutionException;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static K(Ljava/util/concurrent/Executor;Lva;Ljava/util/HashMap;Llsz;)Llij;
    .locals 9

    new-instance v8, Llij;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Llij;-><init>(Ljava/util/concurrent/Executor;Lva;Llsz;Ljava/util/Map;[B[B[B)V

    return-object v8
.end method

.method public static a(Loyx;J)Loyx;
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    invoke-virtual {v0, p0}, Lnwn;->s(Lnws;)V

    iget-object p0, v0, Lnwn;->b:Lnws;

    move-object v1, p0

    check-cast v1, Loyx;

    iget v2, v1, Loyx;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-wide v1, v1, Loyx;->c:J

    sub-long/2addr v1, p1

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Loyx;

    iget v3, p0, Loyx;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Loyx;->a:I

    iput-wide v1, p0, Loyx;->c:J

    :cond_1
    iget-object p0, v0, Lnwn;->b:Lnws;

    move-object v1, p0

    check-cast v1, Loyx;

    iget v2, v1, Loyx;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-wide v1, v1, Loyx;->d:J

    sub-long/2addr v1, p1

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Loyx;

    iget v3, p0, Loyx;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Loyx;->a:I

    iput-wide v1, p0, Loyx;->d:J

    :cond_3
    iget-object p0, v0, Lnwn;->b:Lnws;

    move-object v1, p0

    check-cast v1, Loyx;

    iget v2, v1, Loyx;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    iget-wide v1, v1, Loyx;->e:J

    sub-long/2addr v1, p1

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Loyx;

    iget p1, p0, Loyx;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Loyx;->a:I

    iput-wide v1, p0, Loyx;->e:J

    :cond_5
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Loyx;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static c(Llsv;Ljava/util/HashMap;)V
    .locals 3

    const-string v0, "singleproc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "There is already a factory registered for the ID %s"

    invoke-static {v1, v2, v0}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs e(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Llrn;

    const-string v0, "Did not expect uri to have authority"

    invoke-direct {p0, v0}, Llrn;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Llrn;

    const-string v0, "Did not expect uri to have query"

    invoke-direct {p0, v0}, Llrn;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Llrn;

    const-string v0, "Scheme must be \'file\'"

    invoke-direct {p0, v0}, Llrn;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lott;ILomo;)Lott;
    .locals 2

    if-lez p1, :cond_0

    new-instance v0, Lmok;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lmok;-><init>(ILott;Lomo;Loku;)V

    invoke-static {v0}, Lone;->u(Lomo;)Lott;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "concurrency must be at least 1 but was "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(Ljava/lang/String;)Lmnm;
    .locals 6

    sget-object v0, Lmnn;->a:Lmno;

    sget-object v1, Lmoc;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmob;

    iget-object v2, v1, Lmob;->b:Ljava/lang/Object;

    sget-object v3, Lmnl;->a:Lmnl;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Lmnk;

    invoke-direct {v2, p0, v0}, Lmnk;-><init>(Ljava/lang/String;Lmno;)V

    goto :goto_1

    :cond_1
    instance-of v5, v2, Lmnf;

    if-eqz v5, :cond_2

    check-cast v2, Lmnf;

    invoke-interface {v2, p0, v0, v4}, Lmnf;->d(Ljava/lang/String;Lmno;Z)Lmnt;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-interface {v2, p0, v0}, Lmnt;->g(Ljava/lang/String;Lmno;)Lmnt;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    new-instance p0, Lmnm;

    invoke-direct {p0, v2, v3}, Lmnm;-><init>(Lmnt;Z)V

    return-object p0
.end method

.method public static synthetic i(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public static j([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "update.precondition.failures:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized m(Landroid/content/Context;)Lmmb;
    .locals 3

    const-class v0, Lljz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lljz;->b:Lmmb;

    if-nez v1, :cond_0

    new-instance v1, Llyd;

    invoke-static {p0}, Lljz;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Llyd;-><init>(Landroid/content/Context;)V

    new-instance p0, Lmmb;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmmb;-><init>(Llyd;[B)V

    sput-object p0, Lljz;->b:Lmmb;

    :cond_0
    sget-object p0, Lljz;->b:Lmmb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static n(Lpah;I)I
    .locals 5

    iget-object v0, p0, Lpah;->f:[I

    iget-object p0, p0, Lpah;->e:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int/lit8 v2, p1, 0x1

    add-int v3, v1, p0

    ushr-int/lit8 v3, v3, 0x1

    aget v4, v0, v3

    if-ge v4, v2, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    if-le v4, v2, :cond_2

    add-int/lit8 p0, v3, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v3, p0, -0x1

    :cond_2
    if-ltz v3, :cond_3

    return v3

    :cond_3
    xor-int/lit8 p0, v3, -0x1

    return p0
.end method

.method public static o(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p([BI[BII)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    add-int v3, v1, p3

    aget-byte v2, p0, v2

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static q(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Looj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static s(Lozw;)J
    .locals 4

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static t(Lpai;)Lozy;
    .locals 1

    new-instance v0, Lpae;

    invoke-direct {v0, p0}, Lpae;-><init>(Lpai;)V

    return-object v0
.end method

.method public static u(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(I)I
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

.method public static w(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

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

.method public static x(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_c
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_e
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y(Ljot;Loku;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljot;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljot;->b()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, p0

    check-cast p1, Ljox;

    iget-boolean p1, p1, Ljox;->c:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljot;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled normally."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw p1

    :cond_2
    new-instance v0, Lopa;

    invoke-static {p1}, Lolp;->g(Loku;)Loku;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v0}, Lopa;->x()V

    sget-object p1, Lcan;->a:Lcan;

    new-instance v1, Loxx;

    invoke-direct {v1, v0}, Loxx;-><init>(Looz;)V

    invoke-virtual {p0, p1, v1}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    invoke-virtual {v0}, Lopa;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static z(Lowy;Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Lonm;->b(Ljava/lang/Object;I)V

    invoke-interface {p2, p1, p0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lopi;

    invoke-direct {p2, p1}, Lopi;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lori;->de(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorj;->b:Loxb;

    if-ne p1, p2, :cond_1

    sget-object p2, Lolc;->a:Lolc;

    goto :goto_2

    :cond_1
    instance-of p2, p1, Lopi;

    if-eqz p2, :cond_4

    check-cast p1, Lopi;

    iget-object p1, p1, Lopi;->b:Ljava/lang/Throwable;

    iget-object p0, p0, Lowy;->e:Loku;

    sget-boolean p2, Lopw;->b:Z

    if-eqz p2, :cond_3

    instance-of p2, p0, Loli;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, p0}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    throw p1

    :cond_4
    invoke-static {p1}, Lorj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_2
    return-object p2
.end method


# virtual methods
.method public final r(JLozw;ILjava/util/List;IILjava/util/List;)V
    .locals 18

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v11, p5

    move/from16 v2, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    const-string v3, "Failed requirement."

    if-ge v2, v12, :cond_11

    move v4, v2

    :goto_0
    if-ge v4, v12, :cond_1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lozz;

    invoke-virtual {v5}, Lozz;->b()I

    move-result v5

    if-lt v5, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lozz;

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lozz;

    invoke-virtual {v3}, Lozz;->b()I

    move-result v5

    if-ne v1, v5, :cond_2

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lozz;

    move v7, v2

    move-object/from16 v17, v5

    move v5, v3

    move-object/from16 v3, v17

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    move v7, v2

    :goto_1
    invoke-virtual {v3, v1}, Lozz;->a(I)B

    move-result v2

    invoke-virtual {v4, v1}, Lozz;->a(I)B

    move-result v6

    const-wide/16 v8, 0x2

    if-eq v2, v6, :cond_c

    add-int/lit8 v2, v7, 0x1

    const/4 v3, 0x1

    :goto_2
    if-ge v2, v12, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lozz;

    invoke-virtual {v4, v1}, Lozz;->a(I)B

    move-result v4

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lozz;

    invoke-virtual {v6, v1}, Lozz;->a(I)B

    move-result v6

    if-eq v4, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static/range {p3 .. p3}, Lljz;->s(Lozw;)J

    move-result-wide v14

    add-long v14, p1, v14

    add-long/2addr v14, v8

    add-int v10, v3, v3

    invoke-virtual {v0, v3}, Lozw;->r(I)V

    invoke-virtual {v0, v5}, Lozw;->r(I)V

    move v2, v7

    :goto_3
    if-ge v2, v12, :cond_7

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lozz;

    invoke-virtual {v3, v1}, Lozz;->a(I)B

    move-result v3

    if-eq v2, v7, :cond_5

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lozz;

    invoke-virtual {v4, v1}, Lozz;->a(I)B

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_5
    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lozw;->r(I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    new-instance v9, Lozw;

    invoke-direct {v9}, Lozw;-><init>()V

    move v8, v7

    :goto_4
    if-ge v8, v12, :cond_b

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lozz;

    invoke-virtual {v2, v1}, Lozz;->a(I)B

    move-result v2

    add-int/lit8 v3, v8, 0x1

    move v4, v3

    :goto_5
    if-ge v4, v12, :cond_9

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lozz;

    invoke-virtual {v5, v1}, Lozz;->a(I)B

    move-result v5

    if-eq v2, v5, :cond_8

    move v7, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    move v7, v12

    :goto_6
    if-ne v3, v7, :cond_a

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lozz;

    invoke-virtual {v3}, Lozz;->b()I

    move-result v3

    if-ne v2, v3, :cond_a

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lozw;->r(I)V

    move/from16 v16, v7

    move-wide/from16 p1, v14

    move-object v14, v9

    move v15, v10

    goto :goto_7

    :cond_a
    int-to-long v2, v10

    add-long v4, v14, v2

    invoke-static {v9}, Lljz;->s(Lozw;)J

    move-result-wide v2

    add-long/2addr v2, v4

    long-to-int v3, v2

    neg-int v2, v3

    invoke-virtual {v0, v2}, Lozw;->r(I)V

    add-int/lit8 v6, v1, 0x1

    move-object/from16 v2, p0

    move-wide v3, v4

    move-object v5, v9

    move/from16 v16, v7

    move-object/from16 v7, p5

    move-wide/from16 p1, v14

    move-object v14, v9

    move/from16 v9, v16

    move v15, v10

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lljz;->r(JLozw;ILjava/util/List;IILjava/util/List;)V

    :goto_7
    move-object v9, v14

    move v10, v15

    move/from16 v8, v16

    move-wide/from16 v14, p1

    goto :goto_4

    :cond_b
    move-object v14, v9

    invoke-virtual {v0, v14}, Lozw;->o(Lpai;)V

    return-void

    :cond_c
    invoke-virtual {v3}, Lozz;->b()I

    move-result v2

    invoke-virtual {v4}, Lozz;->b()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x0

    move v10, v1

    :goto_8
    if-ge v10, v2, :cond_d

    invoke-virtual {v3, v10}, Lozz;->a(I)B

    move-result v14

    invoke-virtual {v4, v10}, Lozz;->a(I)B

    move-result v15

    if-ne v14, v15, :cond_d

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    invoke-static/range {p3 .. p3}, Lljz;->s(Lozw;)J

    move-result-wide v14

    add-long v14, p1, v14

    add-long/2addr v14, v8

    int-to-long v8, v6

    neg-int v2, v6

    invoke-virtual {v0, v2}, Lozw;->r(I)V

    invoke-virtual {v0, v5}, Lozw;->r(I)V

    add-int v5, v1, v6

    :goto_9
    if-ge v1, v5, :cond_e

    invoke-virtual {v3, v1}, Lozz;->a(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lozw;->r(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v1, v7, 0x1

    if-ne v1, v12, :cond_10

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lozz;

    invoke-virtual {v1}, Lozz;->b()I

    move-result v1

    if-ne v5, v1, :cond_f

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lozw;->r(I)V

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    add-long/2addr v14, v8

    const-wide/16 v1, 0x1

    add-long v3, v14, v1

    new-instance v10, Lozw;

    invoke-direct {v10}, Lozw;-><init>()V

    invoke-static {v10}, Lljz;->s(Lozw;)J

    move-result-wide v1

    add-long/2addr v1, v3

    long-to-int v2, v1

    neg-int v1, v2

    invoke-virtual {v0, v1}, Lozw;->r(I)V

    move-object/from16 v1, p0

    move-wide v2, v3

    move-object v4, v10

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lljz;->r(JLozw;ILjava/util/List;IILjava/util/List;)V

    invoke-virtual {v0, v10}, Lozw;->o(Lpai;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method
