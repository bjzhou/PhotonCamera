.class public final Lkvo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ltxm;Ltxm;I)V
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

    nop

    :goto_1
    iput-object p2, p0, Lkvo;->b:Ltxm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkvo;->a:Ltxm;

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
    iput p3, p0, Lkvo;->c:I

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkvo;->b:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkvo;->a:Ltxm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p3, p0, Lkvo;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lkvo;->b()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lkvo;->c:I

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

    :goto_b
    invoke-virtual {p0}, Lkvo;->b()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lkvo;->b()Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Loyn;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lhoh;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lfwb;->b()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_8
    invoke-virtual {p0, v4}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lkvo;->a:Ltxm;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    move v1, v2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lkvo;->c:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_26

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    :goto_17
    if-nez v3, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    check-cast p0, Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

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

    nop

    :goto_1a
    check-cast v0, Lrss;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    :goto_1d
    check-cast p0, Lfwb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lkvo;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v3, Lnyo;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_34

    nop

    nop

    :goto_27
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Lhno;->c:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lkvo;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lkvo;->a:Ltxm;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lkvo;->a:Ltxm;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_38
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_39
    sget-object v4, Lhmk;->c:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lkvo;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne v0, v1, :cond_8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, p0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x1

    nop

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

    nop

    :goto_3f
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    :goto_40
    if-eqz p0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_44
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method
