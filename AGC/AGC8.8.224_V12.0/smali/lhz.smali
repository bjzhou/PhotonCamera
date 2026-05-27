.class public final Llhz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Llyh;->B()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Loop;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lpap;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpap;

    invoke-virtual {v1}, Lpap;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All available Cronet providers are disabled. A provider should be enabled before it can be used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lye;

    const/16 v1, 0xc

    invoke-direct {p1, v1}, Lye;-><init>(I)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpap;

    sget v0, Lpao;->a:I

    invoke-virtual {p1}, Lpap;->e()Llhz;

    move-result-object p1

    iget-object p1, p1, Llhz;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to find any Cronet provider. Have you included all necessary jars?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljns;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llmp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmnv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmoy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Llhz;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lowt;

    const/16 p2, 0x8

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lowt;-><init>(IZ)V

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Llhz;->a:Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static j(Ljava/lang/String;)Llhz;
    .locals 1

    new-instance v0, Llhz;

    invoke-direct {v0, p0}, Llhz;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static p(Ljot;)Lnou;
    .locals 3

    invoke-static {p0}, Lktf;->b(Ljot;)Lnou;

    move-result-object p0

    const-class v0, Ljda;

    sget-object v1, Letf;->g:Letf;

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {p0, v0, v1, v2}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(F)Llmt;
    .locals 2

    new-instance v0, Llmt;

    iget-object v1, p0, Llhz;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Random;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Llmt;-><init>(Ljava/util/Random;F)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lnou;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    check-cast v0, Ljns;

    invoke-virtual {v0, p1}, Ljns;->a(Ljava/lang/String;)Ljot;

    move-result-object p1

    invoke-static {p1}, Llhz;->p(Ljot;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lnou;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    check-cast v0, Ljns;

    invoke-virtual {v0, p1, p2}, Ljns;->b(Ljava/lang/String;Ljava/lang/String;)Ljot;

    move-result-object p1

    sget-object p2, Lnnv;->a:Lnnv;

    new-instance v0, Llpf;

    invoke-direct {v0}, Llpf;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljot;->a(Ljava/util/concurrent/Executor;Ljoj;)Ljot;

    move-result-object p1

    invoke-static {p1}, Llhz;->p(Ljot;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Llhz;->a:Ljava/lang/Object;

    check-cast v1, Lxf;

    invoke-virtual {v1, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxf;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p1, p3}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final e(Lmym;)V
    .locals 2

    invoke-virtual {p1}, Lmym;->o()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Llhz;->h(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs g(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lmql;

    invoke-direct {v0, p3, p1, p2}, Lmql;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Llhz;->f(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    .locals 1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llhz;->i(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llhz;->i(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final k()I
    .locals 6

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    check-cast v0, Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowt;

    iget-object v0, v0, Lowt;->b:Looo;

    iget-wide v0, v0, Looo;->b:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v1, v0

    long-to-int v0, v2

    sub-int/2addr v1, v0

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    :goto_0
    move-object v1, v0

    check-cast v1, Loop;

    iget-object v1, v1, Loop;->a:Ljava/lang/Object;

    check-cast v1, Lowt;

    invoke-virtual {v1}, Lowt;->b()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lowt;->a:Loxb;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Llhz;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lowt;->c()Lowt;

    move-result-object v3

    check-cast v2, Loop;

    invoke-virtual {v2, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    :goto_0
    move-object v1, v0

    check-cast v1, Loop;

    iget-object v1, v1, Loop;->a:Ljava/lang/Object;

    check-cast v1, Lowt;

    invoke-virtual {v1}, Lowt;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Llhz;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lowt;->c()Lowt;

    move-result-object v3

    check-cast v2, Loop;

    invoke-virtual {v2, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final n(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    :goto_0
    move-object v1, v0

    check-cast v1, Loop;

    iget-object v1, v1, Loop;->a:Ljava/lang/Object;

    check-cast v1, Lowt;

    invoke-virtual {v1, p1}, Lowt;->a(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object v2, p0, Llhz;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lowt;->c()Lowt;

    move-result-object v3

    check-cast v2, Loop;

    invoke-virtual {v2, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(I)Loop;
    .locals 1

    iget-object v0, p0, Llhz;->a:Ljava/lang/Object;

    check-cast v0, [Loop;

    aget-object p1, v0, p1

    return-object p1
.end method
