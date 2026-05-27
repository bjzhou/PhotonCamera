.class public Lldc;
.super Llbk;


# direct methods
.method private constructor <init>(Llbd;Lkzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llbk;-><init>(Llbd;Lkzc;)V

    return-void
.end method

.method public constructor <init>(Llbd;Lkzc;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llbk;-><init>(Llbd;Lkzc;)V

    return-void
.end method

.method public constructor <init>(Llbd;Lkzc;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llbk;-><init>(Llbd;Lkzc;)V

    return-void
.end method

.method public static b(Llbd;Ljava/lang/String;)Lldc;
    .locals 1

    const v0, 0x8b30

    invoke-static {p0, v0, p1}, Lldc;->g(Llbd;ILjava/lang/String;)Lldc;

    move-result-object p0

    return-object p0
.end method

.method public static g(Llbd;ILjava/lang/String;)Lldc;
    .locals 2

    new-instance v0, Lldc;

    new-instance v1, Lldb;

    invoke-direct {v1, p1, p2}, Lldb;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lldc;-><init>(Llbd;Lkzc;)V

    return-object v0
.end method

.method public static h(Llbd;Ljava/lang/String;)Lldc;
    .locals 1

    const v0, 0x8b31

    invoke-static {p0, v0, p1}, Lldc;->g(Llbd;ILjava/lang/String;)Lldc;

    move-result-object p0

    return-object p0
.end method

.method public static j(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lldc;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lldc;

    new-instance v1, Llbc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Llbc;-><init>(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;I)V

    invoke-static {p0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    return-object v0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object p0

    iget-object p1, p0, Llbk;->b:Llbd;

    invoke-virtual {p0}, Llcd;->g()Llaq;

    move-result-object v0

    invoke-virtual {p0}, Llbk;->f()Llcv;

    move-result-object v1

    check-cast v1, Llda;

    iget v1, v1, Llcw;->b:I

    invoke-virtual {p0}, Llbk;->f()Llcv;

    move-result-object v2

    check-cast v2, Llda;

    iget v2, v2, Llda;->c:I

    invoke-static {p1, v0, v1, v2}, Llde;->h(Llbd;Llaq;II)Llde;

    move-result-object p1

    invoke-static {p1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-interface {p1}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llde;

    iget-object v0, v0, Llbk;->b:Llbd;

    new-instance v1, Llba;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Llba;-><init>(Llfg;I)V

    invoke-static {v0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    new-instance v1, Llbb;

    invoke-direct {v1, v0, p1, p0}, Llbb;-><init>(Llbd;Lkzc;Llcd;)V

    return-object v1
.end method

.method public static k(Llbd;Llfg;Lkym;)Lldc;
    .locals 4

    new-instance v0, Lldc;

    invoke-interface {p0}, Llbd;->i()Lldc;

    move-result-object v1

    new-instance v2, Llay;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Llay;-><init>(Lkym;I)V

    new-instance v3, Llaz;

    invoke-direct {v3, p1, p2}, Llaz;-><init>(Llfg;Lkym;)V

    invoke-virtual {v1, v2, v3}, Llbk;->e(Llcj;Lkye;)Lkzc;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2, p2}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    return-object v0
.end method

.method public static l(Llbd;Landroid/view/SurfaceView;)Lldc;
    .locals 3

    new-instance v0, Lldc;

    new-instance v1, Llbc;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Llbc;-><init>(Llbd;Landroid/view/SurfaceView;I)V

    invoke-static {p0, v1}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    return-object v0
.end method

.method public static m(Llfg;)Lldc;
    .locals 4

    invoke-interface {p0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llde;

    iget-object v0, v0, Llbk;->b:Llbd;

    new-instance v1, Lldc;

    new-instance v2, Llba;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llba;-><init>(Llfg;I)V

    invoke-static {v0, v2}, Llbk;->d(Llbd;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2, v2}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    return-object v1
.end method

.method public static n(Llbd;Llaq;)Lldc;
    .locals 0

    invoke-static {p0, p1}, Llde;->g(Llbd;Llaq;)Llde;

    move-result-object p0

    invoke-static {p0}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p0

    invoke-static {p0}, Lldc;->m(Llfg;)Lldc;

    move-result-object p0

    return-object p0
.end method

.method public static o(Llbd;)Lloi;
    .locals 1

    new-instance v0, Lloi;

    invoke-direct {v0, p0}, Lloi;-><init>(Llbd;)V

    return-object v0
.end method


# virtual methods
.method public final i(Llfb;)V
    .locals 3

    new-instance v0, Lfrj;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    new-instance v1, Lkyh;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lkyh;-><init>(Llfb;I)V

    invoke-virtual {p0, v0, v1}, Llbk;->e(Llcj;Lkye;)Lkzc;

    return-void
.end method
