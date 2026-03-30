.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

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
    sget-object p2, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const p2, 0x7f070a2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
