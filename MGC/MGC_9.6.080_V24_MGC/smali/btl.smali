.class public final Lbtl;
.super Ltym;
.source "PG"

# interfaces
.implements Lj$/util/List;
.implements Lbtm;


# instance fields
.field private final a:Lbtm;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lbtm;II)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p3, p1}, La;->z(III)V

    goto/32 :goto_3

    nop

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
    iput p2, p0, Lbtl;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    sub-int/2addr p3, p2

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

    :goto_4
    invoke-direct {p0}, Ltym;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lbtl;->c:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput p3, p0, Lbtl;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Lbtm;->size()I

    move-result p1

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

    :goto_8
    iput-object p1, p0, Lbtl;->a:Lbtm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lbtl;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbtl;->a:Lbtm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lbtl;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-interface {v0, p0}, Lbtm;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lbtl;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    add-int/2addr p0, p1

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

    :goto_6
    return-object p0

    nop
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lbtl;->d:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance v0, Lbtl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, p1, p0}, Lbtl;-><init>(Lbtm;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr p0, p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p2, v0}, La;->z(III)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lbtl;->a:Lbtm;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    add-int/2addr p1, p0

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    iget p0, p0, Lbtl;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
