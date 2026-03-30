.class public final Lhii;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqs;


# instance fields
.field public final a:Loyd;

.field public b:Z

.field public c:Z

.field public d:Lrss;

.field public final e:Llad;

.field public final f:Lfwv;


# direct methods
.method public constructor <init>(Llad;Lfwv;Loyd;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhii;->f:Lfwv;

    nop

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

    :goto_4
    iput-object p3, p0, Lhii;->a:Loyd;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lhii;->d:Lrss;

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

    :goto_6
    iput-object p1, p0, Lhii;->e:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lhii;->c:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lhii;->b:Z

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

    nop

    nop

    :goto_a
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method static final f(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lpci;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v4, 0x21

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

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

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lgnw;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p0, v0}, Lgnw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    move-object v0, p1

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

    :goto_11
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final a(Lpcg;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhii;->d:Lrss;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhii;->d:Lrss;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Lpcg;->e:I

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

    :goto_5
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_9
    iput p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a:F

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    :goto_3
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

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
    iget-object p0, p0, Lhii;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lhhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lhii;->c:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhii;->d:Lrss;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

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

    :goto_13
    invoke-direct {v1, p0, v2}, Lhhs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lhhs;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lhhs;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    :goto_1b
    const/16 v2, 0xa

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, v2}, Lhhs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    :goto_1d
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    const/16 v2, 0xc

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

    nop

    :goto_24
    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_27
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1, p0, v2}, Lhhs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    :goto_29
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lhii;->c:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d(Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhii;->d:Lrss;

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

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->e:Z

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lhii;->d:Lrss;

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

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    iput-boolean v0, p0, Lhii;->b:Z

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

    :goto_2
    return-void

    nop

    nop
.end method
