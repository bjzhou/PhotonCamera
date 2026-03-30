.class public final Lfxc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lfxg;

.field public final c:Lfxa;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Landroid/content/DialogInterface$OnClickListener;

.field public final f:Landroid/content/DialogInterface$OnClickListener;

.field public final g:Lsuu;

.field public h:Z

.field public i:Ldr;

.field public final j:Lfdn;

.field private final k:Lowu;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Z

.field private final n:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(IZ)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljnx;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, p1, p2, v1}, Ljnx;-><init>(Lfxc;IZI)V

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfxc;->k:Lowu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Lfxg;Ljph;Lfxa;Lfdn;Lowu;Ljava/util/concurrent/Executor;ZLsuu;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    iput-object v0, p0, Lfxc;->i:Ldr;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfwq;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p7, p0, Lfxc;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    new-instance v0, Lfwq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    iput-object p2, p0, Lfxc;->b:Lfxg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lfxc;->e:Landroid/content/DialogInterface$OnClickListener;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p6, p3, p0}, Ljmo;->b(Lowu;Ljph;Ljpv;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, v1}, Lfwq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lfxc;->f:Landroid/content/DialogInterface$OnClickListener;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object p5, p0, Lfxc;->j:Lfdn;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lfxc;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean p8, p0, Lfxc;->m:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p0, v1}, Lfwq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    nop

    :goto_17
    iput-object p1, p0, Lfxc;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p10, p0, Lfxc;->n:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

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

    :goto_19
    iput-object p9, p0, Lfxc;->g:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    iput-object p6, p0, Lfxc;->k:Lowu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p4, p0, Lfxc;->c:Lfxa;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_21
    iput-object v0, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ldr;->isShowing()Z

    move-result v0

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfxc;->i:Ldr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfxc;->i:Ldr;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lel;->dismiss()V

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 9

    goto/32 :goto_53

    nop

    nop

    :goto_0
    iget-object v5, p0, Lfxa;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v3, Lsbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    check-cast v7, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v5, p0, Lfxa;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lfxc;->n:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_11
    iput-boolean v1, p0, Lfxc;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_12
    invoke-direct {p0, v0, v1}, Lfxc;->23ce148e54b083367f51e25c7971761em(IZ)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v5, v4, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lfxc;->c:Lfxa;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lfxc;->g:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_19
    if-eqz v7, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    :goto_1a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    :goto_1c
    if-eqz v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    iput v3, v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->i:I

    nop

    nop

    :goto_23
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_6b

    nop

    :goto_26
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v2, p0, v1, v3, v4}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_31
    iget v4, v4, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lfxa;->b:Lowu;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_33
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_62

    nop

    nop

    :goto_34
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v4, Lsbh;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_16

    nop

    nop

    :goto_39
    const v1, 0x8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3b
    if-nez v1, :cond_6

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v7, v2, Lfxa;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lfxc;->c:Lfxa;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lfxa;->d:Lryb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_40
    return-void

    nop

    :goto_41
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lfxc;->a()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1f

    nop

    :goto_48
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v5, v0

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v1, Ljava/util/ArrayList;

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

    nop

    nop

    :goto_4e
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v2}, Lfxa;->b()Z

    move-result v2

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

    :goto_51
    iget-object v3, v2, Lfxa;->d:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0x4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_54
    if-lt v0, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lfxc;->d()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v5, :cond_a

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, p0, Lfxc;->n:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_58
    const v0, 0x7f1401bd

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v0, Lgit;->g:Lgit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v6}, Lfxa;->a(Ljava/lang/String;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-boolean v2, p0, Lfxc;->m:Z

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5f
    invoke-static {}, Lowu;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_60
    iget-object v2, p0, Lfxc;->c:Lfxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_63
    iget-object v7, v2, Lfxa;->c:Ljava/util/Map;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/16 v3, 0x14

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-boolean v0, p0, Lfxc;->h:Z

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_66
    new-instance v2, Less;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_67
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_69
    move-object v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6a
    iget v3, v3, Lsbh;->c:I

    nop

    nop

    :goto_6b
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v7, :cond_b

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_b
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_6e
    iget-object v7, v2, Lfxa;->c:Ljava/util/Map;

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

    nop

    :goto_6f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop
.end method

.method public c(I[Ljava/lang/String;[I)V
    .locals 6

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p1, Lfxa;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p2, p0, v0}, Lfxf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    array-length p1, p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7
    aget-object v4, p2, v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

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

    :goto_9
    aget v5, p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_d
    sget-object p2, Llyr;->b:Llze;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_33

    nop

    :goto_12
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lfxc;->g:Lsuu;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_16
    if-nez p1, :cond_2

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    move v5, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lfxa;->b()Z

    move-result p1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    if-lt v2, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3b

    nop

    nop

    :goto_20
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const p1, 0x7f1401be

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_40

    nop

    nop

    :goto_24
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v3, :cond_6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_7

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lfxc;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_28
    aget-object v4, p2, v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p1, Lfxa;->c:Ljava/util/Map;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {}, Lowu;->d()Z

    move-result p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p1, Lfxa;->e:Llyv;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_31
    array-length v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_33
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_34
    new-instance p2, Lfxf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    :goto_36
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v3, p1, Lfxa;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_38
    iget-object p0, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-object v4, p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3b
    iget-object p1, p0, Lfxc;->c:Lfxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3c
    const v0, 0x906281f

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_3d
    iget-object p1, p0, Lfxc;->c:Lfxa;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    sget-object p1, Lgit;->g:Lgit;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3f
    move v2, v1

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, p2, p3}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_45
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v0, 0x1

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

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4b
    invoke-direct {p0, p1, v1}, Lfxc;->23ce148e54b083367f51e25c7971761em(IZ)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p1, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4e
    move v5, v1

    nop

    :goto_4f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p1, p0, Lfxc;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_51
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Lfxa;->c()Z

    move-result p2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-ne p1, v0, :cond_a

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_56
    array-length p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_57
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/32 :goto_56

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    goto :goto_7

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfxa;->c()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lfxc;->m:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfxc;->c:Lfxa;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
