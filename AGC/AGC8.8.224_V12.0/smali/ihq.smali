.class public final Lihq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lihq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihq;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lihq;
    .locals 2

    new-instance v0, Lihq;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lihq;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lihq;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknc;

    invoke-static {v0}, Landroidx/wear/ambient/AmbientDelegate;->ad(Lknc;)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v0

    new-instance v1, Lkns;

    invoke-direct {v1, v0}, Lkns;-><init>(Lkaq;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    move-result-object v0

    iget-object v0, v0, Lkeq;->m:Lmwn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Ljud;

    invoke-direct {v1, v0}, Ljud;-><init>(Landroid/os/Handler;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    new-instance v2, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v2, v0, v1, v1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Lkpo;[B[B)V

    return-object v2

    :pswitch_4
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgd;

    new-instance v2, Ljwz;

    invoke-direct {v2, v0, v1}, Ljwz;-><init>(Lkgd;[B)V

    return-object v2

    :pswitch_5
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->bN:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    sget-object v1, Ldho;->bO:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/LensSettings;->getInitialZoom(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Ljvk;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrz;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Lhrz;)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldgu;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Ldhi;)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Lesu;

    invoke-virtual {v0}, Lesu;->a()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Lj$/util/Optional;)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Lijz;

    invoke-virtual {v0}, Lijz;->a()Lika;

    move-result-object v0

    new-instance v1, Ljvk;

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Liin;

    invoke-direct {v1, v0}, Liin;-><init>(Ljava/util/Set;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Liin;

    invoke-direct {v1, v0}, Liin;-><init>(Ljava/util/Set;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Lihq;->a:Loiw;

    new-instance v1, Lijj;

    invoke-direct {v1, v0}, Lijj;-><init>(Loiw;)V

    return-object v1

    :pswitch_11
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    sget-object v1, Lgzd;->M:Lgzr;

    invoke-interface {v0, v1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lihq;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->e:Ljava/lang/Object;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lihq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

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
