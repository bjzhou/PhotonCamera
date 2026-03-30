.class public final synthetic Lhpe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Z

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lhpe;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lhpe;->a:Z

    nop

    nop

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget v0, p0, Lhpe;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x2

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

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_d
    const/4 v1, 0x1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lnew;->l()Lgcb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const p0, 0x7f07071a

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lhpe;->a:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lhpe;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

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
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v3}, Lnhb;->z(I)V

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Lnhb;->l(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Lnhb;->t(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lgcb;

    nop

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

    :goto_11
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Lnhb;->u(I)V

    goto/32 :goto_20

    nop

    nop

    :goto_13
    const v1, 0x7f0706d0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Lnhb;->m(I)V

    goto/32 :goto_3a

    nop

    nop

    :goto_15
    iget-boolean p0, p0, Lhpe;->a:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    new-instance v0, Lnew;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_17
    xor-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1, p0}, Lhpf;->a(JZ)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1a
    const p0, 0x7f070717

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_35

    nop

    nop

    :goto_1e
    goto/16 :goto_2c

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v2, 0x7f070716

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Lnhb;->o(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    :goto_23
    const v3, 0x7f06005b

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

    :goto_24
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lhpf;->c:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Lnhc;->a()Lnhb;

    move-result-object v0

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

    nop

    :goto_27
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v2}, Lnhb;->A(I)V

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    const p0, 0x7f070718

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    :goto_2c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p0}, Lnhb;->p(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v3, 0x7f060a8e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_30
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_33
    const p0, 0x7f0706d1

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

    :goto_34
    sget-object v0, Lgbi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p1, Landroid/database/Cursor;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    :goto_37
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p0}, Lnhb;->q(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v3}, Lnhb;->n(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v3, 0x7f060058

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x1b

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

    :goto_3c
    invoke-virtual {v0, p0}, Lnew;->m(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3d
    iget-boolean p0, p0, Lhpe;->a:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

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

    :goto_3f
    const-string v0, "_id"

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_40
    return-object v0

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v2}, Lnhb;->s(I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0, p1}, Lnew;-><init>(Lgcb;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0, v3}, Lnhb;->j(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

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

    :goto_48
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lhpe;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const v1, 0x16

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

    :goto_13
    return-object p0

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
