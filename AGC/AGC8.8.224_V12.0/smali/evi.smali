.class public final synthetic Levi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Leve;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levj;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leys;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfbi;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfbx;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfcm;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfco;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfcy;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhec;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levi;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Levi;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfcy;

    invoke-virtual {v0}, Lfcy;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfcy;

    iget-object v0, v0, Lfcy;->b:Lflf;

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfco;

    iget-object v0, v0, Lfco;->a:Lflf;

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhec;->a()V

    return-void

    :pswitch_3
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfcm;

    iget-object v1, v0, Lfcm;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lfcm;->b:Lhec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhec;->a()V

    :cond_0
    return-void

    :pswitch_4
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfcm;

    iput-boolean v2, v0, Lfcm;->i:Z

    iget-object v0, v0, Lfcm;->d:Lflf;

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_5
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfcm;

    iget-object v0, v0, Lfcm;->f:Lcmo;

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v1}, Lcmo;->f(Lika;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lfbx;

    invoke-virtual {v0, v3}, Lfbx;->c(Z)V

    invoke-virtual {v0}, Lfbx;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    move-object v1, v0

    check-cast v1, Lfbi;

    iget-object v4, v1, Lfbi;->b:Landroid/location/LocationManager;

    if-nez v4, :cond_1

    iget-object v4, v1, Lfbi;->a:Loiw;

    check-cast v4, Lemf;

    invoke-virtual {v4}, Lemf;->a()Landroid/location/LocationManager;

    move-result-object v4

    iput-object v4, v1, Lfbi;->b:Landroid/location/LocationManager;

    :cond_1
    iget-object v5, v1, Lfbi;->b:Landroid/location/LocationManager;

    if-eqz v5, :cond_2

    :try_start_0
    const-string v6, "network"

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    move-object v1, v0

    check-cast v1, Lfbi;

    iget-object v1, v1, Lfbi;->c:[Lfbh;

    aget-object v10, v1, v2

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    move-object v1, v0

    check-cast v1, Lfbi;

    iget-object v4, v1, Lfbi;->b:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    check-cast v0, Lfbi;

    iget-object v0, v0, Lfbi;->c:[Lfbh;

    aget-object v9, v0, v3

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    return-void

    :catch_3
    move-exception v0

    return-void

    :cond_2
    return-void

    :pswitch_8
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Leys;

    iput-boolean v3, v0, Leys;->p:Z

    invoke-virtual {v0}, Leys;->d()V

    return-void

    :pswitch_9
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Leys;

    iput-boolean v3, v0, Leys;->o:Z

    invoke-virtual {v0}, Leys;->e()V

    return-void

    :pswitch_a
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Leys;

    iget-object v0, v0, Leys;->e:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :pswitch_b
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Leys;

    iput-boolean v2, v0, Leys;->p:Z

    invoke-virtual {v0}, Leys;->e()V

    return-void

    :pswitch_c
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Leys;

    iput-boolean v2, v0, Leys;->o:Z

    invoke-virtual {v0}, Leys;->d()V

    return-void

    :pswitch_d
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-boolean v2, v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a:Z

    if-eqz v2, :cond_3

    iput-boolean v3, v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a:Z

    const v2, 0x7f0b02e2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :pswitch_10
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_11
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    const v2, 0x7f0b030f

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_12
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Leve;

    iget-object v0, v0, Leve;->a:Levk;

    iget-boolean v1, v0, Lchk;->a:Z

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Levk;->U:Lhsa;

    if-eqz v1, :cond_5

    iget-object v1, v0, Levk;->d:Ldbf;

    invoke-virtual {v1}, Ldbf;->i()Z

    :cond_5
    iget-object v1, v0, Levk;->s:Ldhi;

    sget-object v2, Ldho;->ci:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Levk;->E:Lhxx;

    invoke-virtual {v1}, Lhxx;->f()V

    iget-object v1, v0, Levk;->y:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyu;

    sget-object v2, Lgyu;->a:Lgyu;

    invoke-virtual {v1, v2}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Levk;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lett;

    const/16 v4, 0x10

    invoke-direct {v2, v0, v4}, Lett;-><init>(Levk;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v1, v0, Levk;->r:Litm;

    invoke-interface {v1}, Litm;->s()V

    invoke-virtual {v0}, Lchk;->k()V

    iget-object v0, v0, Levk;->r:Litm;

    invoke-interface {v0, v3}, Litm;->B(Z)V

    return-void

    :pswitch_13
    iget-object v0, p0, Levi;->a:Ljava/lang/Object;

    check-cast v0, Levj;

    iget-object v1, v0, Levj;->a:Levk;

    iget-object v1, v1, Levk;->e:Lcgx;

    invoke-interface {v1}, Lcgx;->g()Lcha;

    move-result-object v1

    invoke-interface {v1}, Lcha;->k()V

    iget-object v0, v0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->j:Lhgy;

    const v1, 0x7f130008

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    return-void

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
