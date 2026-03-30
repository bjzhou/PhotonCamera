.class public final Lkeg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkeg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p2, p0, Lkeg;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x11

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->b:Lrbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljxk;

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

    :goto_8
    iget-object p0, p0, Lkeg;->a:Ljava/lang/Object;

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

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lmyv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    iget-object p0, p0, Lkeg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lkeg;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p1, Lkek;->N:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0, v1, v2}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_c

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lkeg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter v0

    nop

    :try_start_0
    iget-object p1, p0, Lkeg;->a:Ljava/lang/Object;

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Llpz;

    nop

    nop

    iget-boolean v1, v1, Llpz;->e:Z

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Llpz;

    nop

    iget-object p1, p1, Llpz;->c:Loyd;

    nop

    nop

    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    if-eqz p1, :cond_3

    nop

    nop

    iget-object p0, p0, Lkeg;->a:Ljava/lang/Object;

    nop

    check-cast p0, Llpz;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llpz;->b()V

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Lkek;->D(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lkek;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    const v0, 0xd

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

    :goto_1e
    iget-object p1, p1, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    :goto_23
    iget v0, p1, Lkek;->q:I

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

    :goto_24
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
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

    :goto_26
    invoke-virtual {p0, p1}, Lrbp;->e(Lmyv;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Lkek;

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

    :goto_2a
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lkeg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p1, Llpz;->d:Ljava/lang/Object;

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

    :goto_2d
    invoke-static {p1}, Lmyy;->a(I)Lmyy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Llpz;

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

    :goto_31
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop
.end method
