.class public final Lplu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprs;


# instance fields
.field final synthetic a:Lpjz;

.field final synthetic b:Lplv;


# direct methods
.method public constructor <init>(Lpjz;Lplv;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    iput-object p1, p0, Lplu;->a:Lpjz;

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
    return-void

    nop

    nop

    :goto_3
    iput-object p2, p0, Lplu;->b:Lplv;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_1b

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
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lplu;->b:Lplv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Lpuq;->cI(Lpna;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "CPRP"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lplu;->a:Lpjz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p0}, Lplv;->e(Ljava/util/List;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lpjz;->d:Ljava/util/Set;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lpuq;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lplu;->a:Lpjz;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    goto/32 :goto_d

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Landroid/media/Image;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "Unable to submit the reprocessing request. Final ownership lost."

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
