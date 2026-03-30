.class final Lig;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lxo;

.field public static b:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    sput-object v0, Lig;->a:Lxo;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-direct {v0, v1}, Lxo;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

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
.end method

.method static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, ""

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method
