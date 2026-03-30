.class public final synthetic Lgsd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lgsf;

.field public final synthetic b:I

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lgsf;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput p2, p0, Lgsd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p3, p0, Lgsd;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgsd;->a:Lgsf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lgzm;->b()V

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p1}, Lhhg;->s(Lgqg;Lgwo;F)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Lgqc;->b:Loyd;

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

    :goto_6
    if-ge v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgsf;->c:Lgqg;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->YJkg:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Integer;

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

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgsf;->f:Lpdf;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lgsd;->b:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

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

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lgsd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lgsf;->e:Lgwo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_1b
    if-gtz v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Lgvg;->o()V

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lgsf;->g:Lgzm;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0, p1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_22
    iget v0, p0, Lgsd;->c:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lgsd;->a:Lgsf;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lgsd;->a:Lgsf;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    iget-object p1, p0, Lgsf;->d:Lgqc;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    iget-object v0, p0, Lgsf;->f:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    if-ge v0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_28
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_5
    iget v0, p0, Lgsd;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop
.end method
