.class public final Leho;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lehr;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lehs;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const-string v0, "androidx.savedstate.Restarter"

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

    nop

    :goto_1
    iput-object v0, p0, Leho;->a:Ljava/util/Set;

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

    :goto_2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/LinkedHashSet;

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
    invoke-virtual {p1, v0, p0}, Lehs;->b(Ljava/lang/String;Lehr;)V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v5, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    instance-of v1, p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "classes_to_restore"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Leho;->a:Ljava/util/Set;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/os/Bundle;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_11
    const/16 v4, 0x2d1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    new-array v2, v2, [Ljava/lang/Object;

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

    nop

    :goto_14
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_18
    return-object v0

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    move-object p0, v1

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0xf

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput-object p0, v2, v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method
