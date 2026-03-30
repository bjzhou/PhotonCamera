.class final Liiw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilr;


# instance fields
.field final synthetic a:Link;

.field final synthetic b:Lijb;

.field final synthetic c:Lijd;


# direct methods
.method public constructor <init>(Lijb;Link;Lijd;)V
    .locals 0

    goto/32 :goto_2

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

    nop

    nop

    :goto_1
    iput-object p1, p0, Liiw;->b:Lijb;

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
    iput-object p2, p0, Liiw;->a:Link;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Liiw;->c:Lijd;

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
.end method


# virtual methods
.method public final a(Linb;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Liiw;->c:Lijd;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

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

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, v0, Link;->d:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lijb;->a:Lpdf;

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

    :goto_a
    iget-object p2, p1, Linb;->t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-object p3, p0, Liiw;->b:Lijb;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    const-string v1, "YuvCallback"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Linb;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iput-object p1, v0, Link;->i:Lcom/google/googlex/gcam/ShotParams;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Liiw;->b:Lijb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lijb;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Liiw;->b:Lijb;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_5

    nop

    nop

    :goto_17
    iput-object p2, v0, Link;->b:Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Liiw;->a:Link;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    invoke-virtual {v0, p3}, Link;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p3, p1, p2}, Lijb;->b(Lijd;Linl;)V

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Link;->a()Linl;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
