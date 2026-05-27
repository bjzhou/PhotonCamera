.class public final synthetic Ldfd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldfo;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldfv;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldgb;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldgc;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldgf;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldgh;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhec;I)V
    .locals 0

    iput p2, p0, Ldfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Ldfd;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldgh;

    iget-object v1, v0, Ldgh;->c:Ldgj;

    invoke-virtual {v1}, Ldgj;->b()V

    invoke-virtual {v0}, Ldgh;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldgh;

    iget-object v3, v0, Ldgh;->a:Lmqp;

    check-cast v3, Lmqt;

    iget-object v3, v3, Lmqt;->a:Ljava/lang/Object;

    check-cast v3, Ldsy;

    invoke-interface {v3}, Ldsy;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Ldgh;->a:Lmqp;

    check-cast v3, Lmqt;

    iget-object v3, v3, Lmqt;->a:Ljava/lang/Object;

    check-cast v3, Ldsy;

    invoke-interface {v3}, Ldsy;->d()Ldsv;

    move-result-object v3

    new-instance v4, Lfjq;

    iget-object v3, v3, Ldsv;->a:[F

    invoke-direct {v4, v3}, Lfjq;-><init>([F)V

    invoke-static {v4}, Ldgw;->d(Lfjq;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v0, Ldgh;->e:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Ldgh;->f:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Ldgh;->j:Z

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v6, v0, Ldgh;->c:Ldgj;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v4, v5, v7, v8}, Ldgj;->a(FFJ)V

    iget-object v6, v0, Ldgh;->d:Ldgm;

    invoke-interface {v6}, Ldgm;->f()V

    iget-object v6, v0, Ldgh;->c:Ldgj;

    iget-object v7, v6, Ldgj;->f:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Ldgj;->f:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldgr;

    invoke-virtual {v6}, Ldgr;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Ldgh;->f:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldfb;

    iget-boolean v7, v6, Ldfb;->c:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v6, Ldfb;->d:Z

    if-eqz v7, :cond_2

    iget-object v7, v6, Ldfb;->e:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, v6, Ldfb;->e:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    new-instance v7, Ldfc;

    invoke-direct {v7, v6, v4, v5, v1}, Ldfc;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V

    invoke-virtual {v6, v7}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean v6, v0, Ldgh;->g:Z

    if-nez v6, :cond_4

    iget-object v6, v0, Ldgh;->f:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldfb;

    invoke-virtual {v6}, Ldfb;->d()V

    iget-object v6, v0, Ldgh;->e:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lell;

    sget-object v7, Lelm;->e:Lelm;

    invoke-interface {v6, v7}, Lell;->i(Lelm;)V

    iput-boolean v2, v0, Ldgh;->g:Z

    iget-object v6, v0, Ldgh;->d:Ldgm;

    sget-object v7, Lmpx;->a:Lmpx;

    invoke-interface {v6, v7}, Ldgm;->e(Lmqp;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ldgh;->c()V

    :cond_4
    :goto_0
    iget-boolean v6, v0, Ldgh;->g:Z

    if-eqz v6, :cond_6

    invoke-static {v4, v5}, Ldgh;->i(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v1, v0, Ldgh;->i:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Ldgh;->d:Ldgm;

    invoke-interface {v1}, Ldgm;->d()V

    iput-boolean v2, v0, Ldgh;->i:Z

    goto :goto_1

    :cond_5
    iput-boolean v1, v0, Ldgh;->i:Z

    :cond_6
    :goto_1
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Ldgh;->i(FF)Z

    move-result v1

    iput-boolean v1, v0, Ldgh;->h:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    check-cast v0, Ldgf;

    iget-wide v4, v0, Ldgf;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    invoke-virtual {v0}, Ldgf;->d()V

    iput v1, v0, Ldgf;->a:I

    :cond_7
    return-void

    :pswitch_2
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhec;->a()V

    return-void

    :pswitch_3
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldgc;

    invoke-virtual {v0}, Ldgc;->b()V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldgb;

    iget-object v1, v0, Ldgb;->h:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Ldgb;->e:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Ldgb;->h:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldne;

    iget-object v2, v0, Ldgb;->g:Landroid/view/View$OnClickListener;

    iget-object v0, v0, Ldgb;->f:Landroid/view/View$OnClickListener;

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, v1, Ldne;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Ldne;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f0e00e4

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f0b0305

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0b0306

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v0, Lhrz;

    const/4 v1, 0x4

    const v2, 0x7f140478

    invoke-virtual {v0, v1, v2, v3}, Lhrz;->l(IILandroid/view/View;)V

    :cond_8
    return-void

    :pswitch_5
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldgb;

    iget-object v1, v0, Ldgb;->d:Ldgc;

    invoke-virtual {v1}, Ldgc;->c()V

    iget-object v0, v0, Ldgb;->c:Lfbz;

    invoke-interface {v0}, Lfbz;->p()V

    return-void

    :pswitch_6
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldgc;

    invoke-virtual {v0}, Ldgc;->a()V

    return-void

    :pswitch_7
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfv;

    iget-object v1, v0, Ldfv;->d:Ldgm;

    invoke-interface {v1}, Ldgm;->g()V

    iget-object v1, v0, Ldfv;->e:Ldfy;

    invoke-virtual {v1}, Ldfy;->b()V

    invoke-virtual {v0}, Ldfv;->c()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iput-wide v1, v0, Ldfv;->m:J

    return-void

    :pswitch_8
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfv;

    invoke-virtual {v0}, Ldfv;->g()V

    invoke-virtual {v0}, Ldfv;->c()V

    return-void

    :pswitch_9
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfv;

    iget-object v4, v0, Ldfv;->c:Lmqp;

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ldsy;

    invoke-interface {v4}, Ldsy;->e()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v0, Ldfv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Can not update pitch roll indicator because camera orientation feature is empty."

    const/16 v2, 0x362

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_9
    iget-object v4, v0, Ldfv;->c:Lmqp;

    check-cast v4, Lmqt;

    iget-object v4, v4, Lmqt;->a:Ljava/lang/Object;

    check-cast v4, Ldsy;

    invoke-interface {v4}, Ldsy;->d()Ldsv;

    move-result-object v4

    invoke-static {v4}, Lfjo;->a(Ldsv;)Lfjo;

    move-result-object v4

    iget v5, v4, Lfjo;->b:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, v4, Lfjo;->c:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    iput-object v4, v0, Ldfv;->l:Lmqp;

    iget-boolean v4, v0, Ldfv;->n:Z

    if-nez v4, :cond_a

    sget-object v1, Ldfv;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x366

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    iget-boolean v0, v0, Ldfv;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "Can not update PitchRollIndicator: cameraCoachHudController = %s, inAppNotificationController = %s, isHintEnabled = %s"

    invoke-interface {v1, v2, v3, v3, v0}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v7, v0, Ldfv;->m:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_b

    goto/16 :goto_4

    :cond_b
    sget-wide v7, Ldfv;->b:J

    add-long/2addr v3, v7

    iput-wide v3, v0, Ldfv;->m:J

    iget-object v3, v0, Ldfv;->d:Ldgm;

    invoke-interface {v3}, Ldgm;->f()V

    iget-object v3, v0, Ldfv;->e:Ldfy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v5, v6, v7, v8}, Ldfy;->a(FFJ)V

    iget-object v3, v0, Ldfv;->e:Ldfy;

    iget-object v3, v3, Ldfy;->b:Ldgr;

    invoke-virtual {v3}, Ldgr;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Ldfv;->g:Lmqp;

    check-cast v3, Lmqt;

    iget-object v3, v3, Lmqt;->a:Ljava/lang/Object;

    check-cast v3, Ldfb;

    iget-boolean v4, v3, Ldfb;->c:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Ldfb;->d:Z

    if-eqz v4, :cond_c

    iget-object v4, v3, Ldfb;->e:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v3, v3, Ldfb;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    new-instance v4, Ldfc;

    invoke-direct {v4, v3, v6, v5, v2}, Ldfc;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v3, v6

    if-ltz v8, :cond_e

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    cmpg-double v5, v3, v6

    if-gez v5, :cond_d

    const/4 v3, 0x1

    goto :goto_2

    :cond_d
    const/4 v3, 0x0

    goto :goto_2

    :cond_e
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v0, Ldfv;->k:Z

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Ldfv;->i:Z

    if-eqz v3, :cond_10

    iget-boolean v1, v0, Ldfv;->j:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Ldfv;->d:Ldgm;

    invoke-interface {v1}, Ldgm;->d()V

    :cond_f
    iput-boolean v2, v0, Ldfv;->j:Z

    goto :goto_3

    :cond_10
    iput-boolean v1, v0, Ldfv;->j:Z

    :goto_3
    iget-boolean v1, v0, Ldfv;->i:Z

    if-nez v1, :cond_11

    iget-object v1, v0, Ldfv;->g:Lmqp;

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Ldfb;

    invoke-virtual {v1}, Ldfb;->d()V

    iget-object v1, v0, Ldfv;->h:Lmqp;

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Lell;

    sget-object v3, Lelm;->e:Lelm;

    invoke-interface {v1, v3}, Lell;->i(Lelm;)V

    iput-boolean v2, v0, Ldfv;->i:Z

    iget-object v1, v0, Ldfv;->d:Ldgm;

    iget-object v0, v0, Ldfv;->l:Lmqp;

    invoke-interface {v1, v0}, Ldgm;->e(Lmqp;)V

    return-void

    :cond_11
    :goto_4
    return-void

    :cond_12
    iget-object v1, v0, Ldfv;->d:Ldgm;

    invoke-interface {v1}, Ldgm;->g()V

    invoke-virtual {v0}, Ldfv;->c()V

    return-void

    :pswitch_a
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfv;

    invoke-virtual {v0}, Ldfv;->e()V

    return-void

    :pswitch_b
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfo;

    invoke-virtual {v0}, Ldfo;->i()V

    return-void

    :pswitch_c
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfo;

    invoke-virtual {v0}, Ldfo;->g()V

    return-void

    :pswitch_d
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Ldfo;

    iget-object v1, v0, Ldfo;->r:Lejf;

    invoke-virtual {v1}, Lejf;->a()V

    invoke-virtual {v0}, Ldfo;->c()V

    return-void

    :pswitch_e
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfq;

    invoke-virtual {v0}, Ldfq;->a()V

    return-void

    :pswitch_f
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfq;

    invoke-virtual {v0}, Ldfq;->a()V

    return-void

    :pswitch_10
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgl;

    invoke-virtual {v0}, Ldgl;->b()V

    return-void

    :pswitch_11
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfz;

    invoke-virtual {v0}, Ldfz;->a()V

    return-void

    :pswitch_12
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgl;

    invoke-virtual {v0}, Ldgl;->b()V

    return-void

    :pswitch_13
    iget-object v0, p0, Ldfd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfz;

    invoke-virtual {v0}, Ldfz;->a()V

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
