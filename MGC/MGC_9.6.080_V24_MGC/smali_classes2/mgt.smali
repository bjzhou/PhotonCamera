.class public final synthetic Lmgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmhb;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lsuu;


# direct methods
.method public synthetic constructor <init>(Lmhb;Ljava/util/ArrayList;Lsuu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lmgt;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmgt;->a:Lmhb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmgt;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v5, Lmhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    iget-object v4, v4, Lmhb;->c:Landroid/content/Context;

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

    :goto_5
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_22

    nop

    nop

    :goto_6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v3, v2, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    const v6, 0x7f0804a3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    :goto_12
    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v4, p0, Lmgt;->a:Lmhb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lmgt;->c:Lsuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    :goto_17
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    iget-object v6, v5, Lmhd;->a:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    iget-boolean v6, v4, Lmhb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v6, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v6, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lmgt;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    iget-object v4, v4, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    goto :goto_19

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Lmhb;->g()Z

    move-result v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
