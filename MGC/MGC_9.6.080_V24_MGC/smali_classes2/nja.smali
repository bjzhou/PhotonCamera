.class public final synthetic Lnja;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Lnjb;

.field public final synthetic b:Landroid/view/SurfaceView;

.field public final synthetic c:I

.field public final synthetic d:I

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnjb;Landroid/view/SurfaceView;III)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Lnja;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnja;->a:Lnjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnja;->b:Landroid/view/SurfaceView;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lnja;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iput p5, p0, Lnja;->e:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v1, v0, p0}, Lnjb;->b(Landroid/view/SurfaceView;IILnpc;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnjb;->e:Lnpc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnja;->a:Lnjb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2, v1, v0, p0}, Lnjb;->b(Landroid/view/SurfaceView;IILnpc;)Landroid/graphics/Bitmap;

    move-result-object p0

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    const v0, 0x16

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lnja;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lnja;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnjb;->e:Lnpc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lnja;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iget-object v2, p0, Lnja;->b:Landroid/view/SurfaceView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x15

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

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lnja;->e:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lnja;->b:Landroid/view/SurfaceView;

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

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lnja;->a:Lnjb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lnja;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
