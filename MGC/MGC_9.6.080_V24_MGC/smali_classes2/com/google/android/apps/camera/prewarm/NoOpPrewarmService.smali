.class public Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;
.super Landroid/service/media/CameraPrewarmService;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Loxi;

.field public c:Lmjw;

.field public d:Lmjv;

.field public e:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.apps.camera.prewarm.NoOpPrewarmService"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/service/media/CameraPrewarmService;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onCooldown(Z)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, v1, Lskd;->f:I

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

    :goto_2
    sget-object p1, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Lskd;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    check-cast v1, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Loxi;->a()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_10
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lskj;->a:Lskj;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v2, 0x20000

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    iget v0, v1, Lskd;->b:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    :goto_19
    or-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->b:Loxi;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lskj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, v1, Lskd;->s:Lskj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->d:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    iput v2, v1, Lskj;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    iput v0, v1, Lskd;->b:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    :goto_2b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v2, v1, Lskj;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p1, Ltkb;->b:Ltkg;

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

    :goto_2f
    sget-object v0, Lskc;->q:Lskc;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_6

    nop

    nop

    :goto_31
    iget v0, v1, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_32
    iget v0, v0, Lskc;->aG:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v1, Lskj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_34
    iput v2, v1, Lskj;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_35
    or-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    or-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_38
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v0, v1, Lskd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    check-cast v0, Llmg;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->getApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    check-cast v0, Liye;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lmjw;->a()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->c:Lmjw;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Landroid/service/media/CameraPrewarmService;->onCreate()V

    goto/32 :goto_8

    nop

    nop

    :goto_d
    const-class v1, Llmg;

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

    nop

    nop

    :goto_e
    const v0, 0x9

    nop

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

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, p0}, Llmg;->i(Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;)V

    goto/32 :goto_c

    nop

    nop
.end method

.method public final onPrewarm()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    iget v4, v2, Lskj;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v3, v2, Lskj;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, v2, Lskd;->s:Lskj;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    or-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->d:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    check-cast v2, Lskd;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    :goto_16
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lskc;->q:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, v2, Lskd;->f:I

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1b
    iput v1, v2, Lskd;->b:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Loxi;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_f

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_28

    nop

    :goto_1f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v3, 0x20000

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    :goto_23
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, v2, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    iput v3, v2, Lskj;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Lldq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v2, Lskj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lskj;->a:Lskj;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, v1, Lskc;->aG:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, v2, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    :goto_32
    or-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_34
    check-cast v2, Lskd;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput v1, v2, Lskd;->b:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->b:Loxi;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v1, Lskj;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_3a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    const-string p1, "KeepAlive is off. Prewarm ran, but the service won\'t stick."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Lhif;->o(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lmhz;->B()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    return p2

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lggy;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->e:Lmhz;

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

    :goto_9
    invoke-interface {p1}, Lggy;->a()Lhif;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p1, 0xf27

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    sget-object p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
