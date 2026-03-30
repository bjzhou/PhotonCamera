.class public final synthetic Ljcz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILoeq;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljcz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Ljcz;->c:I

    nop

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

    nop

    :goto_4
    iput p1, p0, Ljcz;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ljcz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljcz;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljcz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 6

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    iget v0, p0, Ljcz;->a:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v1, v0, Loeq;->a:J

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

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

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    iput-object p0, v0, Llwe;->b:Ljhy;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

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

    :goto_b
    iget p0, p0, Ljcz;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    :goto_e
    const-wide/16 v4, 0x0

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

    :goto_f
    const v1, 0x14

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v2, v0, Loeq;->a:J

    nop

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

    :goto_11
    check-cast v0, Llwe;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Ljcz;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    cmp-long v2, v2, v4

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

    :goto_14
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    check-cast p0, Ljdc;

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

    :goto_16
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    :goto_17
    iput-wide v4, v0, Loeq;->a:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0}, Ljdc;->j(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, v1, v2}, Lcom/google/android/apps/camera/async/tt/CpuSets;->nativeRestoreCpuSet(IJ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1}, Lqrg;->B(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v0, p0, Ljcz;->c:I

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

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Ljcz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    :goto_29
    goto :goto_24

    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ljcz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    iget-object p0, p0, Ljcz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Loeq;

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

    :goto_2e
    iget-object v1, v0, Llwe;->b:Ljhy;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method
