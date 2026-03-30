.class public final Lrmg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lelf;


# instance fields
.field public a:I

.field public b:I

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrmg;->c:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p0, p1, Lcom/google/android/material/tabs/TabLayout;->C:I

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object p1, p0, Lrmg;->c:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p1, p0, Lrmg;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

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

    :goto_6
    iput v0, p0, Lrmg;->a:I

    nop

    goto/32 :goto_4

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

    :goto_8
    iget p0, p0, Lrmg;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lrmg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v3, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrmg;->c:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    if-lt p1, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_f

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Lrmg;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    move v2, v4

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_16
    iget v1, p0, Lrmg;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

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

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->b()I

    move-result v1

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

    :goto_1b
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    if-ne v1, p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/tabs/TabLayout;->l(Lrmf;Z)V

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->d(I)Lrmf;

    move-result-object p0

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
.end method

.method public final c(IF)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

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

    :goto_1
    const v0, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    :goto_3
    move p0, v4

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    :goto_7
    goto/32 :goto_29

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZZ)V

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v5, p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    move v4, v5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    if-eq v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_10
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v5, p0, Lrmg;->a:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    move v5, v4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    iget v0, p0, Lrmg;->b:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lrmg;->a:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v3, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrmg;->c:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_25
    if-eq v5, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    :goto_26
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    :goto_27
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_29
    move p0, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_14

    nop

    :goto_2b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    :goto_2d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method
