.class public final Lerf;
.super Leha;
.source "PG"


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0, p2, p3}, Leha;-><init>(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lerf;->c:Landroid/content/Context;

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


# virtual methods
.method public final a(Lehx;)V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    iget-object p0, p0, Lerf;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    if-ge v0, v1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_e
    invoke-interface {p1, p0}, Lehx;->l([Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    iget v0, p0, Lerf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    const-string p1, "androidx.work.util.preferences"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const v0, 0x1c

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

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    const-string v3, "reschedule_needed"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
