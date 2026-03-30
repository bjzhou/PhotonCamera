.class public final Lcle;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lcle;->a:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p3, p0, Lcle;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p5, p0, Lcle;->c:J

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-static {v1, v2}, Lcdi;->e(J)Ljava/lang/String;

    move-result-object p0

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

    :goto_1
    const v1, 0x14

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "HistoricalChange(uptimeMillis="

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    iget-wide v1, p0, Lcle;->b:J

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

    :goto_9
    const/16 p0, 0x29

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v1, p0, Lcle;->a:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    const v0, 0xa

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const-string v1, ", position="

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
