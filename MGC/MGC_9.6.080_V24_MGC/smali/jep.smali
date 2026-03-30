.class public final synthetic Ljep;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:I

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Ljep;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p2, p0, Ljep;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    iget v0, p0, Ljep;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ljgc;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

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

    :goto_9
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v0

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

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

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

    :goto_10
    const v1, 0x15

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Ljep;->a:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_12
    const-string v2, "Trying to measure distance to chip %s with zero width i.e. before layout"

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

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_15
    sget-object v0, Lndy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    sget-object v0, Ljgc;->b:Ljgc;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_17
    sub-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Ljgc;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Lndy;->a:Lsdb;

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

    nop

    nop

    :goto_21
    iget v0, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_22
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    check-cast p1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0x134c

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_27
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_29
    goto/32 :goto_3d

    nop

    nop

    :goto_2a
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2d
    iget p0, p0, Ljep;->a:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

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

    :goto_33
    const/4 p0, 0x4

    nop

    nop

    :goto_34
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_37
    goto/32 :goto_44

    nop

    :goto_38
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v0, 0xc

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3b
    const v0, 0xb

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

    :goto_3c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_5
    goto/32 :goto_43

    nop

    :goto_3d
    iget p0, p0, Ljep;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sub-int v0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p1, Landroid/widget/TextView;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget p0, p0, Ljep;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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
.end method
