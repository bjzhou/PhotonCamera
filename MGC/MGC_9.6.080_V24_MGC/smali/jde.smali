.class public final Ljde;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final g:J


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lptw;

.field public final c:J

.field public final d:Ljdd;

.field public e:J

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-long/2addr v0, v2

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

    :goto_7
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-wide v0, Ljde;->g:J

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

    nop

    :goto_9
    if-gtz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const-wide/16 v0, 0x190

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_12
    const-wide/32 v2, 0xf4240

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const v1, 0x4

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

    :goto_15
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljdd;)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v3, p0, Ljde;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v4, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    sget-wide v0, Ljde;->g:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    iput-object v2, p0, Ljde;->b:Lptw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    iput-wide v0, p0, Ljde;->c:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Lptw;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    cmp-long v4, v0, v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v3}, La;->au(Z)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    new-instance v3, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iput v3, p0, Ljde;->f:I

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

    :goto_17
    iput-object p1, p0, Ljde;->d:Ljdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lptw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    const v1, 0x16

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
