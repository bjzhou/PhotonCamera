.class public final Lcsb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p1, Lcth;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p2, Lcth;->k:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Luch;->a(II)I

    move-result p0

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

    :goto_4
    invoke-virtual {p1}, Lcth;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {p0, v0}, Luch;->a(II)I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Lcth;->hashCode()I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    check-cast p2, Lcth;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lcth;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
