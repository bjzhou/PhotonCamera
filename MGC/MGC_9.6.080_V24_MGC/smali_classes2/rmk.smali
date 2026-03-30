.class public final Lrmk;
.super Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;
.source "PG"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

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

    :goto_1
    iput p1, p0, Lrmk;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/4 p1, 0x0

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

    :goto_3
    invoke-direct {p0}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lrmk;->c:I

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
    iput-object v0, p0, Lrmk;->a:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

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


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iput p0, p1, Lcom/google/android/material/tabs/TabLayout;->C:I

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object p1, p0, Lrmk;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lrmk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lrmk;->c:I

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

    :goto_9
    iput v0, p0, Lrmk;->b:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iget v0, p0, Lrmk;->c:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final b(IFI)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_2
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_4
    if-eq p3, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_5
    const/4 v3, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x0

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

    nop

    nop

    :goto_7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZZ)V

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v4, p0, Lrmk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x2

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

    nop

    nop

    :goto_e
    if-nez p0, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    goto :goto_18

    nop

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

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

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v4, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iget p3, p0, Lrmk;->c:I

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

    nop

    :goto_15
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Lrmk;->b:I

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

    :goto_17
    goto :goto_23

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p3, p0, Lrmk;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, p1

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

    :goto_1d
    move v4, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    goto :goto_28

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    move v4, v3

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    move v2, p2

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    move-object v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_27
    move p0, v3

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move v4, v1

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

    :goto_2a
    move v3, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    :goto_2d
    if-eq p3, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrmk;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

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

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_10

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lrmk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    move v2, v4

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_12
    if-eq v1, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x2

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

    :goto_16
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->d(I)Lrmf;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    if-ne v1, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    iget v1, p0, Lrmk;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    const v0, 0x12

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

    :goto_1d
    const/4 v2, 0x1

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

    :goto_1e
    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/tabs/TabLayout;->l(Lrmf;Z)V

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    if-lt p1, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop
.end method
