.class public final Lbsz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbsw;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field final synthetic d:Lbtb;


# direct methods
.method public constructor <init>(Lbtb;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbsz;->d:Lbtb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, p0, Lbsz;->d:Lbtb;

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lbsz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lbtb;->c:[I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget p0, v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbsz;->d:Lbtb;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    add-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    aget-object p0, v0, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lbsz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v0, v0, Lbtb;->e:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lbsv;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbsz;->d:Lbtb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lbsz;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lbtb;->a:[Lbsv;

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

    :goto_3
    aget-object p0, v0, p0

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

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop
.end method
