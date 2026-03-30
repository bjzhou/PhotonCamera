.class public final synthetic Lniy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:Lnjb;

.field public final synthetic b:Landroid/util/Size;

.field public final synthetic c:Lpcg;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnjb;Landroid/util/Size;Lpcg;ZI)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lniy;->b:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lniy;->c:Lpcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Lniy;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lniy;->a:Lnjb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p4, p0, Lniy;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v1}, Lnjh;->b(Landroid/graphics/Bitmap;I)Lnjh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v2, v0}, Lnje;->c(II)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lniy;->a:Lnjb;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0xb

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

    :goto_f
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lniy;->d:Z

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

    :goto_11
    check-cast p1, Lnje;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    check-cast p1, Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p0, v0}, Lnjb;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

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

    :goto_15
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lniy;->c:Lpcg;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v2, v0, v1}, Lnjb;->c(IILpcg;I)Landroid/util/Size;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1f

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    iget-object v0, v0, Lnjb;->l:Llad;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Lniy;->e:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Llad;->b()Lpcg;

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

    nop

    :goto_1d
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Lniy;->b:Landroid/util/Size;

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

    :goto_1f
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_21
    invoke-virtual {p0}, Lpcg;->a()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_d

    nop
.end method
