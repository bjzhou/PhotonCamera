.class public final Lfd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfa;


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;

.field final d:Lyo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfd;->b:Landroid/content/Context;

    nop

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

    :goto_3
    new-instance p1, Lyo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Lyo;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lfd;->d:Lyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lfd;->a:Landroid/view/ActionMode$Callback;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lfd;->c:Ljava/util/ArrayList;

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
.end method


# virtual methods
.method public final a(Lfb;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public final b(Lfb;Landroid/view/MenuItem;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Lfb;Landroid/view/Menu;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public final d(Lfb;Landroid/view/Menu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public final e(Lfb;)Landroid/view/ActionMode;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, v2, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lt v1, v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    nop

    :goto_6
    goto :goto_e

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    return-object v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x11

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

    nop

    :goto_10
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    :goto_12
    iget-object v2, p0, Lfd;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lfd;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v3, p1, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v0, p1}, Lfe;-><init>(Landroid/content/Context;Lfb;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lfe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lfd;->c:Ljava/util/ArrayList;

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

    :goto_1a
    check-cast v2, Lfe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    return-object v1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lfd;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    :goto_1
    return-object v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfd;->d:Lyo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfd;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Landroid/view/Menu;

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

    :goto_c
    iget-object v0, p0, Lfd;->d:Lyo;

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

    nop

    :goto_d
    new-instance v1, Lgl;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1, v1}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, v0, p1}, Lgl;-><init>(Landroid/content/Context;Lduf;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    :goto_13
    const v0, 0x1c

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
