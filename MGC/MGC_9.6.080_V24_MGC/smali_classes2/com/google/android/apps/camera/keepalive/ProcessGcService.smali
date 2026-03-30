.class public Lcom/google/android/apps/camera/keepalive/ProcessGcService;
.super Landroid/app/job/JobService;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Lmjv;

.field public d:Lofu;

.field public e:Lqhg;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "com.google.android.apps.camera.keepalive.ProcessGcService"

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v3, p1, Lsoy;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    check-cast v3, Lskd;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_7
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3e

    nop

    nop

    :goto_b
    iget p1, v1, Lskd;->d:I

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, v1, Lskd;->am:Lsoy;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_10
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v3, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput p1, v1, Lsoy;->c:I

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    iput p1, v1, Lskd;->d:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lsoy;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1c
    iput-wide v1, p1, Lsoy;->d:J

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    or-int/lit16 p1, p1, 0x800

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    sub-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    or-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget p1, v1, Lsoy;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_27
    iput v1, v3, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    :goto_29
    iput v1, v3, Lskd;->f:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Lskd;->a:Lskd;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Lsoy;->a:Lsoy;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->c:Lmjv;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_2e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v1, Lskd;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_31
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_33
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    iget v1, v1, Lskc;->aG:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3a
    or-int/lit8 v3, v3, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v3, p1, Lsoy;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p1, Lsoy;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_40
    check-cast v1, Lsoy;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_42
    iput p1, v1, Lsoy;->b:I

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_43
    sget-object v1, Lskc;->ak:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->e:Lqhg;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    new-instance v2, Lixb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, p0, p1, v3, v4}, Lixb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v4, v0, Lqhg;->a:J

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->b:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Liye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Lmhz;->C(Landroid/content/Context;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->f:Z

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v2}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, "keepalive_sig"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ljcm;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->getApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    const-class v2, Ljcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_22
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    cmp-long v0, v2, v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return p0

    nop

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, p0}, Ljcm;->f(Lcom/google/android/apps/camera/keepalive/ProcessGcService;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop
.end method
