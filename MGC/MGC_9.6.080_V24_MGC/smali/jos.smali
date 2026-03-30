.class public final synthetic Ljos;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljos;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Ljos;->d:I

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

    :goto_3
    iput-object p2, p0, Ljos;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Ljos;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Llxm;Landroid/graphics/Bitmap;II)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p2, p0, Ljos;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p4, p0, Ljos;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljos;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Ljos;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2b

    nop

    nop

    :goto_2
    check-cast p1, Lfxc;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-interface {p1, p0, v1, v0}, Llxb;->g(Llxm;Landroid/graphics/Bitmap;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

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

    :goto_5
    check-cast p0, Llxm;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ljos;->c:Ljava/lang/Object;

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

    nop

    nop

    :goto_7
    check-cast v0, [I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_9
    check-cast v1, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

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

    :goto_b
    iget v1, p0, Ljos;->a:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget v0, Ljov;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljos;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    nop

    :goto_f
    check-cast v0, Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    iget v0, p0, Ljos;->a:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Lfxc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ljos;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    if-gt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

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

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljos;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ljpv;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    check-cast p1, Llxb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    check-cast v1, Landroid/graphics/Bitmap;

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

    :goto_22
    iget-object v0, p0, Ljos;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, p0, v1, v0}, Lfxc;->c(I[Ljava/lang/String;[I)V

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_26
    check-cast p0, Ldso;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v0, p0, Ljos;->d:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Ljos;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1, v0}, Ldso;->k(II)V

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x7f0700b2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget p0, p0, Ljos;->a:I

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget v0, p0, Ljos;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    const v0, 0xd

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_14
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop
.end method
