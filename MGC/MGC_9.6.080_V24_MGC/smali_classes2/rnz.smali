.class public final Lrnz;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lubo;II)V
    .locals 0

    goto/32 :goto_1

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
    iput p4, p0, Lrnz;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p1, 0x2

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
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrnz;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lrnz;->b:I

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

    nop

    :goto_6
    iput-object p2, p0, Lrnz;->a:Lubo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-static {p2, v0, p1, p0}, Lroa;->a(Lemd;Lubo;Lblm;I)V

    goto/32 :goto_1a

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
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrnz;->a:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget p0, p0, Lrnz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    check-cast p1, Lblm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, v0, p1, p0}, Lemp;->a(Ldij;Lubo;Lblm;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lrnz;->c:Ljava/lang/Object;

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

    :goto_e
    or-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lbpd;->a(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrnz;->a:Lubo;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p2, Lemd;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Lrnz;->b:I

    nop

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

    :goto_14
    check-cast p2, Ldij;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    iget-object p2, p0, Lrnz;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    or-int/lit8 p0, p0, 0x1

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

    nop

    :goto_18
    iget v0, p0, Lrnz;->d:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lblm;

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

    :goto_1a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method
