.class public final synthetic Lfcz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfda;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfeq;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfes;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfey;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfgp;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfhx;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfid;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liec;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Lfcz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcz;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lfcz;->b:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lfid;

    iget-object v2, v1, Lfid;->a:Lfgg;

    invoke-interface {v2}, Lfgg;->h()V

    iget-object v2, v1, Lfid;->f:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lfid;->f:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgy;

    invoke-interface {v2, v0}, Lfgy;->d(Lfgx;)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfid;

    invoke-virtual {v0}, Lfid;->g()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfid;

    invoke-virtual {v0}, Lfid;->h()V

    iget-object v2, v0, Lfid;->d:Landroid/os/Handler;

    new-instance v3, Lfcz;

    invoke-direct {v3, v0, v1}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-boolean v1, v0, Lfid;->s:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lfid;->f()V

    return-void

    :cond_0
    iput-boolean v4, v0, Lfid;->r:Z

    invoke-virtual {v0}, Lfid;->g()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfhx;

    invoke-virtual {v0}, Lfhx;->c()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfgp;

    invoke-virtual {v0}, Lfgp;->c()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lfgp;

    iget-object v1, v1, Lfgp;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    move-object v1, v0

    check-cast v1, Lfgp;

    iget-object v1, v1, Lfgp;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lfgp;

    iget-object v1, v1, Lfgp;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lfgp;

    iget-object v1, v1, Lfgp;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldxq;

    invoke-virtual {v1}, Ldxq;->close()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_6
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfgp;

    iget-object v0, v0, Lfgp;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxq;

    invoke-virtual {v0}, Ldxq;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfey;

    invoke-virtual {v0}, Lfey;->k()Lgkr;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lgkr;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lfkk;

    iget-object v2, v1, Lfkk;->b:Lfkg;

    invoke-virtual {v2}, Lfkg;->a()J

    move-result-wide v4

    monitor-enter v0

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v6

    move-object v2, v0

    check-cast v2, Lfkk;

    iput-wide v6, v2, Lfkk;->f:J

    move-object v2, v0

    check-cast v2, Lfkk;

    iput-boolean v3, v2, Lfkk;->e:Z

    move-object v2, v0

    check-cast v2, Lfkk;

    iget-object v2, v2, Lfkk;->d:Ljava/util/Set;

    invoke-static {v2}, Llyh;->C(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v1, Lfkk;->a:Lkaq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongPressEnded at "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfkj;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lfkj;->c(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    sget-object v0, Lfey;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Unable to signal long press end. Resources unexpectedly null."

    const/16 v2, 0x878

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    invoke-interface {v0}, Liec;->i()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    invoke-interface {v0}, Liec;->g()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfes;

    iget-object v1, v0, Lfes;->c:Landroid/os/Handler;

    new-instance v2, Lfcz;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lfcz;-><init>(Lfes;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_d
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfes;

    iget-object v3, v0, Lfes;->e:Lgxb;

    iget-object v5, v0, Lfes;->a:Lihg;

    iget-object v5, v5, Lihg;->c:Ljava/lang/Object;

    iget-object v6, v0, Lfes;->b:Lell;

    iget-object v7, v3, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {v7}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v1, Lcgk;->t:Lcgk;

    goto/16 :goto_1

    :cond_4
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, v3, Lgxb;->a:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v8, v3, Lgxb;->a:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    const v9, 0x7f0e0076

    invoke-static {v8, v9, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v8, 0x7f0b01ed

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0b01ee

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0b01ec

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, v3, Lgxb;->a:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    const v12, 0x7f14026e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v3, Lgxb;->a:Ljava/lang/Object;

    check-cast v9, Landroid/content/Context;

    const v11, 0x7f14026d

    invoke-virtual {v9, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v3, Lgxb;->a:Ljava/lang/Object;

    check-cast v9, Landroid/content/Context;

    const v10, 0x7f08021d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lhqk;

    invoke-direct {v8}, Lhqk;-><init>()V

    iput-object v7, v8, Lhqk;->c:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v8, Lhqk;->b:Landroid/view/ViewGroup;

    const-wide/16 v9, 0x4

    invoke-static {v9, v10}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v5

    iput-object v5, v8, Lhqk;->a:Lj$/time/Duration;

    iput-object v6, v8, Lhqk;->f:Lell;

    iput v4, v8, Lhqk;->h:I

    invoke-virtual {v8}, Lhqk;->a()Lhql;

    move-result-object v4

    new-instance v5, Lfib;

    const/4 v6, 0x7

    invoke-direct {v5, v3, v6, v2, v2}, Lfib;-><init>(Lgxb;I[B[B)V

    new-instance v2, Lhdg;

    invoke-direct {v2, v4, v5, v1}, Lhdg;-><init>(Lhql;Ljava/lang/Runnable;I)V

    iput-object v2, v4, Lhql;->d:Ljava/lang/Runnable;

    invoke-virtual {v4}, Lhql;->j()V

    new-instance v1, Leym;

    const/16 v2, 0xa

    invoke-direct {v1, v4, v2}, Leym;-><init>(Lhql;I)V

    :goto_1
    iput-object v1, v0, Lfes;->d:Lkad;

    return-void

    :pswitch_e
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfes;

    invoke-virtual {v0}, Lfes;->a()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfeq;

    invoke-virtual {v0}, Lfeq;->b()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    const-string v1, "Register Gravity and Gyro Sensors listeners"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lfda;

    iget-object v1, v0, Lfda;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    if-eqz v1, :cond_5

    iget-object v3, v0, Lfda;->c:Landroid/hardware/SensorManager;

    iget-object v4, v0, Lfda;->f:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_5
    iget-object v1, v0, Lfda;->e:Landroid/hardware/Sensor;

    if-eqz v1, :cond_6

    iget-object v3, v0, Lfda;->c:Landroid/hardware/SensorManager;

    iget-object v0, v0, Lfda;->f:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfda;

    iget-object v1, v0, Lfda;->c:Landroid/hardware/SensorManager;

    iget-object v0, v0, Lfda;->f:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfda;

    iget-object v0, v0, Lfda;->b:Lflf;

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_13
    iget-object v0, p0, Lfcz;->a:Ljava/lang/Object;

    check-cast v0, Lfda;

    iget-object v0, v0, Lfda;->g:Lcmo;

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v1}, Lcmo;->f(Lika;)V

    return-void

    :cond_7
    :goto_2
    iput-boolean v4, v1, Lfid;->h:Z

    iget-object v0, v1, Lfid;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iget-object v0, v1, Lfid;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iget-object v0, v1, Lfid;->t:Lguf;

    invoke-virtual {v0}, Lguf;->close()V

    iget-object v0, v1, Lfid;->p:Llck;

    invoke-virtual {v0}, Llck;->close()V

    iget-object v0, v1, Lfid;->q:Lldh;

    invoke-virtual {v0}, Lldh;->close()V

    iget-object v0, v1, Lfid;->o:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    iget-object v0, v1, Lfid;->b:Lfhy;

    invoke-interface {v0}, Lfhy;->e()V

    return-void

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
