.class public final Lhrk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhrf;


# instance fields
.field public final a:Left;

.field public final b:Lefb;

.field public final c:Leez;


# direct methods
.method public constructor <init>(Left;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhrk;->a:Left;

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

    :goto_1
    new-instance p1, Lhrj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhrk;->b:Lefb;

    nop

    goto/32 :goto_1

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

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhrk;->c:Leez;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lhri;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Lhri;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {p1}, Lhrj;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JJ)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhrk;->a:Left;

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

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {v0, p3, p4, p1, p2}, Lhrh;-><init>(JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1, p2, v0}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lhrh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final b(J)Lhrn;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhrk;->a:Left;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-static {p0, v1, p1, v0}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lhrn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lhrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    const v1, 0xa

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p1, p2, v1}, Lhrg;-><init>(JI)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x0

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
.end method

.method public final c(Lhrn;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v1, v0}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lhdq;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, p1, v1, v2}, Lhdq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhrk;->a:Left;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method
