.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/preference/WearTextBoxPreference;
.super Landroidx/preference/Preference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    sget-object p2, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const p2, 0x7f070a33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float p1, p1

    nop

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

    nop

    :goto_b
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
