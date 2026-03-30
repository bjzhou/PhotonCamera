.class public final Lnit;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnit;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p4, p0, Lnit;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p3, p0, Lnit;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lnit;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnit;->b()Lnis;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lnis;
    .locals 4

    goto/32 :goto_17

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Lpbv;->b()Lpnv;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lixk;->b()Landroid/view/WindowManager;

    move-result-object v0

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

    :goto_4
    iget-object p0, p0, Lnit;->d:Ltxm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    return-object v3

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v2, Lpbv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Lixk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct {v3, v0, v1, v2, p0}, Lnis;-><init>(Landroid/view/WindowManager;Lhoh;Lpnv;Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljyr;->b()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    iget-object v1, p0, Lnit;->b:Ltxm;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljyr;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    new-instance v3, Lnis;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    :goto_12
    iget-object v2, p0, Lnit;->c:Ltxm;

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

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnit;->a:Ltxm;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v1, Lhoh;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    const v0, 0x3

    nop

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
.end method
