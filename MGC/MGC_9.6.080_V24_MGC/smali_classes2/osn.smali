.class public final Losn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lnar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Lolx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-direct {v0}, Losl;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    sput-object v0, Losn;->b:Lolx;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

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

    :goto_8
    const-string v2, "Wearable.API"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v2, v0, v3}, Lnar;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_e
    new-instance v0, Losl;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    sput-object v1, Losn;->a:Lnar;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    new-instance v1, Lnar;

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
.end method

.method public static a(Landroid/content/Context;)Lohe;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, v2, v3, v1}, Lohe;-><init>(Landroid/content/Context;Lnar;Logy;Lohd;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    new-instance v0, Lohe;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1b

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    sget-object v1, Lohd;->a:Lohd;

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

    :goto_b
    sget-object v3, Losm;->b:Losm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    sget-object v2, Losn;->a:Lnar;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_e
    goto/32 :goto_5

    nop
.end method
