.class public final synthetic Lmcr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmdi;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lmcr;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.method public final a(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lmdw;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget v2, p0, v2

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p1, Lmdw;->d:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lmdk;->k(Llyi;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_d
    iget-object p0, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_37

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lmdw;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    check-cast p0, [F

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x4

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
    iget v0, p0, Lmcr;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lmeg;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p1, Lmdw;->e:Z

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lpol;->k()Lprw;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lmdw;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0}, Lmef;->b()V

    :goto_20
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p1, Lmdw;->a:Lmeh;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean p0, p1, Lmdw;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, p0}, Lmdw;->h(Z)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_16

    nop

    nop

    :goto_28
    invoke-interface {p1}, Lmef;->a()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p1, Lmdw;->a:Lmeh;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2a
    const-string p1, "Unable to fork ref counted image"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2b
    iget-object p1, p1, Lmdw;->a:Lmeh;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    instance-of v0, p1, Lmeg;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Lscz;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Lmdk;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2

    nop

    nop

    :goto_34
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_6
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_24

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    :goto_39
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p1, Lmdw;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3e
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_42
    iget-boolean v0, p1, Lmdw;->d:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1, p0}, Lmeg;->i(Lpro;)V

    :goto_44
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_47
    iget-boolean v0, p1, Lmdw;->e:Z

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_48
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_49
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_4a
    check-cast p0, Lpol;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    aget p0, p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    instance-of v0, p1, Lmef;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_50
    invoke-direct {v0, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_52
    float-to-int v2, v2

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

    :goto_53
    check-cast p0, Llyi;

    nop

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

    :goto_54
    invoke-virtual {p1, p0}, Lmdw;->g(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p1, Lmdw;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_56
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_b
    goto/32 :goto_e

    nop

    :goto_57
    new-instance v0, Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-boolean p0, p1, Lmdw;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lmcr;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, p0}, Lmdw;->a(Lpnu;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_5d
    const/4 v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5e
    check-cast p1, Lmef;

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

    :goto_5f
    if-ne v0, v2, :cond_c

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_60
    instance-of p1, p0, Lmef;

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

    :goto_61
    check-cast p1, Lmdw;

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

    :goto_62
    check-cast p0, Lmef;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_64
    const/16 p1, 0x108a

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_65
    float-to-int p0, p0

    nop

    goto/32 :goto_50

    nop

    nop
.end method
