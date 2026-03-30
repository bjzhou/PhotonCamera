.class public final synthetic Llyt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Llyv;

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Lhoh;


# direct methods
.method public synthetic constructor <init>(Llyv;Landroid/content/SharedPreferences;Lhoh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llyt;->b:Landroid/content/SharedPreferences;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Llyt;->a:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Llyt;->c:Lhoh;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_3
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p2, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2}, Llyp;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iget-object p2, p1, Llyu;->b:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object v0, p0, Llyt;->b:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p1, Llyu;->a:Llyp;

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

    :goto_9
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-object p2, p2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p0}, Loyn;->a(Ljava/lang/Object;)V

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2, p0}, Llyo;->a(Lhoh;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    goto :goto_c

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p2, Llyp;->b:Llyo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_e

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p1, Llyu;->a:Llyp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p1, Llyu;->b:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    iget-object p1, p0, Llyt;->a:Llyv;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Llyt;->c:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Llyu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p1, Llyv;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

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

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method
