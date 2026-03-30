.class public abstract Lbox;
.super Lbmb;
.source "PG"


# direct methods
.method public constructor <init>(Luaz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lbmb;-><init>(Luaz;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final b(Lboy;Lbri;)Lbri;
    .locals 2

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_0
    iget-object p0, p1, Lboy;->e:Ljava/lang/Object;

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

    :goto_1
    iget-object v1, p2, Lbrf;->a:Ljava/lang/Object;

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

    :goto_2
    iget-object p0, v0, Lbmy;->a:Lbob;

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

    :goto_3
    invoke-direct {v0, p0, p1}, Lbom;-><init>(Ljava/lang/Object;Lbqt;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    move-object v0, p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lbrg;->a:Lbrg;

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    :goto_a
    iget-object p1, p1, Lboy;->c:Lbqt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

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

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Lbmy;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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

    :goto_12
    iget-object p0, p2, Lbmm;->a:Lubk;

    nop

    :goto_13
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean p0, p1, Lboy;->d:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p2, Lbmm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_19
    instance-of p0, p2, Lbmm;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    const v1, 0xf

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

    :goto_1b
    invoke-virtual {p1}, Lboy;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

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

    :goto_1c
    invoke-interface {p0, p2}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p2, Lbrf;

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

    :goto_1e
    iget-boolean p0, p1, Lboy;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_13

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p1, Lboy;->e:Ljava/lang/Object;

    nop

    nop

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

    :goto_22
    new-instance v0, Lbom;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lboy;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p2, p0}, Lbrf;-><init>(Ljava/lang/Object;)V

    :goto_25
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    instance-of p0, p2, Lbrf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    move-object v0, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_8
    :goto_29
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    :goto_2b
    instance-of p0, p2, Lbmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    if-lez v0, :cond_a

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

    :cond_a
    goto/32 :goto_40

    nop

    :goto_2d
    new-instance p2, Lbrf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p2, v0}, Lbmy;-><init>(Lbob;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Lboy;->a()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_13

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-boolean p0, p1, Lboy;->b:Z

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

    :goto_39
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean p0, p1, Lboy;->d:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance p2, Lbmy;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_40
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract c(Ljava/lang/Object;)Lboy;
.end method

.method public final d(Ljava/lang/Object;)Lboy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lbox;->c(Ljava/lang/Object;)Lboy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    const/4 p1, 0x0

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

    :goto_3
    iput-boolean p1, p0, Lboy;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
