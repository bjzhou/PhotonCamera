.class public final Lkeb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lkeb;->b:I

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

    :goto_3
    iput-object p1, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lnij;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lkek;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lkek;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lghe;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    sub-int v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lnij;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lnij;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b
    iget v2, p1, Lkek;->y:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v2, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lkek;->I()V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p1, Lghe;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    iput v0, p0, Lghe;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0xb4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lkeb;->b:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Lghe;->q:Lnfh;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_35

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_1d
    check-cast p0, Lghe;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Lnfh;->g()V

    :goto_1f
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_20
    const v1, 0xe

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_21
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    :goto_22
    iget-object p1, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lnij;

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

    :goto_24
    add-int/lit16 v2, v2, 0x168

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Lnij;->b(Z)V

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    :goto_27
    rem-int/lit16 v2, v2, 0x168

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

    :goto_28
    iget-object v0, p1, Lghe;->w:Landroid/view/WindowManager;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_29
    iget-object v0, p1, Lkek;->l:Landroid/view/WindowManager;

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

    nop

    :goto_2a
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    if-ne v0, p1, :cond_5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    :goto_30
    invoke-interface {p1}, Lnfk;->c()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_31
    sub-int v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_32
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Lkek;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_36
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p1, Lghe;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p1, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int/lit16 v2, v2, 0x168

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lkeb;->a:Ljava/lang/Object;

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

    :goto_3c
    iget-object p0, p0, Lkeb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    if-gtz p1, :cond_7

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Lnij;->a()I

    move-result p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int/lit16 v2, v2, 0x168

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    iget-object p1, p1, Lghe;->n:Lnfk;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    :goto_42
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_43
    if-ne v0, v2, :cond_8

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method
