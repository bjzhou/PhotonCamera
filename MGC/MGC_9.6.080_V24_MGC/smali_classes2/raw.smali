.class public final Lraw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field public a:[Lsai;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

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

    :goto_8
    check-cast p0, Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Lrnb;->a(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object v0, p1, Lrnb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lraw;->a:[Lsai;

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

    nop

    :goto_e
    invoke-interface {v1, v0}, Lrax;->p(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lsai;->h(Ljava/util/List;)V

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p1, Lrnb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

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

    :goto_16
    aget-object p0, p0, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
