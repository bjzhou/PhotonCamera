.class public final Labb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Labp;

.field public static final b:Labq;

.field public static final c:Labr;

.field public static final d:Labs;

.field public static final e:Labp;

.field public static final f:Labq;

.field public static final g:Labr;

.field public static final h:Labs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Labb;->e:Labp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v1, v1}, Labr;-><init>(FFF)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v1, v1, v1}, Labs;-><init>(FFFF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    sput-object v0, Labb;->g:Labr;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Labq;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    new-instance v0, Labs;

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

    :goto_7
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v1, v1}, Labr;-><init>(FFF)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Labp;-><init>(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Labr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    sput-object v0, Labb;->a:Labp;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Labp;-><init>(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v1}, Labq;-><init>(FF)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v1, v1, v1}, Labs;-><init>(FFFF)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Labr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    sput-object v0, Labb;->c:Labr;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    sput-object v0, Labb;->b:Labq;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Labb;->h:Labs;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v1}, Labq;-><init>(FF)V

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    sput-object v0, Labb;->d:Labs;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    const v1, 0x16

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

    :goto_1c
    new-instance v0, Labp;

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

    :goto_1d
    new-instance v0, Labq;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1f
    new-instance v0, Labs;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput-object v0, Labb;->f:Labq;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Labp;

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

    nop

    nop
.end method

.method public static GcpSqjzEJfCOnlNT(F)Ljava/lang/Float;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic a(F)Laba;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    sget-object v1, Laey;->a:Laee;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Laba;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Labb;->GcpSqjzEJfCOnlNT(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Labb;->pFPhRMkhHjTgpKxj(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const v2, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v1, v2, v3}, Laba;-><init>(Ljava/lang/Object;Laee;Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public static pFPhRMkhHjTgpKxj(F)Ljava/lang/Float;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

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
.end method
