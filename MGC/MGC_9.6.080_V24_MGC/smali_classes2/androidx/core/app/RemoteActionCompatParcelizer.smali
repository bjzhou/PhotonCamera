.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static read(Lekx;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    goto/32 :goto_1d

    nop

    nop

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

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1, v2}, Lekx;->d(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

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

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1, v2}, Lekx;->l(ZI)Z

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

    :goto_7
    invoke-virtual {p0, v1, v2}, Lekx;->d(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Lekx;->t(Leky;)Leky;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, Landroid/app/PendingIntent;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1, v2}, Lekx;->l(ZI)Z

    move-result p0

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

    :goto_15
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    iput-boolean p0, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1, v2}, Lekx;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

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

    nop

    :goto_1a
    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_22
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Lekx;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, v1}, Lekx;->f(ZI)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, v1}, Lekx;->g(Ljava/lang/CharSequence;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    invoke-virtual {p1, p0, v0}, Lekx;->f(ZI)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    const/4 v1, 0x3

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

    nop

    :goto_14
    invoke-virtual {p1, v0, v1}, Lekx;->i(Landroid/os/Parcelable;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Lekx;->u(Leky;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    const/4 v1, 0x4

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

    nop

    :goto_19
    invoke-virtual {p1, v0, v1}, Lekx;->g(Ljava/lang/CharSequence;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
