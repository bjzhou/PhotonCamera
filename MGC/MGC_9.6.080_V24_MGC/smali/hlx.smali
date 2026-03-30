.class public final Lhlx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmo;

.field public static final b:Lhmo;

.field public static final c:Lhmo;

.field public static final d:Lhmo;

.field public static final e:Lhmo;

.field public static final f:Lhmo;

.field public static final g:Lhmo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v1, "camera.uw_binned_raw_width"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    const-string v1, "camera.binned_row_start"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const-string v1, "camera.wide_binned_raw_height"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "camera.uw_binned_raw_height"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lhlx;->e:Lhmo;

    nop

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

    :goto_d
    sput-object v0, Lhlx;->c:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_11
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lstm;

    nop

    nop

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

    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lhlx;->g:Lhmo;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lhlx;->d:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lstm;

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

    nop

    :goto_1c
    const-string v1, "camera.tele_binned_raw_height"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1d
    const-string v1, "camera.tele_binned_raw_width"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lhlx;->f:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_22
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2c
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sput-object v0, Lhlx;->b:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2f
    const-string v1, "camera.wide_binned_raw_width"

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

    nop

    :goto_30
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    sput-object v0, Lhlx;->a:Lhmo;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public static a(Lhoh;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lhlx;->a:Lhmo;

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

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    sget-object v0, Lhlx;->f:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lhlx;->c:Lhmo;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lhlx;->g:Lhmo;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    :goto_13
    sget-object v0, Lhlx;->d:Lhmo;

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

    :goto_14
    const/16 v1, 0x7f0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lhlx;->b:Lhmo;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v1, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    const/16 v1, 0x5e8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v1, 0x5dc

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

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0, v1}, Lhoh;->c(Lhmo;Ljava/lang/Integer;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lhlx;->e:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0x600

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_25
    const/16 v1, 0x7e0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
