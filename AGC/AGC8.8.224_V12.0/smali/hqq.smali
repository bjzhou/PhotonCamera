.class public final Lhqq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ligo;I)V
    .locals 0

    iput p2, p0, Lhqq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqq;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lihi;I)V
    .locals 0

    iput p2, p0, Lhqq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqq;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lhqq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqq;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Lhqq;
    .locals 2

    new-instance v0, Lhqq;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lhqq;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Ldhi;)Ljew;
    .locals 1

    new-instance v0, Ljew;

    invoke-direct {v0, p0}, Ljew;-><init>(Ldhi;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lhqq;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    check-cast v0, Lihi;

    iget-object v0, v0, Lihi;->b:Lihg;

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v9, Lihd;

    sget-object v1, Ldhs;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ldhs;->b:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Ldhs;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v1, Ldhs;->e:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v1, Ldhs;->f:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v8, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lihd;-><init>(JIFFFLandroid/view/animation/Interpolator;)V

    return-object v9

    :pswitch_6
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    check-cast v0, Ligo;

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    check-cast v0, Ligo;

    iget-object v0, v0, Ligo;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbm;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Lkbm;)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    invoke-static {v0}, Lhqq;->b(Ldhi;)Ljew;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    check-cast v0, Lelo;

    invoke-virtual {v0}, Lelo;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhyy;

    invoke-direct {v1, v0}, Lhyy;-><init>(Landroid/app/Activity;)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxl;

    iget-object v0, v0, Lhxl;->c:Ljwb;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lhxh;

    invoke-direct {v1, v0}, Lhxh;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1

    :pswitch_d
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    new-instance v1, Lijx;

    iget-object v0, v0, Lihg;->p:Ljava/lang/Object;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    invoke-direct {v1, v0}, Lijx;-><init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    new-instance v1, Ljew;

    iget-object v0, v0, Lihg;->k:Ljava/lang/Object;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v0, Liei;

    invoke-direct {v1, v0}, Ljew;-><init>(Liei;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Licl;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Licl;-><init>(Lhsl;I)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldih;->b:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->k(Ldhj;)Z

    move-result v0

    invoke-static {}, Lcom/agc/AdvancedSettings;->getTrackFocus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrj;

    new-instance v1, Lhre;

    invoke-direct {v1, v0}, Lhre;-><init>(Lhrj;)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ljpw;

    invoke-direct {v1, v0}, Ljpw;-><init>(Ldhi;)V

    return-object v1

    :pswitch_13
    iget-object v0, p0, Lhqq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhqm;

    new-instance v1, Ldld;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Ldld;-><init>(Lhqm;I)V

    return-object v1

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
