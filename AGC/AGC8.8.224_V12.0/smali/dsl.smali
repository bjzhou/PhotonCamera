.class public final Ldsl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Ldsl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsl;->a:Loiw;

    iput-object p2, p0, Ldsl;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Ldsl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsl;->b:Loiw;

    iput-object p2, p0, Ldsl;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Ldsl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsl;->b:Loiw;

    iput-object p2, p0, Ldsl;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Ldsl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsl;->b:Loiw;

    iput-object p2, p0, Ldsl;->a:Loiw;

    return-void
.end method

.method public static a(Ldhi;Loiw;)Ljava/util/Set;
    .locals 1

    sget-object v0, Ldhe;->a:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lmza;->a:Lmza;

    goto :goto_0

    :cond_0
    new-instance p0, Ldrh;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ldrh;-><init>(Loiw;I)V

    const-string p1, "sensorconsumer"

    invoke-static {p0, p1}, Lbze;->ah(Ljava/lang/Runnable;Ljava/lang/String;)Lcik;

    move-result-object p0

    invoke-static {p0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static b(Loiw;Loiw;)Ldsl;
    .locals 2

    new-instance v0, Ldsl;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Ldsl;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;Loiw;)Ldsl;
    .locals 3

    new-instance v0, Ldsl;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ldsl;-><init>(Loiw;Loiw;I[C)V

    return-object v0
.end method

.method public static d(Loiw;Loiw;)Ldsl;
    .locals 2

    new-instance v0, Ldsl;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Ldsl;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static e(Loiw;Loiw;)Ldsl;
    .locals 3

    new-instance v0, Ldsl;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ldsl;-><init>(Loiw;Loiw;I[S)V

    return-object v0
.end method

.method public static f(Loiw;Loiw;)Ldsl;
    .locals 2

    new-instance v0, Ldsl;

    const/16 v1, 0xf

    invoke-direct {v0, p0, p1, v1}, Ldsl;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Ldsl;->c:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldsl;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lgkr;

    const v1, 0x7f020037

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lafx;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lafx;-><init>(Lgkr;I[B[B[B[B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Liku;

    invoke-direct {v0}, Liku;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v1}, Ljvd;->x(Landroid/animation/Animator;)Lila;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldsl;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkr;

    const v2, 0x7f020028

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lgkr;->f()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Liku;

    invoke-direct {v0}, Liku;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v1}, Ljvd;->x(Landroid/animation/Animator;)Lila;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldsl;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkr;

    const v2, 0x7f02004a

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lgkr;->e()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const v6, 0x7f02004b

    invoke-static {v0, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lgkr;->f()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Lakf;

    invoke-direct {v6}, Lakf;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Liku;

    invoke-direct {v0}, Liku;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v1}, Ljvd;->x(Landroid/animation/Animator;)Lila;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldsl;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Ldsl;->b:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgkr;

    const v7, 0x7f020012

    invoke-static {v0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Lgkr;->c()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const v8, 0x7f020013

    invoke-static {v0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Lgkr;->d()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const v9, 0x7f020014

    invoke-static {v0, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Lgkr;->e()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const v10, 0x7f020015

    invoke-static {v0, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Lgkr;->f()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v7, v1, v4

    aput-object v8, v1, v5

    aput-object v9, v1, v3

    aput-object v0, v1, v2

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Liku;

    invoke-direct {v0}, Liku;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v6}, Ljvd;->x(Landroid/animation/Animator;)Lila;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldsl;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkr;

    const/high16 v2, 0x7f020000

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lgkr;->f()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Liku;

    invoke-direct {v1}, Liku;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0}, Ljvd;->x(Landroid/animation/Animator;)Lila;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldsl;->b:Loiw;

    sget-object v2, Ldhe;->a:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmza;->a:Lmza;

    goto :goto_0

    :cond_0
    new-instance v0, Leaa;

    invoke-direct {v0, v1, v5}, Leaa;-><init>(Loiw;I)V

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldsl;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldsl;->a:Loiw;

    invoke-static {v0, v1}, Ldsl;->a(Ldhi;Loiw;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldsl;->a:Loiw;

    check-cast v0, Lemh;

    invoke-virtual {v0}, Lemh;->a()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Ldsl;->b:Loiw;

    check-cast v1, Logo;

    invoke-virtual {v1}, Logo;->a()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ldja;

    invoke-direct {v2, v0, v1}, Ldja;-><init>(Landroid/hardware/SensorManager;Ljava/util/Set;)V

    return-object v2

    :pswitch_7
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsm;

    invoke-static {v0}, Ldvj;->a(Ldsx;)Ldvi;

    move-result-object v0

    new-instance v2, Lduk;

    invoke-direct {v2, v1, v3}, Lduk;-><init>(Lgsm;I)V

    invoke-virtual {v0, v2}, Ldvi;->b(Ldvg;)V

    invoke-interface {v1}, Lgsm;->b()Ldtd;

    move-result-object v2

    iput-object v2, v0, Ldvi;->c:Ldtd;

    invoke-interface {v1}, Lgsm;->a()I

    move-result v1

    invoke-static {v1}, Ldvi;->c(I)V

    invoke-virtual {v0}, Ldvi;->a()Ldsy;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsm;

    invoke-static {v0}, Ldvj;->a(Ldsx;)Ldvi;

    move-result-object v0

    new-instance v2, Lduk;

    invoke-direct {v2, v1, v5}, Lduk;-><init>(Lgsm;I)V

    invoke-virtual {v0, v2}, Ldvi;->b(Ldvg;)V

    invoke-interface {v1}, Lgsm;->b()Ldtd;

    move-result-object v2

    iput-object v2, v0, Ldvi;->c:Ldtd;

    invoke-interface {v1}, Lgsm;->a()I

    move-result v1

    invoke-static {v1}, Ldvi;->c(I)V

    invoke-virtual {v0}, Ldvi;->a()Ldsy;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-static {v0}, Ldvj;->a(Ldsx;)Ldvi;

    move-result-object v0

    new-instance v3, Ldvh;

    invoke-direct {v3, v1, v5}, Ldvh;-><init>(Loiw;I)V

    iput-object v3, v0, Ldvi;->b:Ldve;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldye;

    iget-object v3, v3, Ldye;->a:Ldvc;

    iput-object v3, v0, Ldvi;->c:Ldtd;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldye;

    iget-object v1, v1, Ldye;->b:[Ljyp;

    array-length v1, v1

    invoke-static {v1}, Ldvi;->c(I)V

    const/4 v1, -0x1

    iput v1, v0, Ldvi;->a:I

    iput v2, v0, Ldvi;->d:I

    invoke-virtual {v0}, Ldvi;->a()Ldsy;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsm;

    invoke-static {v0}, Ldvj;->a(Ldsx;)Ldvi;

    move-result-object v0

    new-instance v2, Lduk;

    invoke-direct {v2, v1, v4}, Lduk;-><init>(Lgsm;I)V

    invoke-virtual {v0, v2}, Ldvi;->b(Ldvg;)V

    invoke-interface {v1}, Lgsm;->b()Ldtd;

    move-result-object v2

    iput-object v2, v0, Ldvi;->c:Ldtd;

    invoke-interface {v1}, Lgsm;->a()I

    move-result v1

    invoke-static {v1}, Ldvi;->c(I)V

    invoke-virtual {v0}, Ldvi;->a()Ldsy;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduv;

    iget-object v2, p0, Ldsl;->b:Loiw;

    check-cast v2, Lduc;

    invoke-virtual {v2}, Lduc;->a()Ldsw;

    move-result-object v2

    new-instance v3, Lguk;

    invoke-direct {v3, v1}, Lguk;-><init>(I)V

    invoke-static {v3, v0, v2}, Ldty;->a(Lgul;Lduv;Ldsw;)Ldtu;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduv;

    iget-object v1, p0, Ldsl;->b:Loiw;

    check-cast v1, Lduc;

    invoke-virtual {v1}, Lduc;->a()Ldsw;

    move-result-object v1

    new-instance v3, Lguk;

    invoke-direct {v3, v2}, Lguk;-><init>(I)V

    invoke-static {v3, v0, v1}, Ldty;->a(Lgul;Lduv;Ldsw;)Ldtu;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduv;

    iget-object v1, p0, Ldsl;->b:Loiw;

    check-cast v1, Lduc;

    invoke-virtual {v1}, Lduc;->a()Ldsw;

    move-result-object v1

    new-instance v2, Lguk;

    invoke-direct {v2, v3}, Lguk;-><init>(I)V

    invoke-static {v2, v0, v1}, Ldty;->a(Lgul;Lduv;Ldsw;)Ldtu;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduv;

    iget-object v1, p0, Ldsl;->b:Loiw;

    check-cast v1, Lduc;

    invoke-virtual {v1}, Lduc;->a()Ldsw;

    move-result-object v1

    new-instance v2, Lguk;

    invoke-direct {v2, v4}, Lguk;-><init>(I)V

    invoke-static {v2, v0, v1}, Ldty;->a(Lgul;Lduv;Ldsw;)Ldtu;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduv;

    iget-object v1, p0, Ldsl;->b:Loiw;

    check-cast v1, Lduc;

    invoke-virtual {v1}, Lduc;->a()Ldsw;

    move-result-object v1

    new-instance v2, Lguk;

    invoke-direct {v2, v5}, Lguk;-><init>(I)V

    invoke-static {v2, v0, v1}, Ldty;->a(Lgul;Lduv;Ldsw;)Ldtu;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Ldsl;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lken;

    iget-object v1, p0, Ldsl;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfl;

    invoke-interface {v0}, Lken;->c()Lkeo;

    move-result-object v0

    invoke-interface {v0, v1}, Lkeo;->c(Lkfl;)Lkfj;

    move-result-object v0

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lken;

    iget-object v1, p0, Ldsl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    invoke-interface {v0, v1}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    return-object v0

    :pswitch_12
    iget-object v0, p0, Ldsl;->b:Loiw;

    iget-object v1, p0, Ldsl;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    const-string v2, "fastzoom"

    invoke-static {v0, v1, v2}, Linb;->A(Loiw;Lkbc;Ljava/lang/String;)Lhip;

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Ldsl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldsl;->b:Loiw;

    sget-object v2, Ldho;->aW:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lmza;->a:Lmza;

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgkr;

    new-instance v0, Ljvx;

    sget-object v1, Lffe;->b:Lffe;

    invoke-direct {v0, v1}, Ljvx;-><init>(Lmrl;)V

    new-instance v9, Ldso;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ldso;-><init>(Lgkr;I[B[B[B[B[B)V

    sget-object v1, Liop;->e:Liop;

    invoke-static {v9, v0, v1}, Lior;->a(Lioq;Ljvs;Liop;)Lior;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

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
