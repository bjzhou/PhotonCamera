.class final Lkrf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqs;


# static fields
.field private static final a:Lpcj;

.field private static final b:Lpcj;

.field private static final c:Lpcj;


# instance fields
.field private final d:Llxa;

.field private final e:Lpcg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {v0}, Lpcj;->c(I)Lpcj;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lkrf;->a:Lpcj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lpcj;->b:Lpcj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x5f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lkrf;->c:Lpcj;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lpcj;->c(I)Lpcj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    sput-object v0, Lkrf;->b:Lpcj;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(Llxa;Lpcg;)V
    .locals 0

    goto/32 :goto_0

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

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Lkrf;->e:Lpcg;

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
    iput-object p1, p0, Lkrf;->d:Llxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Llrf;Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final b(Llrf;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Llrf;->c:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Llxa;->c(Lpcj;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lkrf;->a:Lpcj;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lkrf;->d:Llxa;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final c(Llrf;Llto;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x3

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

    :goto_1
    iget-object p0, p0, Lkrf;->d:Llxa;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lkrf;->c:Lpcj;

    nop

    nop

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

    nop

    :goto_5
    invoke-interface {p0, p1}, Llxa;->c(Lpcj;)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p1, p1, Llrf;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d(Llrf;Lfdo;)V
    .locals 9

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v8, 0x1

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

    nop

    :goto_1
    new-array p2, p2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

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

    :goto_3
    invoke-interface {p1, v0}, Llxa;->V(Lnik;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v7, Landroid/graphics/Matrix;

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

    :goto_5
    iget-object p2, p0, Lkrf;->d:Llxa;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Lkrf;->d:Llxa;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_7
    iget v1, p1, Llre;->b:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    iget v1, p1, Llre;->b:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float p1, p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    invoke-static {p2, v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const/4 p2, 0x0

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_12
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lkrf;->b:Lpcj;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    iget-object p0, p0, Lkrf;->d:Llxa;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    iget-object p2, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    iget v0, p1, Llrf;->c:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_19
    iget-object p1, p1, Llrf;->b:Llre;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lkrf;->e:Lpcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lnio;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    check-cast p2, [I

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

    :goto_1f
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lkrf;->d:Llxa;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    :goto_26
    iget-object p1, p1, Llrf;->b:Llre;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_28
    iget p1, p1, Llre;->a:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x19

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0, p1}, Llxa;->c(Lpcj;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2b
    check-cast p2, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p1, Llre;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_f

    nop

    :goto_30
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    invoke-interface {p2, p1, p0}, Llxa;->ac(Landroid/graphics/Bitmap;I)V

    goto/32 :goto_32

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    iget p1, p1, Lpcg;->e:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_35
    invoke-interface {p2, p1}, Llxa;->ad(Landroid/graphics/Bitmap;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x7f140607

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1b

    nop

    nop

    :goto_39
    invoke-direct {v0, v1, p2}, Lnio;-><init>(I[Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget p0, p0, Lpcg;->e:I

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

    :goto_3b
    iget-object p1, p0, Lkrf;->e:Lpcg;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_b

    nop

    nop
.end method
