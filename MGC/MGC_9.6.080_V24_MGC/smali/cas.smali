.class public final Lcas;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final a:Lcay;

.field public final b:Lww;

.field public final c:Lbzz;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcas;->b:Lww;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcas;->a:Lcay;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    invoke-direct {v0, p0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;-><init>(Lcas;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcay;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Lcay;-><init>([B)V

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lww;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcas;->c:Lbzz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Lww;-><init>([B)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    goto/32 :goto_18

    nop

    nop

    :goto_0
    new-instance p1, Lwv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0}, Lcaz;->b(Lcwg;Lubk;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lcba;->f()V

    goto/32 :goto_d

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lcba;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcas;->a:Lcay;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-direct {p1, p0}, Lwv;-><init>(Lww;)V

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lww;->clear()V

    :pswitch_1
    goto/32 :goto_1c

    nop

    nop

    :goto_9
    invoke-direct {p1, p2}, Lcat;-><init>(Landroid/view/DragEvent;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2}, Luco;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_c
    iget-object p1, p0, Lcas;->a:Lcay;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcay;->a(Lcat;)V

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p2}, Lcav;-><init>(Luco;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lcay;->e(Lcat;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lcav;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lcas;->a:Lcay;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    packed-switch p2, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lcas;->b:Lww;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lcas;->b:Lww;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

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

    :goto_18
    new-instance p1, Lcat;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p2, Luco;->a:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    new-instance p2, Lcaw;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    :pswitch_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    :pswitch_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p2}, Lcaz;->b(Lcwg;Lubk;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p2}, Lcaw;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_21
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_22
    iget-object p0, p0, Lcas;->a:Lcay;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    new-instance p2, Luco;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
