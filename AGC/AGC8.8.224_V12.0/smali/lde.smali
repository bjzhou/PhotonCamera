.class public final Llde;
.super Llbk;


# direct methods
.method public constructor <init>(Llbd;Lkzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llbk;-><init>(Llbd;Lkzc;)V

    return-void
.end method

.method public static g(Llbd;Llaq;)Llde;
    .locals 3

    new-instance v0, Llde;

    new-instance v1, Llbc;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Llbc;-><init>(Llbd;Llaq;I)V

    invoke-static {p0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Llde;-><init>(Llbd;Lkzc;)V

    return-object v0
.end method

.method public static h(Llbd;Llaq;II)Llde;
    .locals 3

    new-instance v0, Llde;

    invoke-interface {p0}, Llbd;->e()Lldg;

    move-result-object v1

    new-instance v2, Llcz;

    invoke-direct {v2, v1, p2, p3, p1}, Llcz;-><init>(Lldg;IILlaq;)V

    const/4 p1, 0x1

    iput-boolean p1, v2, Llda;->e:Z

    invoke-static {v2}, Llpm;->f(Ljava/lang/Object;)Lkzc;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Llde;-><init>(Llbd;Lkzc;)V

    return-object v0
.end method


# virtual methods
.method public final b()Llaq;
    .locals 1

    invoke-virtual {p0}, Llbk;->f()Llcv;

    move-result-object v0

    check-cast v0, Llda;

    iget-object v0, v0, Llda;->f:Llaq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Llde;->b()Llaq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[layout="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "RGBA8888"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
