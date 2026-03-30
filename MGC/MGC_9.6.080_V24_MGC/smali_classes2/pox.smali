.class public final Lpox;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprz;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lpra;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpox;->a:Ljava/lang/Object;

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

    :goto_2
    iput p2, p0, Lpox;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lprz;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpox;->a:Ljava/lang/Object;

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

    nop

    :goto_2
    iput p2, p0, Lpox;->b:I

    nop

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

    :goto_3
    return-void

    nop

    nop
.end method

.method public static a(Lpry;)Landroid/media/ImageReader;
    .locals 9

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget v3, p0, Lpry;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmp-long v8, v4, v6

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

    nop

    :goto_7
    invoke-static/range {v0 .. v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    nop

    goto/32 :goto_1

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const-wide/16 v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-nez v8, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v4, p0, Lpry;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_10
    iget v2, p0, Lpry;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lpry;->b:I

    nop

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

    :goto_15
    iget v0, p0, Lpry;->a:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpry;)Lpsb;
    .locals 7

    goto/32 :goto_17

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :catchall_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    iget v0, p1, Lpry;->d:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    :try_start_0
    const-class v0, Landroid/media/ImageReader$Builder;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpox;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    const-wide/16 v4, -0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p1, Lpry;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0}, Lpnr;-><init>(Lpsb;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lpni;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1}, Landroid/media/ImageReader$Builder;-><init>(II)V

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    invoke-direct {p1, v0}, Lpop;-><init>(Lpsb;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget p1, p1, Lpry;->f:I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/media/ImageReader$Builder;->build()Landroid/media/ImageReader;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-direct {p1, p0}, Lpni;-><init>(Landroid/media/ImageReader;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    new-instance p0, Landroid/media/ImageReader$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Landroid/media/ImageReader$Builder;->setDefaultHardwareBufferFormat(I)Landroid/media/ImageReader$Builder;

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Lpop;

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

    nop

    :goto_15
    invoke-interface {p0, p1}, Lprz;->a(Lpry;)Lpsb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1a

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v6}, Lpox;->a(Lpry;)Landroid/media/ImageReader;

    move-result-object v1

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

    :goto_19
    invoke-virtual {p0, v0}, Landroid/media/ImageReader$Builder;->setMaxImages(I)Landroid/media/ImageReader$Builder;

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    iget v0, p1, Lpry;->c:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    iget-wide v2, p1, Lpry;->e:J

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

    :goto_1e
    move-object/from16 v6, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1f
    if-nez v0, :cond_3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    iget v0, p1, Lpry;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Landroid/media/ImageReader$Builder;->setImageFormat(I)Landroid/media/ImageReader$Builder;

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v2, v3}, Landroid/media/ImageReader$Builder;->setUsage(J)Landroid/media/ImageReader$Builder;

    :goto_27
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lpow;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1}, Lpni;-><init>(Landroid/media/ImageReader;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    :goto_2b
    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    iget v0, p0, Lpox;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    return-object p1

    nop

    :goto_2e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1}, Lpow;-><init>(Lpsb;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p1, Lpni;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_31
    new-instance v1, Lpnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_32
    if-ne p1, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_33
    cmp-long v0, v2, v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop
.end method
