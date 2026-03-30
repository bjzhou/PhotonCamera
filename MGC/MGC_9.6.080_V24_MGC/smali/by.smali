.class public final synthetic Lby;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lehr;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldt;I)V
    .locals 0

    goto/32 :goto_3

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lby;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lby;->b:I

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lby;->a:Ljava/lang/Object;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lby;->b:I

    nop

    nop

    nop

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
.method public final a()Landroid/os/Bundle;
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lbr;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    iget-object v1, p0, Lnr;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lby;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/32 :goto_6

    nop

    nop

    :goto_c
    check-cast p0, Lcj;

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

    :goto_d
    new-instance v2, Ljava/util/ArrayList;

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

    :goto_e
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

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

    :goto_f
    const v1, 0x11

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

    :goto_10
    check-cast p0, Ldt;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lmy;->h:Lnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lnr;->g:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_27

    nop

    nop

    :goto_21
    iget v0, p0, Lby;->b:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lbr;->d:Lear;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_27
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Lear;->b(Leap;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Landroid/os/Bundle;

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

    :goto_2c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_2d
    invoke-virtual {p0}, Ldt;->i()Ldv;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string p0, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_33
    new-instance v0, Landroid/os/Bundle;

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

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcj;->a()Landroid/os/Bundle;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lbr;->e()V

    goto/32 :goto_3a

    nop

    nop

    :goto_36
    iget-object v2, p0, Lnr;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_37
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_38
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v0, Leap;->ON_STOP:Leap;

    nop

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

    :goto_3b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3c
    return-object p0

    nop

    :goto_3d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lnr;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lmy;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method
