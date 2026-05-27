.class public Lone;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lateinit property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has not been initialized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lojj;

    invoke-direct {v0, p0}, Lojj;-><init>(Ljava/lang/String;)V

    const-class p0, Lone;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lone;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method static d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_1

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v4

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static e(Lonx;)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lomz;

    invoke-interface {p0}, Lomz;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Short;

    return-object p0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Float;

    return-object p0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Void;

    return-object p0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Long;

    return-object p0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Character;

    return-object p0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Double;

    :cond_1
    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
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

.method public static g(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v1, v2, v3}, Lolp;->v(Ljava/lang/CharSequence;CII)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v1, v4, :cond_1

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/4 v4, 0x2

    invoke-static {p1, v1, v4, v3}, Lolp;->v(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v1, v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-static {p1, v4, v1, v3}, Lolp;->v(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    const/16 v3, 0x3a

    if-lez v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-static {p1, v3}, Lolp;->t(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    goto :goto_1

    :cond_6
    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-static {p0, p1}, Lolp;->t(Ljava/lang/CharSequence;C)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v0, p1

    :goto_3
    return-object v0
.end method

.method public static h(Lola;Lomo;Loku;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lopp;->d(Lola;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lola;->plus(Lola;)Lola;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, Lopp;->a(Lola;Lola;Z)Lola;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lolp;->S(Lola;)V

    if-ne p0, v0, :cond_1

    new-instance v0, Lowy;

    invoke-direct {v0, p0, p2}, Lowy;-><init>(Lola;Loku;)V

    invoke-static {v0, v0, p1}, Lljz;->z(Lowy;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v1, Lokw;->a:Lokv;

    invoke-interface {p0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    sget-object v3, Lokw;->a:Lokv;

    invoke-interface {v0, v3}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    invoke-static {v1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorz;

    invoke-direct {v0, p0, p2}, Lorz;-><init>(Lola;Loku;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, Lljz;->z(Lowy;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Loxd;->c(Lola;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Loxd;->c(Lola;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, Loqc;

    invoke-direct {v0, p0, p2}, Loqc;-><init>(Lola;Loku;)V

    invoke-static {p1, v0, v0}, Lljz;->A(Lomo;Ljava/lang/Object;Loku;)V

    iget-object p0, v0, Loqc;->b:Loon;

    :cond_3
    iget p1, p0, Loon;->b:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {v0}, Lori;->dd()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lopi;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, Lopi;

    iget-object p0, p0, Lopi;->b:Ljava/lang/Throwable;

    throw p0

    :pswitch_2
    iget-object p1, v0, Loqc;->b:Loon;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Loon;->c(II)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lolc;->a:Lolc;

    :goto_1
    sget-object p1, Lolc;->a:Lolc;

    if-ne p0, p1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static i(Lola;Lomo;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lokw;->a:Lokv;

    invoke-interface {p0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    check-cast v1, Lokw;

    if-nez v1, :cond_0

    sget-object v1, Loru;->a:Ljava/lang/ThreadLocal;

    invoke-static {}, Loru;->a()Loql;

    move-result-object v1

    sget-object v2, Loqu;->a:Loqu;

    invoke-interface {p0, v1}, Lola;->plus(Lola;)Lola;

    move-result-object p0

    invoke-static {v2, p0}, Lopp;->b(Lopu;Lola;)Lola;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v2, v1, Loql;

    if-eqz v2, :cond_1

    check-cast v1, Loql;

    :cond_1
    sget-object v1, Loru;->a:Ljava/lang/ThreadLocal;

    sget-object v1, Loru;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loql;

    sget-object v2, Loqu;->a:Loqu;

    invoke-static {v2, p0}, Lopp;->b(Lopu;Lola;)Lola;

    move-result-object p0

    :goto_0
    new-instance v2, Loou;

    invoke-direct {v2, p0, v0, v1}, Loou;-><init>(Lola;Ljava/lang/Thread;Loql;)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0, v2, p1}, Loor;->dc(ILjava/lang/Object;Lomo;)V

    :try_start_0
    iget-object p0, v2, Loou;->b:Loql;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Loql;->r(Loql;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_8

    iget-object p0, v2, Loou;->b:Loql;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Loql;->j()J

    move-result-wide p0

    goto :goto_2

    :cond_3
    const-wide p0, 0x7fffffffffffffffL

    :goto_2
    invoke-virtual {v2}, Lori;->H()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v2, p0, p1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object p0, v2, Loou;->b:Loql;

    if-eqz p0, :cond_5

    invoke-static {p0}, Loql;->q(Loql;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    invoke-virtual {v2}, Lori;->dd()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lopi;

    if-eqz p1, :cond_6

    move-object p1, p0

    check-cast p1, Lopi;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_7

    return-object p0

    :cond_7
    iget-object p0, p1, Lopi;->b:Ljava/lang/Throwable;

    throw p0

    :cond_8
    :try_start_3
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v2, p0}, Lori;->E(Ljava/lang/Object;)Z

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_4
    iget-object p1, v2, Loou;->b:Loql;

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {p1}, Loql;->q(Loql;)V

    :goto_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static synthetic j(Lopu;Lola;Lomo;I)Lora;
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    sget-object p1, Lolb;->a:Lolb;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lopp;->b(Lopu;Lola;)Lola;

    move-result-object p0

    new-instance p1, Lorr;

    invoke-direct {p1, p0}, Lorr;-><init>(Lola;)V

    invoke-virtual {p1, v0, p1, p2}, Loor;->dc(ILjava/lang/Object;Lomo;)V

    return-object p1
.end method

.method public static synthetic k(Lomo;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolb;->a:Lolb;

    invoke-static {v0, p0}, Lone;->i(Lola;Lomo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lola;Ljava/lang/Object;Ljava/lang/Object;Lomo;Loku;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p2}, Loxd;->b(Lola;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Lovu;

    invoke-direct {v0, p4, p0}, Lovu;-><init>(Loku;Lola;)V

    const/4 p4, 0x2

    invoke-static {p3, p4}, Lonm;->b(Ljava/lang/Object;I)V

    invoke-interface {p3, p1, v0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Loxd;->c(Lola;Ljava/lang/Object;)V

    sget-object p0, Lolc;->a:Lolc;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Loxd;->c(Lola;Ljava/lang/Object;)V

    throw p1
.end method

.method public static m(Lott;Lomo;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Loul;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Loul;

    iget v1, v0, Loul;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Loul;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Loul;

    invoke-direct {v0, p2}, Loul;-><init>(Loku;)V

    :goto_0
    iget-object p2, v0, Loul;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Loul;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Loul;->e:Lmcc;

    iget-object p1, v0, Loul;->d:Lonk;

    iget-object v0, v0, Loul;->c:Lomo;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catch Lovc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p2, Lonk;

    invoke-direct {p2}, Lonk;-><init>()V

    sget-object v2, Lovo;->a:Loxb;

    iput-object v2, p2, Lonk;->a:Ljava/lang/Object;

    new-instance v2, Lmcc;

    const/4 v3, 0x3

    invoke-direct {v2, p1, p2, v3}, Lmcc;-><init>(Lomo;Lonk;I)V

    :try_start_1
    iput-object p1, v0, Loul;->c:Lomo;

    iput-object p2, v0, Loul;->d:Lonk;

    iput-object v2, v0, Loul;->e:Lmcc;

    const/4 v3, 0x1

    iput v3, v0, Loul;->b:I

    invoke-interface {p0, v2, v0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lovc; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p0, v1, :cond_1

    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :cond_1
    return-object v1

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lovc;->a:Lotu;

    if-ne v1, p0, :cond_3

    :goto_2
    iget-object p0, p1, Lonk;->a:Ljava/lang/Object;

    sget-object p1, Lovo;->a:Loxb;

    if-eq p0, p1, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected at least one element matching the predicate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Lott;Lotu;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Louh;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Louh;

    iget v1, v0, Louh;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Louh;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Louh;

    invoke-direct {v0, p2}, Louh;-><init>(Loku;)V

    :goto_0
    iget-object p2, v0, Louh;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Louh;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Louh;->c:Lonk;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p2, Lonk;

    invoke-direct {p2}, Lonk;-><init>()V

    :try_start_1
    new-instance v2, Lmcc;

    const/4 v3, 0x2

    invoke-direct {v2, p1, p2, v3}, Lmcc;-><init>(Lotu;Lonk;I)V

    iput-object p2, v0, Louh;->c:Lonk;

    const/4 p1, 0x1

    iput p1, v0, Louh;->b:I

    invoke-interface {p0, v2, v0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    :goto_2
    iget-object p0, p0, Lonk;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1, p0}, Lone;->w(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object p2

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p2, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p2

    check-cast p2, Lora;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lora;->t()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p2}, Lora;->o()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    invoke-static {p1, p2}, Lone;->w(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_3
    :goto_3
    if-nez p0, :cond_4

    return-object p1

    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_5

    invoke-static {p0, p1}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_5
    invoke-static {p1, p0}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Lotu;Lomp;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Loud;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Loud;

    iget v1, v0, Loud;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Loud;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Loud;

    invoke-direct {v0, p3}, Loud;-><init>(Loku;)V

    :goto_0
    iget-object p3, v0, Loud;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Loud;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p2, v0, Loud;->c:Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :pswitch_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v0, Loud;->c:Ljava/lang/Throwable;

    const/4 p3, 0x1

    iput p3, v0, Loud;->b:I

    invoke-interface {p1, p0, p2, v0}, Lomp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    sget-object p0, Lojk;->a:Lojk;

    return-object p0

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz p2, :cond_2

    if-eq p2, p0, :cond_2

    invoke-static {p0, p2}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static p(Lott;Lomp;)Lott;
    .locals 2

    new-instance v0, Louf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Louf;-><init>(Lott;Lomp;I)V

    return-object v0
.end method

.method public static q(Lott;Ljava/util/Collection;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lotz;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lotz;

    iget v1, v0, Lotz;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lotz;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lotz;

    invoke-direct {v0, p2}, Lotz;-><init>(Loku;)V

    :goto_0
    iget-object p2, v0, Lotz;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lotz;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, v0, Lotz;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p2, Loua;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Loua;-><init>(Ljava/util/Collection;I)V

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lotz;->c:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput v2, v0, Lotz;->b:I

    invoke-interface {p0, p2, v0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Lotu;Lotf;Loku;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lone;->s(Lotu;Lotf;ZLoku;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lojk;->a:Lojk;

    return-object p0
.end method

.method public static s(Lotu;Lotf;ZLoku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lotx;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lotx;

    iget v1, v0, Lotx;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lotx;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lotx;

    invoke-direct {v0, p3}, Lotx;-><init>(Loku;)V

    :goto_0
    iget-object p3, v0, Lotx;->b:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lotx;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean p2, v0, Lotx;->a:Z

    iget-object p1, v0, Lotx;->e:Lotf;

    iget-object p0, v0, Lotx;->d:Lotu;

    :try_start_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :pswitch_1
    iget-boolean p2, v0, Lotx;->a:Z

    iget-object p1, v0, Lotx;->e:Lotf;

    iget-object p0, v0, Lotx;->d:Lotu;

    :try_start_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    check-cast p3, Losw;

    iget-object p3, p3, Losw;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :pswitch_2
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p0, Lovb;

    if-nez p3, :cond_9

    :goto_1
    :try_start_2
    iput-object p0, v0, Lotx;->d:Lotu;

    iput-object p1, v0, Lotx;->e:Lotf;

    iput-boolean p2, v0, Lotx;->a:Z

    const/4 p3, 0x1

    iput p3, v0, Lotx;->c:I

    invoke-interface {p1, v0}, Lotf;->c(Loku;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_1
    :goto_2
    :try_start_3
    instance-of v2, p3, Losu;

    if-nez v2, :cond_4

    instance-of v2, p3, Losv;

    if-nez v2, :cond_3

    iput-object p0, v0, Lotx;->d:Lotu;

    iput-object p1, v0, Lotx;->e:Lotf;

    iput-boolean p2, v0, Lotx;->a:Z

    const/4 v2, 0x2

    iput v2, v0, Lotx;->c:I

    invoke-interface {p0, p3, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to call \'getOrThrow\' on a failed channel result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    check-cast p3, Losu;

    const/4 p0, 0x0

    if-eqz p3, :cond_5

    iget-object p3, p3, Losu;->a:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_5
    move-object p3, p0

    :goto_3
    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    invoke-static {p1, p0}, Lolp;->M(Lotf;Ljava/lang/Throwable;)V

    :cond_6
    sget-object p0, Lojk;->a:Lojk;

    return-object p0

    :cond_7
    :try_start_4
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    :goto_4
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {p1, p0}, Lolp;->M(Lotf;Ljava/lang/Throwable;)V

    :goto_5
    throw p3

    :cond_9
    check-cast p0, Lovb;

    iget-object p0, p0, Lovb;->a:Ljava/lang/Throwable;

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Lomo;)Lott;
    .locals 2

    new-instance v0, Loto;

    sget-object v1, Lolb;->a:Lolb;

    invoke-direct {v0, p0, v1}, Loto;-><init>(Lomo;Lola;)V

    return-object v0
.end method

.method public static u(Lomo;)Lott;
    .locals 1

    new-instance v0, Lotm;

    invoke-direct {v0, p0}, Lotm;-><init>(Lomo;)V

    return-object v0
.end method

.method public static synthetic v(Lott;Loku;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p1}, Lone;->q(Lott;Ljava/util/Collection;Loku;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static w(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 1

    if-eqz p1, :cond_2

    sget-boolean v0, Lopw;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Loxa;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    sget-boolean v0, Lopw;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Loxa;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    :cond_1
    invoke-static {p1, p0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
