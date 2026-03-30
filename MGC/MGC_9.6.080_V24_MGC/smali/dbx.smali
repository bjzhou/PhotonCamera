.class final Ldbx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Ldbx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ldbx;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    sput-object v0, Ldbx;->a:Ldbx;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ldbx;

    nop

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
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ldgb;->c()Lcdj;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, p1, Lcdj;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Ldgb;->c()Lcdj;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p2

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Ldgb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    iget v0, p1, Lcdj;->e:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p2, p0, Lcdj;->b:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iget v0, p1, Lcdj;->b:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    iget p2, p0, Lcdj;->c:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p1, Lcdj;->c:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_17

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_2

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

    :cond_2
    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    iget p2, p0, Lcdj;->e:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Lcdj;->d:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Ldgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
