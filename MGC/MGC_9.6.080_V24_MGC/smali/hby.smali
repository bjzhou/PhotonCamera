.class public final synthetic Lhby;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnmu;


# instance fields
.field public final synthetic a:Ltxm;

.field public final synthetic b:Lhab;

.field public final synthetic c:Lpic;


# direct methods
.method public synthetic constructor <init>(Lpic;Lhab;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhby;->b:Lhab;

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhby;->c:Lpic;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p3, p0, Lhby;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhby;->c:Lpic;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_4
    invoke-virtual {p0}, Lnjn;->b()Lpzi;

    move-result-object p0

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

    :goto_5
    check-cast p0, Lnjn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7f0e016e

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

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhby;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Lhab;->a(Landroid/view/ViewStub;)Landroid/view/View;

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object v1, p0, Lhby;->b:Lhab;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lpzi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x7f0b0500

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
.end method
