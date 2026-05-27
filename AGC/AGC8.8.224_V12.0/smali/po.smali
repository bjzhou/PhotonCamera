.class public final Lpo;
.super Lonf;

# interfaces
.implements Lolz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lalw;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Laqa;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Larc;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lavx;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lbby;I[B[B)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljzl;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkly;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Llwq;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Llyf;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lmqp;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lolz;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lpr;I)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    iput p2, p0, Lpo;->b:I

    iput-object p1, p0, Lpo;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lpo;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Llwq;

    iget-object v0, v0, Llwq;->j:Llwz;

    iget-object v0, v0, Llwz;->e:Llvk;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Llwq;

    iget-object v0, v0, Llwq;->j:Llwz;

    iget-object v0, v0, Llwz;->d:Llul;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    invoke-static {}, Lljr;->R()Ljava/util/Set;

    move-result-object v1

    check-cast v0, Llyf;

    iget-object v2, v0, Llyf;->i:Lnwf;

    if-eqz v2, :cond_0

    new-instance v3, Llva;

    invoke-direct {v3, v2}, Llva;-><init>(Lnwf;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, v0, Llyf;->j:Lnwf;

    if-eqz v2, :cond_1

    new-instance v3, Lluy;

    invoke-direct {v3, v2}, Lluy;-><init>(Lnwf;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, v0, Llyf;->k:Lnwf;

    if-eqz v2, :cond_2

    new-instance v3, Llvb;

    invoke-direct {v3, v2}, Llvb;-><init>(Lnwf;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, v0, Llyf;->l:Lnty;

    if-eqz v2, :cond_3

    new-instance v3, Llvc;

    invoke-direct {v3, v2}, Llvc;-><init>(Lnty;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v0, v0, Llyf;->m:Z

    if-eqz v0, :cond_4

    sget-object v0, Lluz;->a:Lluz;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v1}, Lljr;->U(Ljava/util/Set;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Llyf;

    iget-object v4, v0, Llyf;->g:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v0, Llyf;->h:Ljava/lang/String;

    if-eqz v4, :cond_7

    sget-object v2, Lntw;->d:Lntw;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v4, v0, Llyf;->g:Ljava/lang/String;

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lntw;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v6, Lntw;->a:I

    or-int/2addr v3, v7

    iput v3, v6, Lntw;->a:I

    iput-object v4, v6, Lntw;->b:Ljava/lang/String;

    iget-object v0, v0, Llyf;->h:Ljava/lang/String;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lntw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lntw;->a:I

    or-int/2addr v1, v4

    iput v1, v3, Lntw;->a:I

    iput-object v0, v3, Lntw;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lntw;

    goto :goto_0

    :cond_7
    :goto_0
    return-object v2

    :pswitch_3
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    sget-object v1, Loqf;->b:Lopq;

    check-cast v0, Lmqp;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lola;

    invoke-static {v0}, Lopx;->f(Lola;)Lopu;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lpo;->a:Ljava/lang/Object;

    sget-object v2, Looj;->a:Ljava/nio/charset/Charset;

    check-cast v1, [B

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lkly;

    invoke-virtual {v0}, Lkly;->c()Lloi;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Ljzl;

    iget-object v0, v0, Ljzl;->a:Lrd;

    invoke-interface {v0}, Lrd;->b()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrc;

    iget-object v2, v2, Lrc;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-object v1

    :pswitch_8
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lbby;

    iget-object v0, v0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "androidx.window.extensions.WindowExtensionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-string v2, "getWindowExtensions"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v1, Lbby;

    invoke-virtual {v1}, Lbby;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lbby;->f(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lbby;

    iget-object v0, v0, Lbby;->b:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Lavs;

    invoke-virtual {v0}, Lavs;->a()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lbby;

    invoke-virtual {v0}, Lbby;->e()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v5, v1, v4

    aput-object v2, v1, v3

    const-string v5, "addWindowLayoutInfoListener"

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v2, v5, v4

    const-string v2, "removeWindowLayoutInfoListener"

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_a
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lbby;

    invoke-virtual {v0}, Lbby;->d()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-string v2, "getWindowLayoutComponent"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v1, Lbby;

    invoke-virtual {v1}, Lbby;->e()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0, v1}, Lbby;->f(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lbby;

    iget-object v0, v0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "androidx.window.extensions.layout.FoldingFeature"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-string v2, "getBounds"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    const-string v5, "getType"

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "getState"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    invoke-static {v5}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v5

    invoke-static {v1, v5}, Lbby;->h(Ljava/lang/reflect/Method;Lonx;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v1}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v1

    invoke-static {v2, v1}, Lbby;->h(Ljava/lang/reflect/Method;Lonx;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v2}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v1

    invoke-static {v0, v1}, Lbby;->h(Ljava/lang/reflect/Method;Lonx;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v0}, Lbby;->g(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lavx;

    iget v0, v0, Lavx;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v2, Lavx;

    iget v2, v2, Lavx;->c:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v1, Lavx;

    iget v1, v1, Lavx;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Larc;

    iget-object v5, v0, Larc;->b:Ljava/lang/String;

    if-eqz v5, :cond_e

    iget-boolean v1, v0, Larc;->d:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Larc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v3, Larc;

    iget-object v3, v3, Larc;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Larb;

    iget-object v3, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v3, Larc;

    iget-object v5, v3, Larc;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lnaa;

    invoke-direct {v7, v2}, Lnaa;-><init>([C)V

    iget-object v1, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v1, Larc;

    iget-object v8, v1, Larc;->c:Laqq;

    iget-boolean v9, v1, Larc;->e:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Larb;-><init>(Landroid/content/Context;Ljava/lang/String;Lnaa;Laqq;Z[B[B[B[B)V

    goto :goto_8

    :cond_e
    new-instance v1, Larb;

    iget-object v4, v0, Larc;->a:Landroid/content/Context;

    new-instance v6, Lnaa;

    invoke-direct {v6, v2}, Lnaa;-><init>([C)V

    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Larc;

    iget-object v7, v0, Larc;->c:Laqq;

    iget-boolean v8, v0, Larc;->e:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Larb;-><init>(Landroid/content/Context;Ljava/lang/String;Lnaa;Laqq;Z[B[B[B[B)V

    move-object v0, v1

    :goto_8
    iget-object v1, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v1, Larc;

    iget-boolean v1, v1, Larc;->g:Z

    invoke-static {v0, v1}, Lafj;->h(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Laqa;

    invoke-virtual {v0}, Laqa;->f()Larf;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    invoke-static {v0}, Lall;->b(Lalw;)Laln;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lolz;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lolz;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lpr;

    invoke-virtual {v0}, Lpr;->d()V

    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lpo;->a:Ljava/lang/Object;

    check-cast v0, Lpr;

    invoke-virtual {v0}, Lpr;->b()V

    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
