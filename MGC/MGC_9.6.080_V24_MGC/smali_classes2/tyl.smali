.class final Ltyl;
.super Ltym;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Ltym;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ltym;II)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p3, p1}, La;->z(III)V

    goto/32 :goto_5

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
    iput p3, p0, Ltyl;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltym;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ltyi;->a()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr p3, p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Ltyl;->b:I

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

    nop

    :goto_7
    iput-object p1, p0, Ltyl;->a:Ltym;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    nop

    :goto_0
    iget p0, p0, Ltyl;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget p0, p0, Ltyl;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltyl;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ltyl;->a:Ltym;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ltym;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
