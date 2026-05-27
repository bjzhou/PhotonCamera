.class public final synthetic Lhon;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lhos;I)V
    .locals 0

    iput p2, p0, Lhon;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhov;I)V
    .locals 0

    iput p2, p0, Lhon;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhoz;I)V
    .locals 0

    iput p2, p0, Lhon;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhpg;I)V
    .locals 0

    iput p2, p0, Lhon;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liec;I)V
    .locals 0

    iput p2, p0, Lhon;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lhon;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    sget-object v1, Lhoz;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v3, "Device temperature is too high to do recording."

    const/16 v4, 0xf16

    invoke-static {v1, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    check-cast v0, Lhoz;

    iget-object v1, v0, Lhoz;->j:Lhpq;

    invoke-virtual {v1}, Lhpq;->a()V

    iget-object v1, v0, Lhoz;->g:Lico;

    iget-object v3, v0, Lhoz;->j:Lhpq;

    invoke-virtual {v3}, Lhpq;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Licn;->d:Licn;

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhoz;

    iget-object v2, v0, Lhoz;->j:Lhpq;

    invoke-virtual {v2}, Lhpq;->b()V

    iget-object v2, v0, Lhoz;->g:Lico;

    sget-object v3, Licn;->d:Licn;

    invoke-virtual {v2, v3}, Lico;->a(Licn;)V

    iget-object v2, v0, Lhoz;->g:Lico;

    sget-object v3, Licn;->e:Licn;

    invoke-virtual {v2, v3}, Lico;->a(Licn;)V

    iget-object v0, v0, Lhoz;->n:Ljes;

    iget-object v0, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v0, v0, Lhos;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    sget-object v1, Lhoz;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Device temperature is too high that may impact video quality."

    const/16 v3, 0xf15

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    check-cast v0, Lhoz;

    iget-object v0, v0, Lhoz;->g:Lico;

    sget-object v1, Licn;->b:Licn;

    invoke-virtual {v0, v1}, Lico;->d(Licn;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhoz;

    iget-object v0, v0, Lhoz;->g:Lico;

    sget-object v1, Licn;->b:Licn;

    invoke-virtual {v0, v1}, Lico;->a(Licn;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhov;

    iget-object v0, v0, Lhov;->c:Lflf;

    sget-object v1, Lika;->n:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhou;->c()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    invoke-interface {v0}, Liec;->g()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhis;->g()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->C:Lhpg;

    invoke-virtual {v1}, Lhpg;->g()V

    iget-object v1, v0, Lhos;->B:Lhol;

    invoke-virtual {v1}, Lhol;->h()V

    iget-object v0, v0, Lhos;->j:Ljvk;

    sget-object v1, Lhnw;->a:Lhnw;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    iget v1, v1, Lhnw;->k:I

    sget-object v2, Lhnw;->d:Lhnw;

    iget v3, v2, Lhnw;->k:I

    or-int/2addr v1, v3

    sget-object v3, Lhnw;->e:Lhnw;

    iget v4, v3, Lhnw;->k:I

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Lhos;->j:Ljvk;

    invoke-virtual {v1, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lhos;->j:Ljvk;

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v0, Lhos;->G:Lkai;

    sget-object v2, Lfmg;->b:Lfmg;

    invoke-interface {v1, v2}, Lkai;->bn(Ljava/lang/Object;)V

    iget-object v0, v0, Lhos;->C:Lhpg;

    invoke-virtual {v0}, Lhpg;->f()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->i:Lhsl;

    sget-object v2, Likn;->e:Likn;

    invoke-interface {v1, v2}, Lhsl;->g(Likn;)V

    iget-object v1, v0, Lhos;->i:Lhsl;

    iget-object v0, v0, Lhos;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140584

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lhsl;->i(Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhou;->a()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhou;->i()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->J:Lcsd;

    invoke-virtual {v1}, Lcsd;->d()V

    iget-object v1, v0, Lhos;->C:Lhpg;

    invoke-virtual {v1}, Lhpg;->b()V

    iget-object v0, v0, Lhos;->w:Liec;

    invoke-interface {v0}, Liec;->i()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    invoke-virtual {v0, v2}, Lhos;->i(Z)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->y:Landroid/hardware/SensorManager;

    iget-object v2, v0, Lhos;->x:Landroid/hardware/SensorEventListener;

    iget-object v0, v0, Lhos;->H:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v3, v0, Lhos;->j:Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Lhnw;

    sget-object v4, Lhnw;->f:Lhnw;

    invoke-virtual {v3, v4}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lhos;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v4, "Pre-recording state, set statechart back to stop recording."

    const/16 v5, 0xef8

    invoke-static {v3, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v3, v0, Lhos;->j:Ljvk;

    sget-object v4, Lhnw;->j:Lhnw;

    invoke-virtual {v3, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v3, v0, Lhos;->C:Lhpg;

    invoke-virtual {v3}, Lhpg;->b()V

    :cond_1
    iget-object v0, v0, Lhos;->E:Lhpq;

    iget-object v3, v0, Lhpq;->g:Lhwu;

    invoke-virtual {v3, v1}, Lhwu;->d(Z)V

    invoke-virtual {v0, v2}, Lhpq;->c(Z)V

    iget-object v1, v0, Lhpq;->n:Lczx;

    iget-object v0, v0, Lhpq;->J:Lczy;

    invoke-interface {v1, v0}, Lczx;->g(Lczy;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    invoke-virtual {v0, v1}, Lhos;->i(Z)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    invoke-virtual {v0, v2}, Lhos;->i(Z)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->y:Landroid/hardware/SensorManager;

    iget-object v2, v0, Lhos;->x:Landroid/hardware/SensorEventListener;

    iget-object v0, v0, Lhos;->H:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :pswitch_13
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    check-cast v0, Lhpg;

    invoke-virtual {v0}, Lhpg;->f()V

    return-void

    :cond_2
    sget-object v3, Licn;->e:Licn;

    :goto_1
    invoke-virtual {v1, v3}, Lico;->d(Licn;)V

    iget-object v0, v0, Lhoz;->n:Ljes;

    iget-object v1, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v1, Lhos;

    iget-object v1, v1, Lhos;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    invoke-virtual {v0}, Lhos;->h()Z

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
