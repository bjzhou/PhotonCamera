.class final Lsbl;
.super Lryb;
.source "PG"


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field private final transient c:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lryb;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p3, p0, Lsbl;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lsbl;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lsbl;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final en()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    nop
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lsbl;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    add-int/2addr p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, Lrrf;->E(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsbl;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    aget-object p0, p0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lsbl;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lsbl;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lryb;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
