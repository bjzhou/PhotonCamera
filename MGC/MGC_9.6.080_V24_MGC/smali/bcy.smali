.class public final Lbcy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    sput-wide v0, Lbcy;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    sget-object v0, Lbcx;->a:Lbcx;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    sput-object v1, Lbcy;->a:Lbox;

    nop

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

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v0}, Lbre;-><init>(Luaz;)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_b
    new-instance v1, Lbre;

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

    nop

    :goto_c
    invoke-static {v0, v0}, La;->s(FF)J

    move-result-wide v0

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x42400000    # 48.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public static final a(Lbzz;)Lbzz;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/compose/material/MinimumInteractiveModifier;->a:Landroidx/compose/material/MinimumInteractiveModifier;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lbzz;->k(Lbzz;)Lbzz;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method
