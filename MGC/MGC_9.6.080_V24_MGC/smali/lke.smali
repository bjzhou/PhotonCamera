.class public final synthetic Llke;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;


# instance fields
.field public final synthetic a:Llkm;

.field public final synthetic b:Llkn;


# direct methods
.method public synthetic constructor <init>(Llkm;Llkn;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llke;->a:Llkm;

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

    nop

    :goto_3
    iput-object p2, p0, Llke;->b:Llkn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onImage(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    check-cast p3, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    iget-object p6, p0, Llke;->a:Llkm;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-interface/range {v0 .. v6}, Llkn;->a(JLnar;Lsya;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p6, p3, p4}, Lsys;->a(J)Lrss;

    move-result-object p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p6, p6, Llkm;->a:Lsys;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    move-wide v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-static {p3}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v3

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    move-object v5, p7

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

    :goto_12
    iget-object v0, p0, Llke;->b:Llkn;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    move-object v6, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-static {p5}, Lsya;->a(I)Lsya;

    move-result-object v4

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

    nop
.end method
