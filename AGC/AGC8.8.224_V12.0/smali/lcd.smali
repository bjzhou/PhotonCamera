.class public final Llcd;
.super Llbk;


# direct methods
.method private constructor <init>(Llbd;Lkzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llbk;-><init>(Llbd;Lkzc;)V

    return-void
.end method

.method public static b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b()Lkym;

    move-result-object v0

    new-instance v1, Llar;

    invoke-direct {v1, v0}, Llar;-><init>(Lkym;)V

    new-instance v2, Llcd;

    new-instance v3, Lldd;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v0, v4}, Lldd;-><init>(Llbd;Llar;Lkym;I)V

    invoke-static {p0, v3}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Llcd;-><init>(Llbd;Lkzc;)V

    new-instance p0, Llay;

    invoke-direct {p0, v2, v4}, Llay;-><init>(Llcd;I)V

    new-instance v0, Lkyh;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lkyh;-><init>(Lcom/google/android/libraries/oliveoil/gl/EGLImage;I)V

    invoke-virtual {v2, p0, v0}, Llbk;->e(Llcj;Lkye;)Lkzc;

    move-result-object p0

    sget-object p1, Lkyo;->a:Lkyo;

    invoke-interface {p0, p1}, Lkzc;->h(Lkyo;)V

    return-object v2
.end method


# virtual methods
.method public final g()Llaq;
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

    invoke-virtual {p0}, Llcd;->g()Llaq;

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
